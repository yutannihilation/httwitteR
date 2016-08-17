#' POST mutes/users/create
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/mutes/users/create}
#' @param screen_name
#'      The screen name of the potentially muted user. Helpful for disambiguating when a valid screen name
#'      is also a user ID.
#'      Example Values: whiteleaf
#' @param user_id
#'      The ID of the potentially muted user. Helpful for disambiguating when a valid user ID is also a
#'      valid screen name.
#'      Example Values: 12345
#' @export
twtr_mutes_users_create <- function(screen_name = NULL, user_id = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/mutes/users/create.json", body = list(screen_name = screen_name, user_id = user_id, ...))
}
