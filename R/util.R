# Utilities

#' @title Twitter API
#' @name twtr_api
#' @export
twtr_api <- function(verb, url, query = NULL, body = NULL, as = NULL) {
  res <- httr::VERB(verb,
             url = url,
             config = httr::config(token = twtr_auth()),
             query = query,
             body = body,
             encoding = "json")

  httr::stop_for_status(res)

  httr::content(res, as = as)
}
