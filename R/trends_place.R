#' GET trends/place
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/trends/place}
#' @param id
#'      The Yahoo! Where On Earth ID of the location to return trending information for. Global information
#'      is available by using 1 as the WOEID.
#'      Example Values: 1
#' @param exclude
#'      Setting this equal to hashtags will remove all hashtags from the trends list.
#' @export
twtr_trends_place <- function(id, exclude = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/trends/place.json", query = list(exclude = exclude, ...))
}
