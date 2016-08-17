#' GET statuses/user_timeline
#' 
#' @seealso \url{https://dev.twitter.com/rest/reference/get/statuses/user_timeline}
#' @param user_id The ID of the user for whom to return results for. Example Values: 12345
#' @param screen_name The screen name of the user for whom to return results for. Example Values:
#'                    noradio
#' @param since_id Returns results with an ID greater than (that is, more recent than) the specified
#'                 ID. There are limits to the number of Tweets which can be accessed through the API.
#'                 If the limit of Tweets has occured since the since_id, the since_id will be forced
#'                 to the oldest ID available. Example Values: 12345
#' @param count Specifies the number of tweets to try and retrieve, up to a maximum of 200 per distinct
#'              request. The value of count is best thought of as a limit to the number of tweets
#'              to return because suspended or deleted content is removed after the count has been
#'              applied. We include retweets in the count, even if include_rts is not supplied. It is
#'              recommended you always send include_rts=1 when using this API method.
#' @param max_id Returns results with an ID less than (that is, older than) or equal to the specified
#'               ID. Example Values: 54321
#' @param trim_user When set to either true, t or 1, each tweet returned in a timeline will include a
#'                  user object including only the status authors numerical ID. Omit this parameter to
#'                  receive the complete user object. Example Values: true
#' @param exclude_replies This parameter will prevent replies from appearing in the returned timeline.
#'                        Using exclude_replies with the count parameter will mean you will receive up-
#'                        to count tweets Å\ this is because the count parameter retrieves that many
#'                        tweets before filtering out retweets and replies. This parameter is only
#'                        supported for JSON and XML responses. Example Values: true
#' @param contributor_details This parameter enhances the contributors element of the status response
#'                            to include the screen_name of the contributor. By default only the
#'                            user_id of the contributor is included. Example Values: true
#' @param include_rts When set to false, the timeline will strip any native retweets (though they will
#'                    still count toward both the maximal length of the timeline and the slice selected
#'                    by the count parameter). Note: If youÅfre using the trim_user parameter in
#'                    conjunction with include_rts, the retweets will still contain a full user object.
#'                    Example Values: false
#' @export
twtr_statuses_user_timeline <- function(
                                        user_id = NULL,
                                        screen_name = NULL,
                                        since_id = NULL,
                                        count = NULL,
                                        max_id = NULL,
                                        trim_user = NULL,
                                        exclude_replies = NULL,
                                        contributor_details = NULL,
                                        include_rts = NULL,
                                        ...) {
  twtr_api(
    'GET',
    'statuses/user_timeline',
    query = list(
      user_id = user_id,
      screen_name = screen_name,
      since_id = since_id,
      count = count,
      max_id = max_id,
      trim_user = trim_user,
      exclude_replies = exclude_replies,
      contributor_details = contributor_details,
      include_rts = include_rts,
    ...)
  )
}
