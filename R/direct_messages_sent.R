#' GET direct_messages/sent
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/direct_messages/sent}
#' @param since_id
#'      Returns results with an ID greater than (that is, more recent than) the specified ID. There are
#'      limits to the number of Tweets which can be accessed through the API. If the limit of Tweets has
#'      occured since the since_id, the since_id will be forced to the oldest ID available.
#'      Example Values: 12345
#' @param max_id
#'      Returns results with an ID less than (that is, older than) or equal to the specified ID.
#'      Example Values: 54321
#' @param count
#'      Specifies the number of records to retrieve. Must be less than or equal to 200.
#'      Example Values: 5
#' @param page
#'      Specifies the page of results to retrieve.
#'      Example Values: 3
#' @param include_entities
#'      The entities node will not be included when set to false.
#'      Example Values: false
#' @export
twtr_direct_messages_sent <- function(since_id = NULL, max_id = NULL, count = NULL, page = NULL, include_entities = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/direct_messages/sent.json", query = list(since_id = since_id, max_id = max_id, count = count, 
        page = page, include_entities = include_entities, ...))
}
