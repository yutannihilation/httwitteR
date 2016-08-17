#' POST lists/create
#'
#' @seealso \url{https://dev.twitter.com/rest/reference/post/lists/create}
#' @param name
#'      The name for the list.
#'      A listÅfs name must start with a letter and can consist only of 25 or fewer letters, numbers, Åg-Åg, or
#'      Åg_Åh characters.
#' @param mode
#'      Whether your list is public or private. Values can be public or private. If no mode is specified the
#'      list will be public.
#' @param description
#'      The description to give the list.
#' @export
twtr_lists_create <- function(name, mode = NULL, description = NULL, ...) {
    twtr_api("POST", "https://api.twitter.com/1.1/lists/create.json", body = list(name = name, mode = mode, description = description, ...))
}
