#' POST saved_searches/destroy/:id
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/saved_searches/destroy/\%3Aid}
#' @param id
#'      The ID of the saved search.
#'      Example Values: 313006
#' @export
twtr_saved_searches_destroy <- function(id, ...) {
    twtr_api("POST", sprintf("https://api.twitter.com/1.1/saved_searches/destroy/%s.json", id), body = list(...))
}
