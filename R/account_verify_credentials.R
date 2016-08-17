#' GET account/verify_credentials
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/account/verify_credentials}
#' @param include_entities
#'      The entities node will not be included when set to false.
#'      Example Values: false
#' @param skip_status
#'      When set to either true, t or 1 statuses will not be included in the returned user object.
#'      Example Values: true
#' @param include_email
#'      Use of this parameter requires whitelisting.
#'      When set to true email will be returned in the user objects as a string. If the user does not have
#'      an email address on their account, or if the email address is un-verified, null will be returned.
#'      Example Values: true
#' @export
twtr_account_verify_credentials <- function(include_entities = NULL, skip_status = NULL, include_email = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/account/verify_credentials.json", query = list(include_entities = include_entities, skip_status = skip_status, 
        include_email = include_email, ...))
}
