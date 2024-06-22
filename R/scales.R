#' Paris 2024 palettes for plotting with ggplot2
#'
#' Function for using \code{Paris2024Colours} colours schemes in \code{ggplot2}.
#' Use \code{\link{scale_colour_paris2024_d}} and
#' \code{\link{scale_fill_paris2024_d}} for discrete scales, and use
#' \code{\link{scale_colour_paris2024_c}} and
#' \code{\link{scale_fill_paris2024_c}} for continuous scales.
#'
#' @param name Name of the colour palette. Options are \code{Logo},
#' \code{OlympicRings}, \code{ParalympicAgitos}, \code{GamesLook},
#' \code{Generation2024}, \code{Impact2024}, \code{TerreDeJeux}, \code{Tickets}
#' and \code{Flame}.
#' @param reverse Whether to reverse colour palette (TRUE) or not (FALSE,
#' default).
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#'
#' @return A function that returns a discrete colour scale.
#'
#' @import ggplot2
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot2::ggplot(
#'   data = iris, aes(x = Sepal.Width, y = Sepal.Length, colour = Species)
#' ) +
#'   geom_point() +
#'   scale_colour_paris2024_d("GamesLook")
scale_colour_paris2024_d <- function(name, reverse = FALSE, ...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = paste0("paris2024_", name),
    palette = function(n) {
      paris2024_palette(
        name = name, n = n, type = "discrete", reverse = reverse
      )
    },
    ...
  )
}

#' @rdname scale_colour_paris2024_d
#' @export
scale_color_paris2024_d <- scale_colour_paris2024_d



#' Paris 2024 palettes for plotting with ggplot2
#'
#' Function for using \code{Paris2024Colours} colours schemes in \code{ggplot2}.
#' Use \code{\link{scale_colour_paris2024_d}} and
#' \code{\link{scale_fill_paris2024_d}} for discrete scales, and use
#' \code{\link{scale_colour_paris2024_c}} and
#' \code{\link{scale_fill_paris2024_c}} for continuous scales.
#'
#' @param name Name of the colour palette. Options are \code{Logo},
#' \code{OlympicRings}, \code{ParalympicAgitos}, \code{GamesLook},
#' \code{Generation2024}, \code{Impact2024}, \code{TerreDeJeux}, \code{Tickets}
#' and \code{Flame}.
#' @param reverse Whether to reverse colour palette (TRUE) or not (FALSE,
#' default).
#' @param ... Other arguments passed on to
#' \code{\link[ggplot2]{scale_color_gradientn}}
#'
#' @return A function that returns a continuous colour scale.
#'
#' @import ggplot2
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot2::ggplot(
#'   data = iris, aes(x = Sepal.Width, y = Sepal.Length, colour = Sepal.Length)
#' ) +
#'   geom_point() +
#'   scale_colour_paris2024_c("GamesLook")
scale_colour_paris2024_c <- function(name, reverse = FALSE, ...) {
  ggplot2::scale_color_gradientn(
    colors = paris2024_palette(
      name = name, n = 256, type = "continuous", reverse = reverse
    ),
    ...
  )
}

#' @rdname scale_colour_paris2024_c
#' @export
scale_color_paris2024_c <- scale_colour_paris2024_c



#' Paris 2024 palettes for plotting with ggplot2
#'
#' Function for using \code{Paris2024Colours} colours schemes in \code{ggplot2}.
#' Use \code{\link{scale_colour_paris2024_d}} and
#' \code{\link{scale_fill_paris2024_d}} for discrete scales, and use
#' \code{\link{scale_colour_paris2024_c}} and
#' \code{\link{scale_fill_paris2024_c}} for continuous scales.
#'
#' @param name Name of the colour palette. Options are \code{Logo},
#' \code{OlympicRings}, \code{ParalympicAgitos}, \code{GamesLook},
#' \code{Generation2024}, \code{Impact2024}, \code{TerreDeJeux}, \code{Tickets}
#' and \code{Flame}.
#' @param reverse Whether to reverse colour palette (TRUE) or not (FALSE,
#' default).
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#'
#' @return A function that returns a discrete colour scale.
#'
#' @import ggplot2
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot2::ggplot(
#'   data = iris, aes(x = Species, y = Sepal.Length, fill = Species)
#' ) +
#'   geom_violin() +
#'   scale_fill_paris2024_d("GamesLook")
scale_fill_paris2024_d <- function(name, reverse = FALSE, ...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = paste0("paris2024_", name),
    palette = function(n) {
      paris2024_palette(
        name = name, n = n, type = "discrete", reverse = reverse
      )
    },
    ...
  )
}



#' Paris 2024 palettes for plotting with ggplot2
#'
#' Function for using \code{Paris2024Colours} colours schemes in \code{ggplot2}.
#' Use \code{\link{scale_colour_paris2024_d}} and
#' \code{\link{scale_fill_paris2024_d}} for discrete scales, and use
#' \code{\link{scale_colour_paris2024_c}} and
#' \code{\link{scale_fill_paris2024_c}} for continuous scales.
#'
#' @param name Name of the colour palette. Options are \code{Logo},
#' \code{OlympicRings}, \code{ParalympicAgitos}, \code{GamesLook},
#' \code{Generation2024}, \code{Impact2024}, \code{TerreDeJeux}, \code{Tickets}
#' and \code{Flame}.
#' @param reverse Whether to reverse colour palette (TRUE) or not (FALSE,
#' default).
#' @param ... Other arguments passed on to
#' \code{\link[ggplot2]{scale_color_gradientn}}
#'
#' @return A function that returns a continuous colour scale.
#'
#' @import ggplot2
#' @export
scale_fill_paris2024_c <- function(name, reverse = FALSE, ...) {
  ggplot2::scale_fill_gradientn(
    colors = paris2024_palette(
      name = name, n = 256, type = "continuous", reverse = reverse
    ),
    ...
  )
}


#' Paris 2024 palettes for plotting with ggplot2
#'
#' Function for using \code{Paris2024Colours} colours schemes in \code{ggplot2}.
#'
#' @param type Usage of palette as "continuous" or "discrete". Continuous usage
#' interpolates between colours to create a scale of values.
#' @param ... Other arguments passed on to
#' \code{\link{scale_colour_paris2024_d}} or
#' \code{\link{scale_colour_paris2024_c}}.
#'
#' @return A function that returns a colour scale.
#'
#' @import ggplot2
#' @export
scale_colour_paris2024 <- function(type = c("discrete", "continuous"), ...) {
  if (type == "discrete") {
    scale_colour_paris2024_d(...)
  } else if (type == "continuous") {
    scale_colour_paris2024_c(...)
  }
}


#' @rdname scale_colour_paris2024
#' @export
scale_color_paris2024 <- scale_colour_paris2024


#' Paris 2024 palettes for plotting with ggplot2
#'
#' Function for using \code{Paris2024Colours} colours schemes in \code{ggplot2}.
#'
#' @param type Usage of palette as "continuous" or "discrete". Continuous usage
#' interpolates between colours to create a scale of values.
#' @param ... Other arguments passed on to \code{\link{scale_fill_paris2024_d}}
#' or \code{\link{scale_fill_paris2024_c}}.
#'
#' @return A function that returns a colour scale.
#'
#' @import ggplot2
#' @export
scale_fill_paris2024 <- function(type = c("discrete", "continuous"), ...) {
  if (type == "discrete") {
    scale_fill_paris2024_d(...)
  } else if (type == "continuous") {
    scale_fill_paris2024_c(...)
  }
}
