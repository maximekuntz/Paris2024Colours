#' \code{theme_paris2024} provides a basic \bold{Paris 2024} theme
#' to use in \bold{ggplot2} commands.
#'
#' @param font_family Base font family "Paris2024-Variable".
#' You need to have "Paris2024-Variable" font installed on your device in order
#' to use it.
#' @param font_size Base font size in pt. Default to 12 pts.
#' @param text_color Text color. Default to "black".
#' @param plot_title_size Plot title font size. Default to `font_size` * 1.35.
#' @param plot_title_color Plot title font color. Default to `text_color`.
#' @param plot_title_face Plot title font face. Default to "bold".
#' @param plot_title_margin Plot title bottom margin. Default to `font_size`.
#' @param subtitle_size Plot subtitle font size. Default to `font_size`.
#' @param subtitle_color Plot subtitle font color. Default to `text_color`.
#' @param subtitle_margin Plot subtitle bottom margin. Default to `font_size` * 1.5.
#' @param strip_text_size Facet label font size. Default to `font_size` * 0.9.
#' @param strip_text_face Facet label font face. Default to "bold".
#' @param strip_text_just Facet label justification. Default to 0.
#' @param caption_size Caption font size. Default to `font_size` * 0.7.
#' @param caption_color Caption color. Default to `text_color`.
#' @param caption_margin Caption top margin. Default to `font_size`.
#' @param axis_text Logical `TRUE`/`FALSE` or `xy`. Turn on and off axis label.
#' Use `x` or `y` to have only the correspondent active. Default to `TRUE`.
#' @param axis_text_size Axis label font size. Default to `font_size` * 0.9.
#' @param axis_text_color Axis label font color. Default to `text_color`.
#' @param axis_title Logical `TRUE`/`FALSE` or `xy`. Turn on and off axis title.
#' Use `x` or `y` to have only the correspondent active. Default to `TRUE`.
#' @param axis_title_size Axis title font size. Default to `font_size` * 0.9.
#' @param axis_title_color Axis title color. Default to `text_color`.
#' @param axis Logical `TRUE`/`FALSE` or `xy`. Turn on and off axis.
#' Use `x` or `y` to have only the correspondent axis active. Don't forget to review
#' the `expand` argument of the `scale_x_*`/`scale_y_*` to avoid spacing between
#' the axis and the baseline of the plot. Default to `FALSE`.
#' @param axis_color Axis color. Default to `text_color`.
#' @param axis_ticks Logical `TRUE`/`FALSE` or `xy`. Turn on and off axis ticks.
#' Use `x` or `y` to have only the correspondent axis ticks active. Default to `FALSE`.
#' @param axis_ticks_color Axis ticks color. Default to `text_color`.
#' @param grid Logical `TRUE`/`FALSE` or a combination of `X` or `x` and `Y` or y`.
#' Turn on and off panel grids. Use `X` or `Y` for major grids,
#' and `x` or `y` for minor grid.  Default to `XY`.
#' @param legend Logical `TRUE`/`FALSE`. Turn on and off the legend.
#' Default to `TRUE`.
#' @param legend_text_size Legend key font size. Default to `font_size` * 0.9.
#' @param legend_text_color Legend key color. Default to `text_color`.
#' @param legend_title Logical `TRUE`/`FALSE`. Turn on and off the legend title.
#' Default to `FALSE`.
#' @param legend_title_size Legend title font size. Default to `font_size` * 0.9.
#' @param legend_title_color Legend title color. Default to `text_color`.
#' @param plot_tag_color Plot tag color. Default to `text_color`.
#' @param plot_margin Plot margin (specify with `ggplot2::margin()`).
#' Default to `ggplot2::margin(font_size, font_size, font_size, font_size)`.
#' @param plot_background Plot background.
#' Put "transparent" for no background color. Default to "#013854".
#' @param panel_background Panel background.
#' Put "transparent" for no background color. Default to "white".
#' @param void Logical `TRUE`/`FALSE`. If `TRUE`, all grid lines, ticks
#' and axes are removed. Default to `FALSE`.
#'
#' @return A ggplot2 theme object, the theme style.
#' @import ggplot2
#'
#' @examples \dontrun{
#' library(ggplot2)
#'
#' data(mpg, package = "ggplot2")
#'
#' ggplot(mpg, aes(displ, hwy)) +
#'   geom_point() +
#'   labs(
#'     title = "An example plot title",
#'     caption = "A caption"
#'   ) +
#'   theme_paris2024()
#' }
#' @export
theme_paris2024 <- function(
    font_family = "Paris2024-Variable",
    font_size = 12,
    text_color = "black",
    plot_title_size = ggplot2::rel(1.35),
    plot_title_color = text_color,
    plot_title_face = "bold",
    plot_title_margin = font_size,
    subtitle_size = font_size,
    subtitle_color = text_color,
    subtitle_margin = font_size * 1.5,
    strip_text_size = ggplot2::rel(0.9),
    strip_text_face = "bold",
    strip_text_just = 0,
    caption_size = ggplot2::rel(0.7),
    caption_color = text_color,
    caption_margin = font_size,
    axis_text = TRUE,
    axis_text_size = ggplot2::rel(0.9),
    axis_text_color = text_color,
    axis_title = TRUE,
    axis_title_size = ggplot2::rel(0.9),
    axis_title_color = text_color,
    axis = FALSE,
    axis_color = text_color,
    axis_ticks = FALSE,
    axis_ticks_color = text_color,
    grid = "XY",
    legend = TRUE,
    legend_text_size = ggplot2::rel(0.9),
    legend_text_color = text_color,
    legend_title = FALSE,
    legend_title_size = ggplot2::rel(0.9),
    legend_title_color = text_color,
    plot_tag_color = text_color,
    plot_margin = ggplot2::margin(font_size, font_size, font_size, font_size),
    plot_background = "white",
    panel_background = "white",
    void = FALSE) {
  # colors
  dark_text <- "#1a1a1a"
  grid_col <- "#cccccc"

  # base theme override
  ret <- ggplot2::theme_minimal(
    base_family = font_family, base_size = font_size
  ) +
    ggplot2::theme(
      text = ggplot2::element_text(family = font_family, color = text_color)
    )

  # title
  ret <- ret + ggplot2::theme(
    plot.title = ggplot2::element_text(
      family = font_family,
      size = plot_title_size,
      face = plot_title_face,
      color = plot_title_color,
      hjust = 0,
      lineheight = 1.2,
      margin = ggplot2::margin(0, 0, plot_title_margin, 0, "pt")
    ),
    plot.title.position = "plot"
  )

  # subtitle
  ret <- ret + ggplot2::theme(
    plot.subtitle = ggplot2::element_text(
      family = font_family,
      size = subtitle_size,
      face = "plain",
      color = subtitle_color,
      hjust = 0,
      lineheight = 1.2,
      margin = ggplot2::margin(0, 0, subtitle_margin, 0, "pt")
    )
  )

  # strip
  ret <- ret + ggplot2::theme(
    strip.text = ggplot2::element_text(
      family = font_family,
      size = strip_text_size,
      face = strip_text_face,
      color = dark_text,
      hjust = strip_text_just
    )
  )

  # caption
  ret <- ret + ggplot2::theme(
    plot.caption = ggplot2::element_text(
      family = font_family,
      size = caption_size,
      face = "plain",
      color = caption_color,
      hjust = 0,
      lineheight = 1.1,
      margin = ggplot2::margin(caption_margin, 0, 0, 0, "pt"),
    ),
    plot.caption.position = "plot"
  )

  # axis text
  if (inherits(axis_text, "character") | axis_text == TRUE) {
    ret <- ret + ggplot2::theme(
      axis.text = ggplot2::element_text(
        size = axis_text_size, color = axis_text_color
      )
    )
    if (inherits(axis_text, "character")) {
      axis_text <- tolower(axis_text)
      if (regexpr("x", axis_text)[1] < 0) {
        ret <- ret + ggplot2::theme(axis.text.x = ggplot2::element_blank())
      } else {
        ret <- ret + ggplot2::theme(
          axis.text.x = ggplot2::element_text(
            size = axis_text_size, color = axis_text_color
          )
        )
      }
      if (regexpr("y", axis_text)[1] < 0) {
        ret <- ret + ggplot2::theme(axis.text.y = ggplot2::element_blank())
      } else {
        ret <- ret + ggplot2::theme(
          axis.text.y = ggplot2::element_text(
            size = axis_text_size, color = axis_text_color
          )
        )
      }
    } else {
      ret <- ret + ggplot2::theme(
        axis.text.x = ggplot2::element_text(
          size = axis_text_size, color = axis_text_color
        ),
        axis.text.y = ggplot2::element_text(
          size = axis_text_size, color = axis_text_color
        )
      )
    }
  } else {
    ret <- ret + ggplot2::theme(axis.text = ggplot2::element_blank())
  }

  # axis title
  if (inherits(axis_title, "character") | axis_title == TRUE) {
    ret <- ret + ggplot2::theme(
      axis.title = ggplot2::element_text(
        size = axis_title_size, color = axis_title_color
      )
    )
    if (inherits(axis_title, "character")) {
      axis_title <- tolower(axis_title)
      if (regexpr("x", axis_title)[1] < 0) {
        ret <- ret + ggplot2::theme(axis.title.x = ggplot2::element_blank())
      } else {
        ret <- ret + ggplot2::theme(
          axis.title.x = ggplot2::element_text(
            size = axis_title_size, color = axis_title_color
          )
        )
      }
      if (regexpr("y", axis_title)[1] < 0) {
        ret <- ret + ggplot2::theme(axis.title.y = ggplot2::element_blank())
      } else {
        ret <- ret + ggplot2::theme(
          axis.title.y = ggplot2::element_text(
            size = axis_title_size, color = axis_title_color
          )
        )
      }
    } else {
      ret <- ret + ggplot2::theme(
        axis.title.x = ggplot2::element_text(
          size = axis_title_size, color = axis_title_color
        ),
        axis.title.y = ggplot2::element_text(
          size = axis_title_size, color = axis_title_color
        )
      )
    }
  } else {
    ret <- ret + ggplot2::theme(axis.title = ggplot2::element_blank())
  }

  # void
  if (void) {
    ret <- ret + ggplot2::theme(
      line = ggplot2::element_blank(),
      rect = ggplot2::element_blank(),
      axis.line = ggplot2::element_blank(),
      axis.line.x = NULL,
      axis.line.y = NULL,
      axis.text = ggplot2::element_blank(),
      axis.text.x = NULL,
      axis.text.x.top = NULL,
      axis.text.y = NULL,
      axis.text.y.right = NULL,
      axis.ticks = ggplot2::element_blank(),
      axis.ticks.length = grid::unit(0, "pt"),
      axis.title = ggplot2::element_blank(),
      axis.title.x = NULL,
      axis.title.x.top = NULL,
      axis.title.y = NULL,
      axis.title.y.right = NULL
    )
  } else {
    # axis line
    if (inherits(axis, "character") | axis == TRUE) {
      ret <- ret + ggplot2::theme(
        axis.line = ggplot2::element_line(
          color = axis_color, linewidth = rel(0.8)
        )
      )
      if (inherits(axis, "character")) {
        axis <- tolower(axis)
        if (regexpr("x", axis)[1] < 0) {
          ret <- ret + ggplot2::theme(axis.line.x = ggplot2::element_blank())
        } else {
          ret <- ret + ggplot2::theme(
            axis.line.x = ggplot2::element_line(color = axis_color)
          )
        }
        if (regexpr("y", axis)[1] < 0) {
          ret <- ret + ggplot2::theme(axis.line.y = ggplot2::element_blank())
        } else {
          ret <- ret + ggplot2::theme(
            axis.line.y = ggplot2::element_line(color = axis_color)
          )
        }
      } else {
        ret <- ret + ggplot2::theme(
          axis.line.x = ggplot2::element_line(color = axis_color),
          axis.line.y = ggplot2::element_line(color = axis_color)
        )
      }
    } else {
      ret <- ret + ggplot2::theme(axis.line = ggplot2::element_blank())
    }

    # axis ticks
    if (inherits(axis_ticks, "character") | axis_ticks == TRUE) {
      ret <- ret + ggplot2::theme(
        axis.ticks.length = grid::unit(font_size / 2, "pt"),
        axis.ticks = ggplot2::element_line(
          color = grid_col, linewidth = rel(.6)
        )
      )
      if (inherits(axis_ticks, "character")) {
        axis_ticks <- tolower(axis_ticks)
        if (regexpr("x", axis_ticks)[1] < 0) {
          ret <- ret + ggplot2::theme(axis.ticks.x = ggplot2::element_blank())
        } else {
          ret <- ret + ggplot2::theme(
            axis.ticks.x = ggplot2::element_line(color = grid_col)
          )
        }
        if (regexpr("y", axis_ticks)[1] < 0) {
          ret <- ret + ggplot2::theme(axis.ticks.y = ggplot2::element_blank())
        } else {
          ret <- ret + ggplot2::theme(
            axis.ticks.y = ggplot2::element_line(color = grid_col)
          )
        }
      } else {
        ret <- ret + ggplot2::theme(
          axis.ticks.x = ggplot2::element_line(color = grid_col),
          axis.ticks.y = ggplot2::element_line(color = grid_col)
        )
      }
    } else {
      ret <- ret + ggplot2::theme(axis.ticks = ggplot2::element_blank())
    }

    # grid
    if (inherits(grid, "character") | grid == TRUE) {
      ret <- ret + ggplot2::theme(
        panel.grid = ggplot2::element_line(color = grid_col, linewidth = rel(.6)),
        panel.grid.major = ggplot2::element_line(color = grid_col),
        panel.grid.minor = ggplot2::element_line(color = grid_col)
      )

      if (inherits(grid, "character")) {
        if (regexpr("X", grid)[1] < 0) {
          ret <- ret + ggplot2::theme(panel.grid.major.x = ggplot2::element_blank())
        }
        if (regexpr("Y", grid)[1] < 0) {
          ret <- ret + ggplot2::theme(panel.grid.major.y = ggplot2::element_blank())
        }
        if (regexpr("x", grid)[1] < 0) {
          ret <- ret + ggplot2::theme(panel.grid.minor.x = ggplot2::element_blank())
        }
        if (regexpr("y", grid)[1] < 0) {
          ret <- ret + ggplot2::theme(panel.grid.minor.y = ggplot2::element_blank())
        }
      }
    } else {
      ret <- ret + ggplot2::theme(panel.grid = ggplot2::element_blank())
    }
  }

  # legend
  if (!legend) {
    ret <- ret + ggplot2::theme(legend.position = "none")
  } else {
    ret <- ret + ggplot2::theme(
      legend.text = ggplot2::element_text(
        size = legend_text_size, color = legend_text_color
      ),
      legend.position = "top",
      legend.justification = 0
    )
    if (!legend_title) {
      ret <- ret + ggplot2::theme(legend.title = ggplot2::element_blank())
    } else {
      ret <- ret + ggplot2::theme(
        legend.title = ggplot2::element_text(
          size = legend_title_size, color = legend_title_color, face = "bold"
        )
      )
    }
  }

  # tag
  ret <- ret + ggplot2::theme(
    plot.tag = ggplot2::element_text(
      size = font_size, color = plot_tag_color, hjust = 0, vjust = 1
    ),
    plot.tag.position = c(0, 1)
  )

  # margin
  ret <- ret + ggplot2::theme(plot.margin = plot_margin)

  # background
  ret <- ret + ggplot2::theme(
    plot.background = ggplot2::element_rect(
      fill = plot_background, color = plot_background
    ),
    panel.background = ggplot2::element_rect(
      fill = panel_background, color = panel_background
    )
  )

  ret
}

