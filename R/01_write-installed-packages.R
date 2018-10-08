## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need
library(dplyr)
library(readr)
library(here)
pk <- as_data_frame(installed.packages())

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

pk <- dplyr::select(pk, Package, LibPath, Version, Priority, Built)

## write this data frame to data/installed-packages.csv
readr::write_csv(pk, here("data", "installed-packages.csv"))

