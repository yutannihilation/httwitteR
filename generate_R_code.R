library(rvest)
library(xml2)
library(stringr)
library(purrr)

# S3 classes ----------------------------------------

### param class ----
# param argument is a div node.
#
# name: the param name
# is_mandatory: whether the param is required or optional
# description: description text about the param
extract_param <- function(param) {
  result <- structure(list(), class = "param")

  param_name <- param %>%
    html_nodes("span.param") %>%
    html_text(trim=TRUE)
  if(length(param_name) != 1) stop(param_name, " is not length 1")

  param_name_chunk <- str_split(param_name, " ")[[1]]
  if(length(param_name_chunk) != 2) warning(param_name_chunk, " is not length 2")
  result$name <- param_name_chunk[1]
  result$is_mandatory <- length(param_name_chunk) == 2 && param_name_chunk[2] == "required"

  result$description <- param %>%
    html_nodes("p") %>%
    html_text(trim=TRUE)

  result
}

### endpoint class ----
# endpoint argument is a character of URL
#
# url: e.g. "https://api.twitter.com/1.1/statuses/user_timeline.json"
# has_id: whether the endpoint has ":id" part
# url_tmpl: e.g. https://api.twitter.com/1.1/statuses/show/%s.json
# canonical_name: canonicalized name used for function name. e.g. statuses_show
extract_endpoint <- function(endpoint) {
  result <- structure(list(url = endpoint), class = "endpoint")

  result$has_id <- str_detect(endpoint, "/:id")
  result$url_tmpl <- str_replace_all(endpoint, ":id", "%s")

  result$path_wo_suffix <- httr::parse_url(result$url)$path
  result$canonical_name <- str_replace_all(result$path, c("^1.1/" = "",
                                                          "\\.json" = "",
                                                          "/:id" = "",
                                                          "/" = "_"))

  result
}


# S3 functions -------------------------------------

### as.document: convert to roxygen2 document (e.g. "#' @param x Integer.") ----

as.document <- function(x) UseMethod("as.document")

as.document.default <- function(x) {
  sprintf("#' %s\n", x)
}

as.document.param <- function(x) {
  indent <- 6
  width <- 100

  text <- unlist(str_split(str_wrap(x$description, width = 100), "\n"))
  text <- paste0("#'", str_pad("", indent), text)
  text  <- c(paste("#'", "@param", x$name), text)
  paste0(text, collapse = "\n")
}

as.document.list <- function(x) {
  paste(map_chr(x, as.document), collapse = "\n")
}

### as.func_arg: convert to func arg (e.g. "param = NULL") ----

as.func_arg <- function(x) UseMethod("as.func_arg")
as.func_arg.default <- function(x) as.character(x)
as.func_arg.param <- function(x) {
  if(x$is_mandatory) {
    x$name
  } else {
    paste(x$name, "NULL", sep = "=")
  }
}

### as.func: convert to func (e.g. "function(param1, param2 = NULL, ...)") ----

as.func <- function(x) UseMethod("as.func")
as.func.default <- function(x) sprintf("function(%s)", x)
as.func.list <- function(x) {
  params <- paste(c(map_chr(x, as.func_arg), "..."), collapse = ",")
  sprintf("function(%s)", params)
}

### as.query_elem: convert to query elem (e.g. "param = param") ----

as.query_elem <- function(x) UseMethod("as.query_elem")
as.query_elem.default <- function(x) as.character(x)
as.query_elem.param <- function(x) sprintf("%s=%s", x$name, x$name)

### as.query: convert to query (e.g. "list(param = param, ...)")

as.query <- function(x) UseMethod("as.query")
as.query.default <- function(x) sprintf("list(%s)", x)
as.query.list <- function(x) {
  # id param is only used for endpoints (e.g. /some/end/point/:id)
  x <- discard(x, ~ .$name == "id")
  params <- paste(c(map_chr(x, as.query_elem), "..."), collapse = ",")
  sprintf("list(%s)", params)
}

# Utils ----------------------------------------------------------

append_line <- function(text, file){
  cat(str_trim(text, side = "right"), file = file, append = TRUE, sep = "\n")
}

generate_R_code <- function(url) {
  page <- read_html(url)

  title <- page %>%
    html_nodes("h1") %>%
    html_text()

  if(str_detect(title, "deprecated")) {
    cat(title, "is deprecated; skip.")
    return(NULL)
  }

  verb <- str_split(title, " ")[[1]][1]
  if(! verb %in% c("GET", "POST")) stop(title, " is invalid")

  endpoint <- page %>%
    html_nodes("div.Node-apiDocsUrl div.Field-items-item") %>%
    html_text() %>%
    extract_endpoint

  params <- page %>%
    html_nodes("div.parameter") %>%
    map(extract_param)

  output <- tempfile(fileext = ".R")
  file.create(output)

  append_line(as.document(title), file = output)
  append_line(as.document(""), file = output)
  append_line(as.document(sprintf("@seealso \\url{%s}", url)), file = output)

  append_line(as.document(params), file = output)
  append_line(as.document("@export"), file = output)

  url_param <- if(endpoint$has_id) {
    paste0("sprintf('", endpoint$url_tmpl, "', id)")
  } else {
    sprintf("'%s'", endpoint$url)
  }
  func_sig <- sprintf("twtr_%s <- %s", endpoint$canonical_name, as.func(params))
  func_body <- sprintf("{ twtr_api( '%s', %s, %s = %s ) }",
                       verb,
                       url_param,
                       if(verb == "GET") "query" else "body",
                       as.query(params))
  formatR::tidy_source(text = paste(func_sig, func_body), file = output, append = TRUE)

  file.copy(output, sprintf("R/%s.R", endpoint$canonical_name), overwrite = TRUE)
  cat(endpoint$canonical_name, "is created\n")
  file.remove(output)
}



# Main ----------------------------------------------------------

x <- read_html("https://dev.twitter.com/rest/public")

urls <- x %>%
  html_nodes("li.leaf a") %>%
  html_attr("href") %>%
  str_subset("/rest/reference") %>%
  sprintf("https://dev.twitter.com%s", .)

for (url in urls) {
  generate_R_code(url)
}
