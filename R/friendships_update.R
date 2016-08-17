#' POST friendships/update
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/friendships/update}
#' @param screen_name
#'      The screen name of the user for whom to befriend.
#'      Example Values: noradio
#' @param user_id
#'      The ID of the user for whom to befriend.
#'      Example Values: 12345
#' @param device
#'      Enable/disable device notifications from the target user.
#'      Example Values: true, false
#' @param retweets
#'      Enable/disable retweets from the target user.
#'      Example Values: true, false
#' @export
twtr_friendships_update <- function(screen_name = NULL, user_id = NULL, device = NULL, retweets = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/friendships/update.json", body = list(screen_name = screen_name, user_id = user_id, device = device, 
        retweets = retweets, ...))
}
