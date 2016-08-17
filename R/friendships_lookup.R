#' GET friendships/lookup
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/friendships/lookup}
#' @param screen_name
#'      A comma separated list of screen names, up to 100 are allowed in a single request.
#'      Example Values: twitterapi,twitter
#' @param user_id
#'      A comma separated list of user IDs, up to 100 are allowed in a single request.
#'      Example Values: 783214,6253282
#' @export
twtr_friendships_lookup <- function(screen_name = NULL, user_id = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/friendships/lookup.json", query = list(screen_name = screen_name, user_id = user_id, ...))
}
