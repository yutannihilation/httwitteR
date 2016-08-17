#' POST lists/subscribers/destroy
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/lists/subscribers/destroy}
#' @param list_id
#'      The numerical id of the list.
#' @param slug
#'      You can identify a list by its slug instead of its numerical id. If you decide to do so, note that
#'      youÅfll also have to specify the list owner using the owner_id or owner_screen_name parameters.
#' @param owner_screen_name
#'      The screen name of the user who owns the list being requested by a slug.
#' @param owner_id
#'      The user ID of the user who owns the list being requested by a slug.
#' @export
twtr_lists_subscribers_destroy <- function(list_id, slug, owner_screen_name = NULL, owner_id = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/lists/subscribers/destroy.json ", body = list(list_id = list_id, slug = slug, owner_screen_name = owner_screen_name, 
        owner_id = owner_id, ...))
}
