#' GET statuses/retweets/:id
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid}
#' @param id
#'      The numerical ID of the desired status.
#'      Example Values: 123
#' @param count
#'      Specifies the number of records to retrieve. Must be less than or equal to 100.
#'      Example Values: 5
#' @param trim_user
#'      When set to either true, t or 1, each tweet returned in a timeline will include a user object
#'      including only the status authors numerical ID. Omit this parameter to receive the complete user
#'      object.
#'      Example Values: true
#' @export
twtr_statuses_retweets <- function(id, count = NULL, trim_user = NULL, ...) {
    twtr_api("GET", sprintf("https://api.twitter.com/1.1/statuses/retweets/%s.json", id), query = list(count = count, trim_user = trim_user, 
        ...))
}
