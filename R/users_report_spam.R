#' POST users/report_spam
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/users/report_spam}
#' @param screen_name
#'      The ID or screen_name of the user you want to report as a spammer. Helpful for disambiguating when a
#'      valid screen name is also a user ID.
#'      Example Values: noradio
#' @param user_id
#'      The ID of the user you want to report as a spammer. Helpful for disambiguating when a valid user ID
#'      is also a valid screen name.
#'      Example Values: 12345
#' @export
twtr_users_report_spam <- function(screen_name = NULL, user_id = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/users/report_spam.json", body = list(screen_name = screen_name, user_id = user_id, ...))
}
