#' @importFrom reticulate import
vfb_connect <- NULL
.onLoad <- function(libname, pkgname) {
  vfb_connect <<- import("vfb_connect", delay_load = TRUE)
  invisible()
}
