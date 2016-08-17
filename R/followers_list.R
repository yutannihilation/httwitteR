#' GET followers/list
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/followers/list}
#' @param user_id
#'      The ID of the user for whom to return results for.
#'      Example Values: 12345
#' @param screen_name
#'      The screen name of the user for whom to return results for.
#'      Example Values: twitterdev
#' @param cursor
#'      Causes the results to be broken into pages. If no cursor is provided, a value of -1 will be assumed,
#'      which is the first Ågpage.Åh The response from the API will include a previous_cursor and next_cursor
#'      to allow paging back and forth. See Using cursors to navigate collections for more information.
#'      Example Values: 12893764510938
#' @param countoptional
#'      The number of users to return per page, up to a maximum of 200. Defaults to 20.
#'      Example Values: 42
#' @param skip_status
#'      When set to either true, t or 1, statuses will not be included in the returned user objects. If set
#'      to any other value, statuses will be included.
#'      Example Values: false
#' @param include_user_entities
#'      The user object entities node will not be included when set to false.
#'      Example Values: false
#' @export
twtr_followers_list <- function(user_id = NULL, screen_name = NULL, cursor = NULL, countoptional = NULL, skip_status = NULL, include_user_entities = NULL, 
    ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/followers/list.json", query = list(user_id = user_id, screen_name = screen_name, cursor = cursor, 
        countoptional = countoptional, skip_status = skip_status, include_user_entities = include_user_entities, ...))
}
