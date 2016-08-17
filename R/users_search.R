#' GET users/search
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/users/search}
#' @param q
#'      The search query to run against people search.
#'      Example Values: Twitter%20API
#' @param page
#'      Specifies the page of results to retrieve.
#'      Example Values: 3
#' @param count
#'      The number of potential user results to retrieve per page. This value has a maximum of 20.
#'      Example Values: 5
#' @param include_entities
#'      The entities node will be disincluded from embedded tweet objects when set to false.
#'      Example Values: false
#' @export
twtr_users_search <- function(q, page = NULL, count = NULL, include_entities = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/users/search.json", query = list(q = q, page = page, count = count, include_entities = include_entities, 
        ...))
}
