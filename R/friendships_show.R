#' GET friendships/show
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/friendships/show}
#' @param source_id
#'      The user_id of the subject user.
#'      Example Values: 3191321
#' @param source_screen_name
#'      The screen_name of the subject user.
#'      Example Values: raffi
#' @param target_id
#'      The user_id of the target user.
#'      Example Values: 20
#' @param target_screen_name
#'      The screen_name of the target user.
#'      Example Values: noradio
#' @export
twtr_friendships_show <- function(source_id = NULL, source_screen_name = NULL, target_id = NULL, target_screen_name = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/friendships/show.json", query = list(source_id = source_id, source_screen_name = source_screen_name, 
        target_id = target_id, target_screen_name = target_screen_name, ...))
}
