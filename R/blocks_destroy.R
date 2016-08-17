#' POST blocks/destroy
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/blocks/destroy}
#' @param screen_name
#'      The screen name of the potentially blocked user. Helpful for disambiguating when a valid screen name
#'      is also a user ID.
#'      Example Values: noradio
#' @param user_id
#'      The ID of the potentially blocked user. Helpful for disambiguating when a valid user ID is also a
#'      valid screen name.
#'      Example Values: 12345
#' @param include_entities
#'      The entities node will not be included when set to false.
#'      Example Values: false
#' @param skip_status
#'      When set to either true, t or 1 statuses will not be included in the returned user objects.
#' @export
twtr_blocks_destroy <- function(screen_name = NULL, user_id = NULL, include_entities = NULL, skip_status = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/blocks/destroy.json", body = list(screen_name = screen_name, user_id = user_id, include_entities = include_entities, 
        skip_status = skip_status, ...))
}
