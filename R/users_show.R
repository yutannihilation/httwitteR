#' GET users/show
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/users/show}
#' @param user_id
#'      The ID of the user for whom to return results for. Either an id or screen_name is required for this
#'      method.
#'      Example Values: 12345
#' @param screen_name
#'      The screen name of the user for whom to return results for. Either a id or screen_name is required
#'      for this method.
#'      Example Values: noradio
#' @param include_entities
#'      The entities node will be disincluded when set to false.
#'      Example Values: false
#' @export
twtr_users_show <- function(user_id, screen_name, include_entities = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/users/show.json", query = list(user_id = user_id, screen_name = screen_name, include_entities = include_entities, 
        ...))
}
