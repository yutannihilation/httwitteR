#' GET statuses/retweeters/ids
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/statuses/retweeters/ids}
#' @param id
#'      The numerical ID of the desired status.
#'      Example Values: 327473909412814850
#' @param cursor
#'      Causes the list of IDs to be broken into pages of no more than 100 IDs at a time. The number of
#'      IDs returned is not guaranteed to be 100 as suspended users are filtered out after connections are
#'      queried. If no cursor is provided, a value of -1 will be assumed, which is the first Ågpage.Åh The
#'      response from the API will include a previous_cursor and next_cursor to allow paging back and forth.
#'      See our cursor docs for more information. While this method supports the cursor parameter, the
#'      entire result set can be returned in a single cursored collection. Using the count parameter with
#'      this method will not provide segmented cursors for use with this parameter.
#'      Example Values: 12893764510938
#' @param stringify_ids
#'      Many programming environments will not consume our ids due to their size. Provide this option to
#'      have ids returned as strings instead.
#'      Example Values: true
#' @export
twtr_statuses_retweeters_ids <- function(id, cursor = NULL, stringify_ids = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/statuses/retweeters/ids.json", query = list(cursor = cursor, stringify_ids = stringify_ids, 
        ...))
}
