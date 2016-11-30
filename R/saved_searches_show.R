#' GET saved_searches/show/:id
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/saved_searches/show/\%3Aid}
#' @param id
#'      The ID of the saved search.
#'      Example Values: 313006
#' @export
twtr_saved_searches_show <- function(id, ...) {
    twtr_api("GET", sprintf("https://api.twitter.com/1.1/saved_searches/show/%s.json", id), query = list(...))
}
