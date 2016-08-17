#' POST account/update_profile_image
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/account/update_profile_image}
#' @param image
#'      The avatar image for the profile, base64-encoded. Must be a valid GIF, JPG, or PNG image of less
#'      than 700 kilobytes in size. Images with width larger than 400 pixels will be scaled down. Animated
#'      GIFs will be converted to a static GIF of the first frame, removing the animation.
#' @param include_entities
#'      The entities node will not be included when set to false.
#'      Example Values: false
#' @param skip_status
#'      When set to either true, t or 1 statuses will not be included in the returned user objects.
#' @export
twtr_account_update_profile_image <- function(image, include_entities = NULL, skip_status = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/account/update_profile_image.json", body = list(image = image, include_entities = include_entities, 
        skip_status = skip_status, ...))
}
