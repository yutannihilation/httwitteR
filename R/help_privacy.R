#' GET help/privacy
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/help/privacy}

#' @export
twtr_help_privacy <- function(...) {
    twtr_api("GET", "https://api.twitter.com/1.1/help/privacy.json", query = list(...))
}
