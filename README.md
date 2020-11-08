
# vfbconnectr

<!-- badges: start -->
[![Travis build status](https://travis-ci.com/jefferis/vfbconnectr.svg?branch=master)](https://travis-ci.com/jefferis/vfbconnectr)
<!-- badges: end -->

vfbconnectr provides a simple R wrapper (via [reticulate](https://rstudio.github.io/reticulate/)) for the VFB_connect Python library that enables programmatic access to the https://virtualflybrain.org website and associated services.
VFB_connect is developed by the core VFB team.

## Installation

``` r
remotes::install_github("jefferis/vfbconnectr")
```

**vfbconnectr** relies on the reticulate package and a Python installation. 
To learn more about how reticulate is used within R packages, see [this article](https://rstudio.github.io/reticulate/articles/package.html).
We use the [automatic configuration](https://rstudio.github.io/reticulate/articles/python_dependencies.html#automatic-configuration) method.
In theory this should offer to install any necessary python dependencies into a `r-reticulate` python environment.

## Example

This is the R equivalent of the basic examples for the Python library.
Essentially convert `.` to `$` and turn `['text']` into `list("text")` and you should be good to go. 

``` r
library(vfbconnectr)
## basic example code

vc=VfbConnect()

vc$neo_query_wrapper$get_type_TermInfo(list('FBbt_00003686'))

vc$neo_query_wrapper$get_DataSet_TermInfo(list('Ito2013'))

vc$neo_query_wrapper$get_anatomical_individual_TermInfo(list('VFB_00010001'))
# Get all terms relevant to a brain region (all parts and all overlapping cells$
# Query by label supported by default$
vc$get_terms_by_region('fan-shaped body')
```
## Next steps

* make a general R helper function to improve formatting of results
* wrap some functions in R functions to improve formatting of results and avoid any need to worry about whether inputs must be in a list or not.
* more examples ...
