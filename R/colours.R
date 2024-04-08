#' Complete list of palettes
#'
#' Use \code{\link{paris2024_palette}} to construct palettes of desired length.
#'
#' @export
paris2024_palettes <- list(
  Logo = c("#D7C378", "#000000"),
  OlympicRings = c("#0078D0", "#FFB114", "#000000", "#00A651", "#F0282D"),
  GamesLook = c("#F1ABC9", "#D9C47A", "#2393CD", "#003561")
)

#' Paris 2024 palette generator
#'
#' @param name Name of the colour palette. Options are \code{Logo},
#' \code{OlympicRings}, \code{GamesLook}.
#' @param n Number of colours in the palette. Palettes have 2 to 5 colours that
#' can e used as a discrete palette. To use more, use a continuous palette.
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

#' Palette printer
#'
#' @param x A palette
#' @param ... ...
#'
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
#'
#' @export
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1,
    as.matrix(1:n),
    col = x,
    ylab = "", xaxt = "n", yaxt = "n", bty = "n"
  )

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 2, family = "sans")
}
