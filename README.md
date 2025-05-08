
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fortunes

<!-- badges: start -->
<!-- badges: end -->

The goal of fortunes is for the user to select three words out of the
provided selections and then receive a fortune.

## Installation

You can install the development version of fortunes from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("TanishaChetty/fortunes")
```

## Usage

When using the `fortunes()` function an argument is unneeded, but is an
option! Without an argument, the function will give you three prompts
one after another in which you will select a word out of those provided
for both of them. Make note that it is case sensitive. From there, the
function will give you a fortune from the built-in data set `fortunes`.
All you need to do to properly run the function is shown below:

``` r
library(fortunes)
fortunes()
#> GET YOUR FORTUNE TOLD!!! Enter one of the following words: luck, treasure, omen, destiny...
#> Error in fortunes(): Woah! Try one of the words listed above maybe...
```

If you wish to choose the words from the lists and put them into the
argument yourself you can do the following:

``` r
library(fortunes)
fortunes(fortuney_words = "luck", awesome_words = "sparkle", evil_words = "brimstone")
#> [1] "The greatest risk is not taking one."
```
