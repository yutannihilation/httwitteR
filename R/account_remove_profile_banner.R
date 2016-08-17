#' POST account/remove_profile_banner
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/account/remove_profile_banner}

#' @export
twtr_account_remove_profile_banner <- function(...) {
    twtr_api("POST", "https://api.twitter.com/1.1/account/remove_profile_banner.json", body = list(...))
}
