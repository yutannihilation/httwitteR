#' GET friendships/no_retweets/ids
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/friendships/no_retweets/ids}
#' @param stringify_ids
#'      Many programming environments will not consume our ids due to their size. Provide this option to
#'      have ids returned as strings instead. Read more about [node:194]. This parameter is especially
#'      important to use in Javascript environments.
#'      Example Values: true
#' @export
twtr_friendships_no_retweets_ids <- function(stringify_ids = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/friendships/no_retweets/ids.json", query = list(stringify_ids = stringify_ids, ...))
}
