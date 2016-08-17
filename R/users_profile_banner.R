#' GET users/profile_banner
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/users/profile_banner}
#' @param user_id
#'      The ID of the user for whom to return results. Helpful for disambiguating when a valid user ID is
#'      also a valid screen name.
#'      Example Values: 12345
#' @param screen_name
#'      The screen name of the user for whom to return results. Helpful for disambiguating when a valid
#'      screen name is also a user ID.
#'      Example Values: noradio
#' @export
twtr_users_profile_banner <- function(user_id = NULL, screen_name = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/users/profile_banner.json", query = list(user_id = user_id, screen_name = screen_name, ...))
}
