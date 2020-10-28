#' Return reference to VfbConnect object
#'
#' @details See \url{https://pypi.org/project/vfb-connect/}
#'
#' @return A \code{list} containing the processed results.
#' @export
#'
#' @examples
#'
#' vc=VfbConnect()
#'
#' vc$neo_query_wrapper$get_type_TermInfo(list('FBbt_00003686'))
#'
#' vc$neo_query_wrapper$get_DataSet_TermInfo(list('Ito2013'))
#'
#' vc$neo_query_wrapper$get_anatomical_individual_TermInfo(list('VFB_00010001'))
#' # Get all terms relevant to a brain region (all parts and all overlapping cells$
#' # Query by label supported by default$
#' vc$get_terms_by_region('fan-shaped body')
#'
VfbConnect <- function() {
  vfb_connect$cross_server_tools$VfbConnect()
}
