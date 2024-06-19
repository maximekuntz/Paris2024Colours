
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
#> [1] "Logo"           "OlympicRings"   "GamesLook"      "Impact2024"    
#> [5] "Generation2024" "TerreDeJeux"    "Tickets"        "Flame"
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
