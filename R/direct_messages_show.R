#' GET direct_messages/show
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/direct_messages/show}
#' @param id
#'      The ID of the direct message.
#'      Example Values: 587424932
#' @export
twtr_direct_messages_show <- function(id, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/direct_messages/show.json", query = list(...))
}
