#' POST friendships/create
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/friendships/create}
#' @param screen_name
#'      The screen name of the user for whom to befriend.
#'      Example Values: noradio
#' @param user_id
#'      The ID of the user for whom to befriend.
#'      Example Values: 12345
#' @param follow
#'      Enable notifications for the target user.
#'      Example Values: true
#' @export
twtr_friendships_create <- function(screen_name = NULL, user_id = NULL, follow = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/friendships/create.json", body = list(screen_name = screen_name, user_id = user_id, follow = follow, 
        ...))
}
