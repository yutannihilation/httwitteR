#' GET lists/members
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/lists/members}
#' @param list_id
#'      The numerical id of the list.
#' @param slug
#'      You can identify a list by its slug instead of its numerical id. If you decide to do so, note that
#'      youÅfll also have to specify the list owner using the owner_id or owner_screen_name parameters.
#' @param owner_screen_name
#'      The screen name of the user who owns the list being requested by a slug.
#' @param owner_id
#'      The user ID of the user who owns the list being requested by a slug.
#' @param count
#'      Specifies the number of results to return per page (see cursor below). The default is 20, with a
#'      maximum of 5,000.
#' @param cursor
#'      Causes the collection of list members to be broken into ÅgpagesÅh of consistent sizes (specified by
#'      the count parameter). If no cursor is provided, a value of -1 will be assumed, which is the first
#'      Ågpage.Åh The response from the API will include a previous_cursor and next_cursor to allow paging
#'      back and forth. See Using cursors to navigate collections for more information.
#'      Example Values: 12893764510938
#' @param include_entities
#'      The entities node will be disincluded when set to false.
#'      Example Values: false
#' @param skip_status
#'      When set to either true, t or 1 statuses will not be included in the returned user objects.
#' @export
twtr_lists_members <- function(list_id, slug, owner_screen_name = NULL, owner_id = NULL, count = NULL, cursor = NULL, include_entities = NULL, 
    skip_status = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/lists/members.json", query = list(list_id = list_id, slug = slug, owner_screen_name = owner_screen_name, 
        owner_id = owner_id, count = count, cursor = cursor, include_entities = include_entities, skip_status = skip_status, ...))
}
