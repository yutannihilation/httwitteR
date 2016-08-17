#' POST favorites/destroy
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/favorites/destroy}
#' @param id
#'      The numerical ID of the desired status.
#'      Example Values: 123
#' @param include_entities
#'      The entities node will be omitted when set to false.
#'      Example Values: false
#' @export
twtr_favorites_destroy <- function(id, include_entities = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/favorites/destroy.json", body = list(include_entities = include_entities, ...))
}
