#' GET mutes/users/ids
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/mutes/users/ids}
#' @param cursor
#'      Causes the list of IDs to be broken into pages of no more than 5000 IDs at a time. The number of IDs
#'      returned is not guaranteed to be 5000 as suspended users are filtered out. If no cursor is provided,
#'      a value of -1 will be assumed, which is the first Ågpage.Åh The response from the API will include
#'      a previous_cursor and next_cursor to allow paging back and forth. See [node:10362, title=ÅhUsing
#'      cursors to navigate collectionsÅh] for more information.
#'      Example Values: 2
#' @export
twtr_mutes_users_ids <- function(cursor = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/mutes/users/ids.json", query = list(cursor = cursor, ...))
}
