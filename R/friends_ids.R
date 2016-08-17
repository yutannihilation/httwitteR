#' GET friends/ids
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/friends/ids}
#' @param user_id
#'      The ID of the user for whom to return results for.
#'      Example Values: 12345
#' @param screen_name
#'      The screen name of the user for whom to return results for.
#'      Example Values: noradio
#' @param cursor
#'      Causes the list of connections to be broken into pages of no more than 5000 IDs at a time. The
#'      number of IDs returned is not guaranteed to be 5000 as suspended users are filtered out after
#'      connections are queried. If no cursor is provided, a value of -1 will be assumed, which is the first
#'      Ågpage.Åh The response from the API will include a previous_cursor and next_cursor to allow paging
#'      back and forth. See Using cursors to navigate collections for more information.
#'      Example Values: 12893764510938
#' @param stringify_ids
#'      Many programming environments will not consume our Tweet ids due to their size. Provide this option
#'      to have ids returned as strings instead. More about Twitter IDs.
#'      Example Values: true
#' @param count
#'      Specifies the number of IDs attempt retrieval of, up to a maximum of 5,000 per distinct request.
#'      The value of count is best thought of as a limit to the number of results to return. When using the
#'      count parameter with this method, it is wise to use a consistent count value across all requests to
#'      the same userÅfs collection. Usage of this parameter is encouraged in environments where all 5,000
#'      IDs constitutes too large of a response.
#'      Example Values: 2048
#' @export
twtr_friends_ids <- function(user_id = NULL, screen_name = NULL, cursor = NULL, stringify_ids = NULL, count = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/friends/ids.json", query = list(user_id = user_id, screen_name = screen_name, cursor = cursor, 
        stringify_ids = stringify_ids, count = count, ...))
}
