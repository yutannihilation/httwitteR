#' GET search/tweets
#'
#' @param q A UTF-8, URL-encoded search query of 500 characters maximum, including operators. Queries may additionally be limited by complexity.
#'
#' @export
twtr_search_tweets <- function(q, ...) {
  twtr_api("GET", "search/tweets.json", query = list(q = q, ...))
}
