#' POST lists/update
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/lists/update}
#' @param list_id
#'      The numerical id of the list.
#' @param slug
#'      You can identify a list by its slug instead of its numerical id. If you decide to do so, note that
#'      youÅfll also have to specify the list owner using the owner_id or owner_screen_name parameters.
#' @param name
#'      The name for the list.
#' @param mode
#'      Whether your list is public or private. Values can be public or private. If no mode is specified the
#'      list will be public.
#' @param description
#'      The description to give the list.
#' @param owner_screen_name
#'      The screen name of the user who owns the list being requested by a slug.
#' @param owner_id
#'      The user ID of the user who owns the list being requested by a slug.
#' @export
twtr_lists_update <- function(list_id, slug, name = NULL, mode = NULL, description = NULL, owner_screen_name = NULL, owner_id = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/lists/update.json", body = list(list_id = list_id, slug = slug, name = name, mode = mode, 
        description = description, owner_screen_name = owner_screen_name, owner_id = owner_id, ...))
}
