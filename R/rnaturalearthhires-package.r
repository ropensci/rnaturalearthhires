#' rnaturalearthhires : high resolution world vector maps from Natural Earth
#'
#' Facilitates world mapping by making \href{http://www.naturalearthdata.com/}{Natural Earth} map data more easily available to R users.
#'
#' @name rnaturalearthhires
#' @seealso  \code{\link[rnaturalearth]{ne_countries}} \code{\link[rnaturalearth]{ne_states}} \code{\link[rnaturalearth]{ne_download}}
"_PACKAGE"

# Hide variables from R CMD check
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c("countries10",
                           "map_units10",
                           "sovereignty10",
                           "coastline10",
                           "states10"
                           ))
}
