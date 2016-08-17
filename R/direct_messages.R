#' GET direct_messages
#' 
#' @seealso \url{https://dev.twitter.com/rest/reference/get/direct_messages}
#' @param since_id Returns results with an ID greater than (that is, more recent than) the specified
#'                 ID. There are limits to the number of Tweets which can be accessed through the API.
#'                 If the limit of Tweets has occured since the since_id, the since_id will be forced
#'                 to the oldest ID available. Example Values: 12345
#' @param max_id Returns results with an ID less than (that is, older than) or equal to the specified
#'               ID. Example Values: 54321
#' @param count Specifies the number of direct messages to try and retrieve, up to a maximum of 200.
#'              The value of count is best thought of as a limit to the number of Tweets to return
#'              because suspended or deleted content is removed after the count has been applied.
#'              Example Values: 5
#' @param include_entities The entities node will not be included when set to false. Example Values:
#'                         false
#' @param skip_status When set to either true, t or 1 statuses will not be included in the returned
#'                    user objects.
#' @export
twtr_direct_messages <- function(
                                 since_id = NULL,
                                 max_id = NULL,
                                 count = NULL,
                                 include_entities = NULL,
                                 skip_status = NULL,
                                 ...) {
  twtr_api(
    'GET',
    'direct_messages',
    query = list(
      since_id = since_id,
      max_id = max_id,
      count = count,
      include_entities = include_entities,
      skip_status = skip_status,
    ...)
  )
}
