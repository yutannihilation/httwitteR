library(rvest)
library(xml2)
library(stringr)
library(purrr)

x <- read_html("https://dev.twitter.com/rest/public")

urls <- x %>%
  html_nodes("li.leaf a") %>%
  html_attr("href") %>%
  str_subset("/rest/reference") %>%
  sprintf("https://dev.twitter.com%s", .)

generate_R_code <- function(url) {
  page <- read_html(url)

  title <- page %>%
    html_nodes("h1") %>%
    html_text()

  title_chunk <- str_split(title, " ")[[1]]
  if(length(title_chunk) != 2) stop(title_chunk, " is not length 2")
  verb <- title_chunk[1]
  endpoint <- title_chunk[2]
  funcname <- str_replace_all(endpoint, "/", "_")

  params <- page %>%
    html_nodes("div.parameter") %>%
    map(extract_param)

  output <- tempfile(fileext = ".R")

  file.create(output)
  append_line(escape(title), file = output)
  append_line(escape(), file = output)
  append_line(escape(sprintf("@seealso \\url{%s}", url)), file = output)
  for (param in params) {
    append_line(generate_param_text(param), file = output)
  }
  append_line(escape("@export"), file = output)
  func <- sprintf("twtr_%s <- function(", funcname)
  indent <- str_length(func)
  append_line(func, file = output)
  for (param in params) {
    append_line(generate_func_arg(param, indent = indent), file = output)
  }
  append_line(paste0(str_pad("", indent), "...) {"), file = output)
  append_line("  twtr_api(", file = output)
  append_line(sprintf("    '%s',", verb), file = output)
  append_line(sprintf("    '%s',", endpoint), file = output)
  append_line(sprintf("    %s = list(", if(verb == "GET") "query" else "body"), file = output)
  for (param in params) {
    append_line(sprintf("      %s = %s,", param$name, param$name), file = output)
  }
  append_line("    ...)", file = output)
  append_line("  )", file = output)
  append_line("}", file = output)

  file.copy(output, sprintf("R/%s.R", funcname))
  file.remove(output)
}

append_line <- function(text, file){
  if(!endsWith(text, "\n")) text <- paste0(text, "\n")
  cat(text, file = file, append = TRUE)
}

generate_param_text <- function(param) {
  exdent <- str_length(escape("@param ")) + str_length(param$name) - 3
  text <- paste(param$description, collapse = " ")
  text <- str_wrap(text, width = 100 - exdent, exdent = exdent)
  text <- str_replace_all(text, pattern = "\n", "\n#' ")
  paste("#'", "@param", param$name, text)
}

generate_func_arg <- function(param, indent) {
  if(param$is_mandatory) {
    paste0(str_pad("", indent), param$name, ",")
  } else {
    paste0(str_pad("", indent), param$name, " = NULL,")
  }
}

generate_verb_arg <- function(param, indent) {

}

escape <- function(text = "") {
  sprintf("#' %s\n", text)
}

extract_param <- function(param) {
  result <- list()

  param_name <- param %>%
    html_nodes("span.param") %>%
    html_text(trim=TRUE)
  if(length(param_name) != 1) stop(param_name, " is not length 1")

  param_name_chunk <- str_split(param_name, " ")[[1]]
  if(length(param_name_chunk) != 2) stop(param_name_chunk, " is not length 2")
  result$name <- param_name_chunk[1]
  result$is_mandatory <- param_name_chunk[2] == "required"

  result$description <- param %>%
    html_nodes("p") %>%
    html_text(trim=TRUE)

  result
}


