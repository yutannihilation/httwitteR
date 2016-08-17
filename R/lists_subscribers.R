#' GET lists/subscribers
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/lists/subscribers}
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
#'      Breaks the results into pages. A single page contains 20 lists. Provide a value of -1 to begin
#'      paging. Provide values as returned in the response bodyÅfs next_cursor and previous_cursor attributes
#'      to page back and forth in the list. See Using cursors to navigate collections for more information.
#' @param include_entities
#'      When set to either true, t or 1, each tweet will include a node called ÅgentitiesÅh. This node offers
#'      a variety of metadata about the tweet in a discreet structure, including: user_mentions, urls, and
#'      hashtags. While entities are opt-in on timelines at present, they will be made a default component
#'      of output in the future. See Tweet Entities for more details.
#' @param skip_status
#'      When set to either true, t or 1 statuses will not be included in the returned user objects.
#' @export
twtr_lists_subscribers <- function(list_id, slug, owner_screen_name = NULL, owner_id = NULL, count = NULL, cursor = NULL, include_entities = NULL, 
    skip_status = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/lists/subscribers.json", query = list(list_id = list_id, slug = slug, owner_screen_name = owner_screen_name, 
        owner_id = owner_id, count = count, cursor = cursor, include_entities = include_entities, skip_status = skip_status, ...))
}
