#' GET help/tos
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/help/tos}

#' @export
twtr_help_tos <- function(...) {
    twtr_api("GET", "https://api.twitter.com/1.1/help/tos.json", query = list(...))
}
