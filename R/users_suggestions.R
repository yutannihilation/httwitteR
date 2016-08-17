#' GET users/suggestions
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/users/suggestions}
#' @param lang
#'      Restricts the suggested categories to the requested language. The language must be specified by
#'      the appropriate two letter ISO 639-1 representation. Currently supported languages are provided
#'      by the GET help / languages API request. Unsupported language codes will receive English (en)
#'      results. If you use lang in this request, ensure you also include it when requesting the GET users /
#'      suggestions / :slug list.
#' @export
twtr_users_suggestions <- function(lang = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/users/suggestions.json", query = list(lang = lang, ...))
}
