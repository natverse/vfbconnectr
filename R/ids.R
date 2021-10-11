valid_vfbids <- function(x) {
  grepl("^VFB_[0-9A-z]{8}$", x, perl = T)
}
