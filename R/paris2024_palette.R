#' Paris 2024 palette generator
#'
#' @param name Name of the colour palette. Options are \code{Logo},
#' \code{OlympicRings}, \code{GamesLook}, \code{Generation2024},
#' \code{Impact2024}, \code{TerreDeJeux} and \code{Tickets}.
#' @param n Number of colours in the palette. Palettes have 2 to 5 colours that
#' can be used as a discrete palette. To use more, use a continuous palette.
#' @param type Usage of palette as "continuous" or "discrete". Continuous usage
#' interpolates between colors to create a scale of values. If omitted, function
#' assumes continuous if n > length of palette, and discrete if n < length of
#' palette.
#'
#' @return A vector of colours.
#' @export
#'
#' @examples
#' paris2024_palette("GamesLook", n = 6, type = "continuous")
#' paris2024_palette("Logo", 2)
#' paris2024_palette("OlympicRings")
paris2024_palette <- function(name, n, type = c("discrete", "continuous")) {
  pal <- paris2024_palettes[[name]]

  if (is.null(pal)) {
    stop("Palette not found.")
  }

  if (missing(n)) {
    n <- length(pal)
  }

  if (n < 1) {
    stop("At least n = 1 color should be requested")
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- switch(type,
    continuous = grDevices::colorRampPalette(pal)(n),
    discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}
