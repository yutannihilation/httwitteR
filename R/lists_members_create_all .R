#' POST lists/members/create_all
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/lists/members/create_all}
#' @param list_id
#'      The numerical id of the list.
#' @param slug
#'      You can identify a list by its slug instead of its numerical id. If you decide to do so, note that
#'      youÅfll also have to specify the list owner using the owner_id or owner_screen_name parameters.
#' @param user_id
#'      A comma separated list of user IDs, up to 100 are allowed in a single request.
#' @param screen_name
#'      A comma separated list of screen names, up to 100 are allowed in a single request.
#' @param owner_screen_name
#'      The screen name of the user who owns the list being requested by a slug.
#' @param owner_id
#'      The user ID of the user who owns the list being requested by a slug.
#' @export
twtr_lists_members_create_all <- function(list_id, slug, user_id = NULL, screen_name = NULL, owner_screen_name = NULL, owner_id = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/lists/members/create_all.json ", body = list(list_id = list_id, slug = slug, user_id = user_id, 
        screen_name = screen_name, owner_screen_name = owner_screen_name, owner_id = owner_id, ...))
}
