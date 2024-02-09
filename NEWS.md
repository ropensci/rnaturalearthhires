# rnaturalearthhires (development version)

# rnaturalearthhires 1.0.0

## Breaking changes

This is a breaking changes release that ends support to `sp` object in favour of more modern interfaces (`sf` and `terra`). Although that `sp` is still available on CRAN, it is no longer being actively developed (https://geocompx.org/post/2023/rgdal-retirement/). This is the main reason that motivated the choice to transition toward `sf` (the default) and `terra`.

Users can choose either get an `sf` or `SpatVector` using the `returnclass` argument:

```
ne_countries(returnclass = "sf")
ne_countries(returnclass = "sv")
```

All spatial objects in the package (`countries10`, `map_units10`, `sovereignty10`, `states10`, `coastline10`) are now objects of class `sf`.

If changing the return type to `sf` creates too many problems to your existing code, you can still convert it back to `sp` :

```

# option 1
sf::as_Spatial(ojbcountries)


# option 2
as(countries, "Spatial")
```

More information about the retirement of `rgdal`, `rgeos` and `maptools`: https://r-spatial.org/r/2022/04/12/evolution.html

# rnaturalearthhires 0.2.1 2023-03-06

- update data to [Natural Earth v5.1.2](https://github.com/nvkelso/natural-earth-vector/blob/master/CHANGELOG).

- add github action to automate data updates
