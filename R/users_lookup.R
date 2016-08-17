#' GET users/lookup
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/users/lookup}
#' @param screen_name
#'      A comma separated list of screen names, up to 100 are allowed in a single request. You are strongly
#'      encouraged to use a POST for larger (up to 100 screen names) requests.
#'      Example Values: twitterapi,twitter
#' @param user_id
#'      A comma separated list of user IDs, up to 100 are allowed in a single request. You are strongly
#'      encouraged to use a POST for larger requests.
#'      Example Values: 783214,6253282
#' @param include_entities
#'      The entities node that may appear within embedded statuses will be disincluded when set to false.
#'      Example Values: false
#' @export
twtr_users_lookup <- function(screen_name = NULL, user_id = NULL, include_entities = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/users/lookup.json", query = list(screen_name = screen_name, user_id = user_id, include_entities = include_entities, 
        ...))
}
