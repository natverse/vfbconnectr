#' Return summary of datasets available from VFB
#'
#' @return A data.frame with columns including DOI
#' @export
#' @importFrom dplyr arrange .data
#' @examples
#' \donttest{
#' df=vfb_datasets()
#' head(df)
#' subset(df, !nzchar(DOI))
#' }
vfb_datasets <- function() {
  vc=VfbConnect()
  vc$neo_query_wrapper$get_datasets(summary=T) %>%
    vc_df() %>%
    arrange(.data$id)
}
