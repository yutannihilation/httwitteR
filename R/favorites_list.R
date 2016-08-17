#' GET favorites/list
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/favorites/list}
#' @param user_id
#'      The ID of the user for whom to return results for.
#'      Example Values: 12345
#' @param screen_name
#'      The screen name of the user for whom to return results for.
#'      Example Values: noradio
#' @param count
#'      Specifies the number of records to retrieve. Must be less than or equal to 200; defaults to 20. The
#'      value of count is best thought of as a limit to the number of tweets to return because suspended or
#'      deleted content is removed after the count has been applied.
#'      Example Values: 5
#' @param since_id
#'      Returns results with an ID greater than (that is, more recent than) the specified ID. There are
#'      limits to the number of Tweets which can be accessed through the API. If the limit of Tweets has
#'      occured since the since_id, the since_id will be forced to the oldest ID available.
#'      Example Values: 12345
#' @param max_id
#'      Returns results with an ID less than (that is, older than) or equal to the specified ID.
#'      Example Values: 54321
#' @param include_entities
#'      The entities node will be omitted when set to false.
#'      Example Values: false
#' @export
twtr_favorites_list <- function(user_id = NULL, screen_name = NULL, count = NULL, since_id = NULL, max_id = NULL, include_entities = NULL, 
    ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/favorites/list.json", query = list(user_id = user_id, screen_name = screen_name, count = count, 
        since_id = since_id, max_id = max_id, include_entities = include_entities, ...))
}
