#' @title Check if on Travis CI
#' @description Simple check for Travis CI for examples
#'
#' @return Logical if user is named travis
#' @export
#'
#' @examples
#' is_travis()
#' is_cran()
is_travis = function(){
  users = Sys.getenv("USER")
  users = trimws(users)
  any(grepl("travis", users))
}

#' @export
#' @rdname is_travis
is_cran = function(){
  !identical(Sys.getenv("NOT_CRAN"), "true")
}