# Utilities

BASE_URL <- "https://api.twitter.com/"
API_VERSION <- "1.1"

#' @title Twitter API
#' @name twtr_api
#' @export
twtr_api <- function(verb, path, query = NULL, body = NULL, as = NULL) {
  res <- httr::VERB(verb,
             url = BASE_URL,
             config = httr::config(token = twtr_auth()),
             path = sprintf("/%s/%s.json", API_VERSION, path),
             query = query,
             body = body,
             encoding = "json")

  stop_for_status(res)

  content(res, as = as)
}
