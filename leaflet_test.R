

library(leaflet)

my_map <- leaflet() %>%
  addTiles() %>%
  addMarkers(lat = 31.7584, lng = 72.9165, popup = "My Office") %>%
  addCircles(weight = 1, radius = 1000, lat = 31.7584, lng = 72.9165, popup = "My Office")

my_map