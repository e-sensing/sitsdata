# function called when package is loaded
.onAttach <- function(lib, pkg){
  packageStartupMessage(
      sprintf("Loaded sitsdata data sets v%s. Use citation(\"sitsdata\") for use in publication.",
              utils::packageDescription("sitsdata")$Version)
      )
}

# imports tibble to print a nice sits tibble.
#' @importFrom tibble tibble
NULL
