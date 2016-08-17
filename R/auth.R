#' Get Authentication
#'
#' Generate OAuth1 token
#'
#' @export
twtr_auth <- function(key = NULL, secret = NULL) {
  # If there is a cached token in .httr-oauth, use it.
  token <- load_cached_token()
  if(!is.null(token)){
    return(token)
  }

  if(is.null(key)) {
    key <- give_password_or_die("Consumer Key (API Key)")
  }
  if(is.null(secret)) {
    secret <- give_password_or_die("Consumer Secret (API Secret)")
  }

  httr::oauth1.0_token(
    endpoint = httr::oauth_endpoints("twitter"),
    app = httr::oauth_app(
      "twitter",
      key = key,
      secret = secret
    )
  )
}

load_cached_token <- function() {
  if(!file.exists(".httr-oauth")) return(NULL)
  oauth_cache <- readRDS(".httr-oauth")

  candidates <- oauth_cache %>%
    purrr::keep(~ is_twitter_app(.$app))

  if (length(candidates) == 0) {
    return(NULL)
  } else if(length(candidates) > 2) {
    stop("More than one twitter tokens are found. Remove .httr-oauth first!")
  }

  candidates[[1]]
}

is_twitter_app <- function(x) {
  !is.null(x) &&
  is(x) == "oauth_app" &&
    !is.null(x$app) &&
    x$app == "twitter"
}

give_password_or_die <- function(prompt) {
  password <- rstudioapi::askForPassword(prompt)
  if(is.null(password)) stop(sprintf("%s is NULL!", prompt))
  password
}
