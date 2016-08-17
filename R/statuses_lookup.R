#' GET statuses/lookup
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/statuses/lookup}
#' @param idrequired
#'      A comma separated list of tweet IDs, up to 100 are allowed in a single request.
#'      Example Values: 20, 432656548536401920
#' @param include_entities
#'      The entities node that may appear within embedded statuses will be disincluded when set to false.
#'      Example Values: false
#' @param trim_user
#'      When set to either true, t or 1, each tweet returned in a timeline will include a user object
#'      including only the status authors numerical ID. Omit this parameter to receive the complete user
#'      object.
#'      Example Values: true
#' @param map
#'      When using the map parameter, tweets that do not exist or cannot be viewed by the current user will
#'      still have their key represented but with an explicitly null value paired with it
#'      Example Values: true
#' @export
twtr_statuses_lookup <- function(idrequired = NULL, include_entities = NULL, trim_user = NULL, map = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/statuses/lookup.json", query = list(idrequired = idrequired, include_entities = include_entities, 
        trim_user = trim_user, map = map, ...))
}
