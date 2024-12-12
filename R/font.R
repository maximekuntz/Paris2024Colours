#' Check if Paris2024-Variable font is installed in the system
#'
#' @importFrom systemfonts system_fonts
#'
#' @returns TRUE if Paris2024-Variable is installed in the system
#' @export
paris2024_font_installed <- function() {
  sys_fonts <- systemfonts::system_fonts()
  any(grepl("paris2024-variable", sys_fonts$family, ignore.case = TRUE))
}


#' Import Paris2024-Variable font
#'
#' Import Paris2024-Variable font for use in R graphic devices
#'
#' @importFrom systemfonts register_font
#'
#' @return No return value, called for side effects
#' @export
import_paris2024_font <- function() {
  if (!paris2024_font_installed()) {
    font_dir <- system.file("font", package = "Paris2024Colours")
    systemfonts::register_font(
      name = "Paris2024-Variable",
      plain = file.path(font_dir, "Paris2024-Variable.ttf")
    )
  }
  update_geom_font_defaults()
}
