#' Return reference to VfbConnect object
#'
#' @details See \url{https://pypi.org/project/vfb-connect/}. The \code{raw=TRUE}
#'   option is mostly useful to see what output would look like.
#' @param raw Whether to return python list containing raw JSON (default
#'   \code{FALSE})
#'
#' @return An \code{list} containing the processed results or (when
#'   \code{raw=TRUE}) as python list containing raw JSON.
#' @export
#'
#' @examples
#'
#' vc=VfbConnect()
#' # large return, so use str
#' str(vc$neo_query_wrapper$get_type_TermInfo(list('FBbt_00003686')), max=2)
#' # do this to explore
#' # vc$neo_query_wrapper$get_type_TermInfo(list('FBbt_00003686')) %>% View()
#' vc$neo_query_wrapper$get_type_TermInfo(list('FBbt_00003686'), summary=TRUE)
#'
#' vc$neo_query_wrapper$get_DataSet_TermInfo(list('Ito2013'), summary=TRUE)
#'
#' vc$neo_query_wrapper$get_anatomical_individual_TermInfo(list('VFB_00010001'))
#' # Get all terms relevant to a brain region (all parts and all overlapping cells$
#' # Query by label supported by default
#' vc$get_terms_by_region('fan-shaped body') %>%
#'   vc_df() %>%
#'   head(10)
#'
#' # the same but returning raw JSON
#' vc2=VfbConnect(raw=TRUE)
#' vc2$neo_query_wrapper$get_type_TermInfo(list('FBbt_00003686'), summary=TRUE)
VfbConnect <- function(raw=FALSE) {
  if(raw)
    vfb_connectraw$cross_server_tools$VfbConnect()
  else vfb_connect$cross_server_tools$VfbConnect()
}
