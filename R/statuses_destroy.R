#' POST statuses/destroy/:id
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/statuses/destroy/\%3Aid}
#' @param id
#'      The numerical ID of the desired status.
#'      Example Values: 123
#' @param trim_user
#'      When set to either true, t or 1, each tweet returned in a timeline will include a user object
#'      including only the status authors numerical ID. Omit this parameter to receive the complete user
#'      object.
#'      Example Values: true
#' @export
twtr_statuses_destroy <- function(id, trim_user = NULL, ...) {
    twtr_api("POST", sprintf("https://api.twitter.com/1.1/statuses/destroy/%s.json", id), body = list(trim_user = trim_user, ...))
}
