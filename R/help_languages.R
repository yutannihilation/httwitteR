#' GET help/languages
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/help/languages}

#' @export
twtr_help_languages <- function(...) {
    twtr_api("GET", "https://api.twitter.com/1.1/help/languages.json", query = list(...))
}
