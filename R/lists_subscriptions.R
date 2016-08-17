#' GET lists/subscriptions
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/get/lists/subscriptions}
#' @param user_id
#'      The ID of the user for whom to return results for. Helpful for disambiguating when a valid user ID
#'      is also a valid screen name.
#' @param screen_name
#'      The screen name of the user for whom to return results for. Helpful for disambiguating when a valid
#'      screen name is also a user ID.
#' @param count
#'      The amount of results to return per page. Defaults to 20. No more than 1000 results will ever be
#'      returned in a single page.
#' @param cursor
#'      Breaks the results into pages. Provide a value of -1 to begin paging. Provide values as returned in
#'      the response bodyÅfs next_cursor and previous_cursor attributes to page back and forth in the list.
#'      It is recommended to always use cursors when the method supports them. See [node:10362] for more
#'      information.
#' @export
twtr_lists_subscriptions <- function(user_id = NULL, screen_name = NULL, count = NULL, cursor = NULL, ...) {
    twtr_api("GET", "https://api.twitter.com/1.1/lists/subscriptions.json", query = list(user_id = user_id, screen_name = screen_name, count = count, 
        cursor = cursor, ...))
}
