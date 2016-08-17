#' GET lists/members/show
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/lists/members/show}
#' @param list_id
#'      The numerical id of the list.
#' @param slug
#'      You can identify a list by its slug instead of its numerical id. If you decide to do so, note that
#'      youÅfll also have to specify the list owner using the owner_id or owner_screen_name parameters.
#' @param user_id
#'      The ID of the user for whom to return results for. Helpful for disambiguating when a valid user ID
#'      is also a valid screen name.
#' @param screen_name
#'      The screen name of the user for whom to return results for. Helpful for disambiguating when a valid
#'      screen name is also a user ID.
#' @param owner_screen_name
#'      The screen name of the user who owns the list being requested by a slug.
#' @param owner_id
#'      The user ID of the user who owns the list being requested by a slug.
#' @param include_entities
#'      When set to either true, t or 1, each tweet will include a node called ÅgentitiesÅh. This node offers
#'      a variety of metadata about the tweet in a discreet structure, including: user_mentions, urls, and
#'      hashtags. While entities are opt-in on timelines at present, they will be made a default component
#'      of output in the future. See Tweet Entities for more details.
#' @param skip_status
#'      When set to either true, t or 1 statuses will not be included in the returned user objects.
#' @export
twtr_lists_members_show <- function(list_id, slug, user_id, screen_name, owner_screen_name = NULL, owner_id = NULL, include_entities = NULL, 
    skip_status = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/lists/members/show.json ", query = list(list_id = list_id, slug = slug, user_id = user_id, 
        screen_name = screen_name, owner_screen_name = owner_screen_name, owner_id = owner_id, include_entities = include_entities, skip_status = skip_status, 
        ...))
}
