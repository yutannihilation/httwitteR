#' GET friendships/outgoing
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/friendships/outgoing}
#' @param cursor
#'      Causes the list of connections to be broken into pages of no more than 5000 IDs at a time. The
#'      number of IDs returned is not guaranteed to be 5000 as suspended users are filtered out after
#'      connections are queried. If no cursor is provided, a value of -1 will be assumed, which is the
#'      first Ågpage.Åh The response from the API will include a previous_cursor and next_cursor to allow
#'      paging back and forth. See [node:10362, title=ÅhUsing cursors to navigate collectionsÅh] for more
#'      information.
#'      Example Values: 12893764510938
#' @param stringify_ids
#'      Many programming environments will not consume our Tweet ids due to their size. Provide this option
#'      to have ids returned as strings instead. More about [node:194].
#'      Example Values: true
#' @export
twtr_friendships_outgoing.format <- function(cursor = NULL, stringify_ids = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/friendships/outgoing.format", query = list(cursor = cursor, stringify_ids = stringify_ids, 
        ...))
}
