#' POST account/update_profile_banner
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/account/update_profile_banner}
#' @param banner
#'      The Base64-encoded or raw image data being uploaded as the userÅfs new profile banner.
#' @param width
#'      The width of the preferred section of the image being uploaded in pixels. Use with height,
#'      offset_left, and offset_top to select the desired region of the image to use.
#' @param height
#'      The height of the preferred section of the image being uploaded in pixels. Use with width,
#'      offset_left, and offset_top to select the desired region of the image to use.
#' @param offset_left
#'      The number of pixels by which to offset the uploaded image from the left. Use with height, width,
#'      and offset_top to select the desired region of the image to use.
#' @param offset_top
#'      The number of pixels by which to offset the uploaded image from the top. Use with height, width, and
#'      offset_left to select the desired region of the image to use.
#' @export
twtr_account_update_profile_banner <- function(banner, width = NULL, height = NULL, offset_left = NULL, offset_top = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/account/update_profile_banner.json", body = list(banner = banner, width = width, height = height, 
        offset_left = offset_left, offset_top = offset_top, ...))
}
