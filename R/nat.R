#' Read neurons from VFB, optionally using a query
#'
#' @param x VFB ids or a query passed to \code{get_instances}
#' @param template A string describing a valid VFB template brain
#' @param ... Additional arguments passed to \code{\link[nat]{read.neurons}}
#'
#' @return A \code{\link[nat]{neuronlist}} object as returned by
#'   \code{\link[nat]{read.neurons}}.
#'
#' @export
#' @examples
#' \donttest{
#' oavpm3=read.neurons.vfb("octopaminergic VPM3 neuron")
#' oavpm3[,c('label','dataset', 'id')]
#' }
#'
#' \dontrun{
#' library(nat)
#' # colour by dataset of origin
#' plot3d(oavpm3, col=dataset)
#' }
read.neurons.vfb <- function(x, template='JRC2018Unisex', ...) {
  if(!requireNamespace("nat", quietly = TRUE))
    stop("Please installed the suggested package nat!")
  vc <- VfbConnect()
  if(!all(valid_vfbids(x))) {
    x <- vc$get_instances(x, summary=T)
    x <- vc_df(x)[['id']]
  }
  if(length(x)==0)
    stop("no valid ids!")
  if(!all(valid_vfbids(x)))
    stop("some invalid VFB ids: ", x)

  tf <- tempfile()
  on.exit(unlink(tf, recursive = TRUE))
  df = vc$neo_query_wrapper$get_images(
    x,
    stomp = T,
    template = template,
    image_folder = tf
  )

  if(nrow(df)==0)
    stop("No images returned")
  nat::read.neurons(tf, df = df, ...)
}
