#' GET help/configuration
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/help/configuration}

#' @export
twtr_help_configuration <- function(...) {
    twtr_api("GET", "https://api.twitter.com/1.1/help/configuration.json", query = list(...))
}
