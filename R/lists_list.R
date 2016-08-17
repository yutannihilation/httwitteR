#' GET lists/list
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/lists/list}
#' @param user_id
#'      The ID of the user for whom to return results for. Helpful for disambiguating when a valid user ID
#'      is also a valid screen name.
#'      Example Values: 12345
#'      Note:: Specifies the ID of the user to get lists from. Helpful for disambiguating when a valid user
#'      ID is also a valid screen name.
#' @param screen_name
#'      The screen name of the user for whom to return results for. Helpful for disambiguating when a valid
#'      screen name is also a user ID.
#'      Example Values: noradio
#' @param reverse
#'      Set this to true if you would like owned lists to be returned first. See description above for
#'      information on how this parameter works.
#'      Example Values: true
#' @export
twtr_lists_list <- function(user_id = NULL, screen_name = NULL, reverse = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/lists/list.json", query = list(user_id = user_id, screen_name = screen_name, reverse = reverse, 
        ...))
}
