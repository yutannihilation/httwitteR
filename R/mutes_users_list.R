#' GET mutes/users/list
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/mutes/users/list}
#' @param cursor
#'      Causes the list of IDs to be broken into pages of no more than 5000 IDs at a time. The number of
#'      IDs returned is not guaranteed to be 5000 as suspended users are filtered out after connections are
#'      queried. If no cursor is provided, a value of -1 will be assumed, which is the first Ågpage.Åh The
#'      response from the API will include a previous_cursor and next_cursor to allow paging back and forth.
#'      See [node:10362, title=ÅhUsing cursors to navigate collectionsÅh] for more information.
#'      Example Values: 2
#' @param include_entities
#'      The entities node will not be included when set to false.
#'      Example Values: false
#' @param skip_status
#'      When set to either true, t or 1 statuses will not be included in the returned user objects.
#'      Example Values: true
#' @export
twtr_mutes_users_list <- function(cursor = NULL, include_entities = NULL, skip_status = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/mutes/users/list.json", query = list(cursor = cursor, include_entities = include_entities, 
        skip_status = skip_status, ...))
}
