#' GET saved_searches/list
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/saved_searches/list}

#' @export
twtr_saved_searches_list <- function(...) {
    twtr_api("GET", "https://api.twitter.com/1.1/saved_searches/list.json", query = list(...))
}
