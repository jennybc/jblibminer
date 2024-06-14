
<!-- README.md is generated from README.Rmd. Please edit that file -->

# jblibminer

<!-- badges: start -->
<!-- badges: end -->

The goal of jblibminer is to summarize the packages you have installed
in your R libraries.

## Installation

You can install the development version of jblibminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("jennybc/jblibminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(jblibminer)

lib_summary()
#>                                                                Library
#> 1 /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/library
#> 2                     /private/tmp/RtmpDlkMGV/temp_libpathc48852e216d9
#> 3                             /Users/jenny/Library/R/arm64/4.4/library
#>   n_packages
#> 1         29
#> 2          1
#> 3        197
```

``` r

lib_summary(sizes = TRUE)
#>                                                                Library
#> 1 /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/library
#> 2                     /private/tmp/RtmpDlkMGV/temp_libpathc48852e216d9
#> 3                             /Users/jenny/Library/R/arm64/4.4/library
#>   n_packages  lib_size
#> 1         29  75816439
#> 2          1     14328
#> 3        197 333671705
```
