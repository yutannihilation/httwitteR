#' POST lists/members/create
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/lists/members/create}
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
#' @export
twtr_lists_members_create <- function(list_id, slug, user_id, screen_name, owner_screen_name = NULL, owner_id = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/lists/members/create.json", body = list(list_id = list_id, slug = slug, user_id = user_id, 
        screen_name = screen_name, owner_screen_name = owner_screen_name, owner_id = owner_id, ...))
}
