vfb_connect <- NULL
vfb_connectraw <- NULL

#' @importFrom reticulate import
.onLoad <- function(libname, pkgname) {
  vfb_connect <<- import("vfb_connect", delay_load = TRUE)
  vfb_connectraw <<- import("vfb_connect", delay_load = TRUE, convert=FALSE)
  invisible()
}
