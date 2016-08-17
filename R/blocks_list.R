#' GET blocks/list
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/blocks/list}
#' @param include_entities
#'      The entities node will not be included when set to false.
#'      Example Values: false
#' @param skip_status
#'      When set to either true, t or 1 statuses will not be included in the returned user objects.
#' @param cursor
#'      Causes the list of blocked users to be broken into pages of no more than 5000 IDs at a time. The
#'      number of IDs returned is not guaranteed to be 5000 as suspended users are filtered out after
#'      connections are queried. If no cursor is provided, a value of -1 will be assumed, which is the first
#'      Ågpage.Åh The response from the API will include a previous_cursor and next_cursor to allow paging
#'      back and forth. See Using cursors to navigate collections for more information.
#'      Example Values: 12893764510938
#' @export
twtr_blocks_list <- function(include_entities = NULL, skip_status = NULL, cursor = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/blocks/list.json", query = list(include_entities = include_entities, skip_status = skip_status, 
        cursor = cursor, ...))
}
