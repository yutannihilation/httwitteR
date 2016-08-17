#' POST direct_messages/destroy
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/direct_messages/destroy}
#' @param id
#'      The ID of the direct message to delete.
#'      Example Values: 1270516771
#' @param include_entities
#'      The entities node will not be included when set to false.
#'      Example Values: false
#' @export
twtr_direct_messages_destroy <- function(id, include_entities = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/direct_messages/destroy.json", body = list(include_entities = include_entities, ...))
}
