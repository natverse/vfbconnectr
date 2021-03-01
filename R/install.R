#' Install or update the VFB connect python module
#'
#' @description This uses \code{reticulate::\link{py_install}} to install or
#'   update the underlying python package.
#'
#' @param package Optional package name, possible with version specifier (see
#'   examples)
#' @param ... Additional arguments passed to
#'   \code{reticulate::\link{py_install}}
#'
#' @export
#' @examples
#' \dontrun{
#' vc_install()
#'
#' # install a specific version
#' vc_install("vfb-connect~=1.2.4")
#' }
vc_install <- function(package='vfb-connect', ...) {
  res=reticulate::py_install(package, pip = T, pip_options='--upgrade --prefer-binary', ...)
  if(reticulate::py_available())
    message("Please restart R to benefit from any update!")
}
