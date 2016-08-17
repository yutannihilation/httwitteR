#' GET statuses/home_timeline
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/statuses/home_timeline}
#' @param count
#'      Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20. The
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
#' @param trim_user
#'      When set to either true, t or 1, each tweet returned in a timeline will include a user object
#'      including only the status authors numerical ID. Omit this parameter to receive the complete user
#'      object.
#'      Example Values: true
#' @param exclude_replies
#'      This parameter will prevent replies from appearing in the returned timeline. Using exclude_replies
#'      with the count parameter will mean you will receive up-to count tweets Å\ this is because the count
#'      parameter retrieves that many tweets before filtering out retweets and replies.
#'      Example Values: true
#' @param contributor_details
#'      This parameter enhances the contributors element of the status response to include the screen_name
#'      of the contributor. By default only the user_id of the contributor is included.
#'      Example Values: true
#' @param include_entities
#'      The entities node will be disincluded when set to false.
#'      Example Values: false
#' @export
twtr_statuses_home_timeline <- function(count = NULL, since_id = NULL, max_id = NULL, trim_user = NULL, exclude_replies = NULL, contributor_details = NULL, 
    include_entities = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/statuses/home_timeline.json", query = list(count = count, since_id = since_id, max_id = max_id, 
        trim_user = trim_user, exclude_replies = exclude_replies, contributor_details = contributor_details, include_entities = include_entities, 
        ...))
}
