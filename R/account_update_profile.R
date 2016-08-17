#' POST account/update_profile
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/account/update_profile}
#' @param name
#'      Full name associated with the profile. Maximum of 20 characters.
#'      Example Values: Marcel Molina
#' @param url
#'      URL associated with the profile. Will be prepended with Åghttp://Åh if not present. Maximum of 100
#'      characters.
#'      Example Values: http://project.ioni.st
#' @param location
#'      The city or country describing where the user of the account is located. The contents are not
#'      normalized or geocoded in any way. Maximum of 30 characters.
#'      Example Values: San Francisco, CA
#' @param description
#'      A description of the user owning the account. Maximum of 160 characters.
#'      Example Values: Flipped my wig at age 22 and it never grew back. Also: I work at Twitter.
#' @param profile_link_color
#'      Sets a hex value that controls the color scheme of links used on the authenticating userÅfs profile
#'      page on twitter.com. This must be a valid hexadecimal value, and may be either three or six
#'      characters (ex: F00 or FF0000).
#'      Example Values: 0000FF
#'      This parameter replaces the deprecated (and separate) update_profile_colors API method.
#' @param include_entities
#'      The entities node will not be included when set to false.
#'      Example Values: false
#' @param skip_status
#'      When set to either true, t or 1 statuses will not be included in the returned user objects.
#' @export
twtr_account_update_profile <- function(name = NULL, url = NULL, location = NULL, description = NULL, profile_link_color = NULL, include_entities = NULL, 
    skip_status = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/account/update_profile.json", body = list(name = name, url = url, location = location, description = description, 
        profile_link_color = profile_link_color, include_entities = include_entities, skip_status = skip_status, ...))
}
