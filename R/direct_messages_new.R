#' POST direct_messages/new
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/direct_messages/new}
#' @param user_id
#'      The ID of the user who should receive the direct message. Helpful for disambiguating when a valid
#'      user ID is also a valid screen name.
#'      Example Values: 12345
#' @param screen_name
#'      The screen name of the user who should receive the direct message. Helpful for disambiguating when a
#'      valid screen name is also a user ID.
#'      Example Values: noradio
#' @param text
#'      The text of your direct message. Be sure to URL encode as necessary, and keep the message within the
#'      character count limit (available in the help/configuration endpoint)
#'      Example Values: Meet me behind the cafeteria after school
#' @export
twtr_direct_messages_new <- function(user_id = NULL, screen_name = NULL, text, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/direct_messages/new.json", body = list(user_id = user_id, screen_name = screen_name, text = text, 
        ...))
}
