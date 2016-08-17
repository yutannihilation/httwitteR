#' GET trends/closest
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/trends/closest}
#' @param lat
#'      If provided with a long parameter the available trend locations will be sorted by distance, nearest
#'      to furthest, to the co-ordinate pair. The valid ranges for longitude is -180.0 to +180.0 (West is
#'      negative, East is positive) inclusive.
#'      Example Values: 37.781157
#' @param long
#'      If provided with a lat parameter the available trend locations will be sorted by distance, nearest
#'      to furthest, to the co-ordinate pair. The valid ranges for longitude is -180.0 to +180.0 (West is
#'      negative, East is positive) inclusive.
#'      Example Values: -122.400612831116
#' @export
twtr_trends_closest <- function(lat, long, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/trends/closest.json", query = list(lat = lat, long = long, ...))
}
