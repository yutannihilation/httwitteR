#' GET application/rate_limit_status
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/application/rate_limit_status}
#' @param resources
#'      A comma-separated list of resource families you want to know the current rate limit disposition for.
#'      For best performance, only specify the resource families pertinent to your application.
#'      See API Rate Limiting for more information.
#'      Example Values: statuses,friends,trends,help
#' @export
twtr_application_rate_limit_status <- function(resources = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/application/rate_limit_status.json", query = list(resources = resources, ...))
}
