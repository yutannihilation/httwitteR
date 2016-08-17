#' POST friendships/destroy
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/friendships/destroy}
#' @param screen_name
#'      The screen name of the user for whom to unfollow.
#'      Example Values: noradio
#' @param user_id
#'      The ID of the user for whom to unfollow.
#'      Example Values: 12345
#' @export
twtr_friendships_destroy <- function(screen_name = NULL, user_id = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/friendships/destroy.json", body = list(screen_name = screen_name, user_id = user_id, ...))
}
