% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vfbconnectr-package.R
\docType{package}
\name{vfbconnectr-package}
\alias{vfbconnectr}
\alias{vfbconnectr-package}
\title{vfbconnectr: An R Interface to vfb-connect to query virtualflybrain.org}
\description{
Provides an R interface to the Python package vfb-connect. 'VFB_connect' is a Python lib that wraps data / knowledgebase query endpoints and returns 'VFB_json'.
}
\details{
vfbconnectr provides a simple R wrapper (via
  \code{\link{reticulate}}) for the
  \href{https://pypi.org/project/vfb-connect/}{VFB_connect Python library}
  that enables programmatic access to the \url{https://virtualflybrain.org}
  website and associated services. VFB_connect is developed by the core VFB
  team.
}
\examples{
\dontrun{
# make a VfbConnect to access the Python module
vc=VfbConnect()
}
}
\seealso{
\code{\link{VfbConnect}}, \code{\link{vc_install}}
}
\author{
\strong{Maintainer}: Gregory Jefferis \email{jefferis@gmail.com} (\href{https://orcid.org/0000-0002-0587-9355}{ORCID})

}
\keyword{internal}
