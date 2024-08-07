#' Convenience function to turn vfb_connect summary results into data.frames
#'
#' @param x A summary result from a \code{VfbConnect} call
#' @param ... additional arguments passed to \code{\link{as.data.frame}} or
#'   \code{\link[tibble]{as_tibble}}
#' @param tibble Whether to return a \code{\link{tibble}} rather than a regular
#'   data.frame
#'
#' @export
#' @importFrom tibble as_tibble
#' @importFrom dplyr bind_rows
#' @examples
#' vc=VfbConnect()
#' KC_types = vc$get_subclasses("Kenyon cell", summary=TRUE)
#' vc_df(KC_types)
#'
#' vc$neo_query_wrapper$get_type_TermInfo(list('FBbt_00003686'), summary=TRUE) %>%
#' vc_df
vc_df <- function(x, ..., tibble=FALSE) {
  if(is.data.frame(x)) return(x)
  DFFUN=ifelse(tibble, as_tibble, as.data.frame)
  ll=lapply(x, null2na)
  bind_rows(lapply(ll, DFFUN, ...))
}

null2na <- function(x, repl=NA) {
  sapply(x, simplify = F, function(y) {
    if(length(y)==0) repl else y
  })
}
