# data-raw/data_download_script.r

# how data is got into rnaturalearth
# reproducible workflow allowing package data to be updated e.g. when there are updates to Natural Earth.
# just by sourcing this script

# one example file in rnaturalearth
# scale 110 and 50 files in rntauralearthdata
# scale 10 files in rntauralearthhires

library(rnaturalearth)

countries10 <- ne_download(scale = 10, type = "countries", category = "cultural")
map_units10 <- ne_download(scale = 10, type = "map_units", category = "cultural")
sovereignty10 <- ne_download(scale = 10, type = "sovereignty", category = "cultural")
states10 <- ne_download(scale = 10, type = "states", category = "cultural")
coastline10 <- ne_download(scale = 10, type = "coastline", category = "physical")

usethis::use_data(countries10, compress = "xz", overwrite = TRUE)
usethis::use_data(map_units10, compress = "xz", overwrite = TRUE)
usethis::use_data(sovereignty10, compress = "xz", overwrite = TRUE)
usethis::use_data(states10, compress = "xz", overwrite = TRUE)
usethis::use_data(coastline10, compress = "xz", overwrite = TRUE)
