#' GET blocks/ids
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/blocks/ids}
#' @param stringify_ids
#'      Many programming environments will not consume our ids due to their size. Provide this option to
#'      have ids returned as strings instead. Read more about Twitter IDs.
#'      Example Values: true
#' @param cursor
#'      Causes the list of IDs to be broken into pages of no more than 5000 IDs at a time. The number of
#'      IDs returned is not guaranteed to be 5000 as suspended users are filtered out after connections are
#'      queried. If no cursor is provided, a value of -1 will be assumed, which is the first Ågpage.Åh The
#'      response from the API will include a previous_cursor and next_cursor to allow paging back and forth.
#'      See Using cursors to navigate collections for more information.
#'      Example Values: 12893764510938
#' @export
twtr_blocks_ids <- function(stringify_ids = NULL, cursor = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/blocks/ids.json", query = list(stringify_ids = stringify_ids, cursor = cursor, ...))
}
