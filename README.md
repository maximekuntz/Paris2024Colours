
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Paris2024Colours

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/Paris2024Colours)](https://CRAN.R-project.org/package=Paris2024Colours)
[![](https://img.shields.io/badge/DOI-10.32614/CRAN.package.Paris2024Colours-1f57b6?style=flat&link=https://doi.org/10.32614/CRAN.package.Paris2024Colours)](https://doi.org/10.32614/CRAN.package.Paris2024Colours)
<!-- badges: end -->

Palettes inspired by Paris 2024 Olympic and Paralympic Games.

This package is inspired by the
[`PNWColors`](https://github.com/jakelawlor/PNWColors) and
[`wesanderson`](https://github.com/karthik/wesanderson) packages.

## Installation

You can install the package from CRAN with:

``` r
install.packages("Paris2024Colours")
```

or the development version of Paris2024Colours from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("maximekuntz/Paris2024Colours")
```

## Usage

``` r
library("Paris2024Colours")

# See all palettes
names(paris2024_palettes)
#>  [1] "Logo"             "OlympicRings"     "ParalympicAgitos" "GamesLook"       
#>  [5] "LookDesJeux1"     "LookDesJeux2"     "LookDesJeux3"     "Impact2024"      
#>  [9] "Generation2024"   "TerreDeJeux"      "Tickets"          "Flame"
```

## Palettes

``` r
paris2024_palette("Logo")
```

<img src="man/figures/README-logo-1.png" width="100%" />

``` r
paris2024_palette("OlympicRings")
```

<img src="man/figures/README-olympic_rings-1.png" width="100%" />

``` r
paris2024_palette("ParalympicAgitos")
```

<img src="man/figures/README-paralympic_agitos-1.png" width="100%" />

``` r
paris2024_palette("GamesLook")
```

<img src="man/figures/README-games_look-1.png" width="100%" />

``` r
paris2024_palette("Generation2024")
```

<img src="man/figures/README-generation2024-1.png" width="100%" />

``` r
paris2024_palette("Impact2024")
```

<img src="man/figures/README-impact2024-1.png" width="100%" />

``` r
paris2024_palette("TerreDeJeux")
```

<img src="man/figures/README-terre_de_jeux-1.png" width="100%" />

``` r
paris2024_palette("Tickets")
```

<img src="man/figures/README-tickets-1.png" width="100%" />

``` r
paris2024_palette("Flame")
```

<img src="man/figures/README-flame-1.png" width="100%" />

## Theme

Apply a theme to your {ggplot2} plot with `theme_paris2024_look()` (or
even have more configuration parameters with `theme_paris2024()`).

``` r
library(ggplot2)

data(mpg, package = "ggplot2")

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  labs(
    title = "A TITLE",
    subtitle = "A SUBTITLE",
    caption = "A caption"
  ) +
  theme_paris2024_look()
#> Warning in grid.Call(C_stringMetric, as.graphicsAnnot(x$label)): famille de
#> police introuvable dans la base de données des polices Windows
#> Warning in grid.Call(C_stringMetric, as.graphicsAnnot(x$label)): famille de
#> police introuvable dans la base de données des polices Windows
#> Warning in grid.Call(C_stringMetric, as.graphicsAnnot(x$label)): famille de
#> police introuvable dans la base de données des polices Windows
#> Warning in grid.Call(C_stringMetric, as.graphicsAnnot(x$label)): famille de
#> police introuvable dans la base de données des polices Windows
#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :
#> famille de police introuvable dans la base de données des polices Windows
#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :
#> famille de police introuvable dans la base de données des polices Windows
#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :
#> famille de police introuvable dans la base de données des polices Windows
#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :
#> famille de police introuvable dans la base de données des polices Windows
#> Warning in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :
#> famille de police introuvable dans la base de données des polices Windows
#> Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :
#> famille de police introuvable dans la base de données des polices Windows
#> Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :
#> famille de police introuvable dans la base de données des polices Windows
#> Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :
#> famille de police introuvable dans la base de données des polices Windows
#> Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :
#> famille de police introuvable dans la base de données des polices Windows
#> Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :
#> famille de police introuvable dans la base de données des polices Windows
```

<img src="man/figures/README-theme-1.png" width="100%" />
