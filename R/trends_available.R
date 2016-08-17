#' GET trends/available
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/trends/available}

#' @export
twtr_trends_available <- function(...) {
    twtr_api("GET", "https://api.twitter.com/1.1/trends/available.json", query = list(...))
}
