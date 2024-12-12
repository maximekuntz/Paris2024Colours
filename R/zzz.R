.onLoad <- function(libname, pkgname) {
  update_geom_font_defaults()
}

.onAttach <- function(libname, pkgname) {
  if (!paris2024_font_installed()) {
    packageStartupMessage("Paris2024-Variable font is missing, please install it!")
  }
}