#' \code{theme_paris2024_look} provides \bold{Paris 2024} theme inspired by the
#' Look of the Games
#'
#' @examples \dontrun{
#' library(ggplot2)
#'
#' data(mpg, package = "ggplot2")
#'
#' ggplot(mpg, aes(displ, hwy)) +
#'   geom_point() +
#'   labs(
#'     title = "AN EXAMPLE PLOT TITLE",
#'     subtitle = "A SUBTITLE",
#'     caption = "A caption"
#'   ) +
#'   theme_paris2024_look()
#' }
#' @export
theme_paris2024_look <- function() {
  theme_paris2024(
    plot_title_color = "white",
    plot_title_face = "bold.italic",
    subtitle_color = "#18B8B0",
    caption_color = "#F3A5C8",
    axis_text_color = "#F3A5C8",
    axis_title_color = "#F3A5C8",
    axis_color = "#F3A5C8",
    axis_ticks_color = "#F3A5C8",
    legend_title_color = "#18B8B0",
    legend_text_color = "#18B8B0",
    plot_background = "#013854",
    panel_background = "white"
  )
}

#' Update matching font defaults for text geoms
#'
#' Updates [ggplot2::geom_label] and [ggplot2::geom_text] font defaults
#' @importFrom ggrepel GeomTextRepel GeomLabelRepel
#'
#' @param family Font family, default "Lato".
#' @param face Font face, default "plain".
#' @param size font size in mm.
#' @param color Font color, default "#1a1a1a".
#'
#' @noRd
update_geom_font_defaults <- function(
    family = if (paris2024_font_installed()) "Paris2024-Variable" else "sans",
    face = "plain",
    size = 3.5,
    color = "#1a1a1a") {
  ggplot2::update_geom_defaults(
    "text",
    list(family = family, face = face, size = size, color = color)
  )
  ggplot2::update_geom_defaults(
    "label",
    list(family = family, face = face, size = size, color = color)
  )
  ggplot2::update_geom_defaults(
    "text_repel",
    list(family = family, face = face, size = size, color = color)
  )
  ggplot2::update_geom_defaults(
    "label_repel",
    list(family = family, face = face, size = size, color = color)
  )
}
