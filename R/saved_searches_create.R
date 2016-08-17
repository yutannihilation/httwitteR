#' POST saved_searches/create
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/saved_searches/create}
#' @param query
#'      The query of the search the user would like to save. The query must be 100 characters or less.
#' @export
twtr_saved_searches_create <- function(query, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/saved_searches/create.json", body = list(query = query, ...))
}
