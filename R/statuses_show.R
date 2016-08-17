#' GET statuses/show/:id
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/statuses/show/%3Aid}
#' @param id
#'      The numerical ID of the desired Tweet.
#'      Example Values: 123
#' @param trim_user
#'      When set to either true, t or 1, each tweet returned in a timeline will include a user object
#'      including only the status authors numerical ID. Omit this parameter to receive the complete user
#'      object.
#'      Example Values: true
#' @param include_my_retweet
#'      When set to either true, t or 1, any Tweets returned that have been retweeted by the authenticating
#'      user will include an additional current_user_retweet node, containing the ID of the source status
#'      for the retweet.
#'      Example Values: true
#' @param include_entities
#'      The entities node will be disincluded when set to false.
#'      Example Values: false
#' @export
twtr_statuses_show <- function(id, trim_user = NULL, include_my_retweet = NULL, include_entities = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/statuses/show.json", query = list(trim_user = trim_user, include_my_retweet = include_my_retweet, 
        include_entities = include_entities, ...))
}
