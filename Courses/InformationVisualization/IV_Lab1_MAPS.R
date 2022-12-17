#installing a package
install.packages("ggplot2")
#for more than one packages
install.packages(c("pack1", "pack2","pack3"))
#loading a package
library(ggplot2)
search()
install.packages("leaflet")
library(leaflet)

m <- leaflet() 
  addTiles()   # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
m  # Print the map

install.packages("maps")
library(maps)
mapStates = map("usa", fill = TRUE, plot = FALSE)
leaflet(data = mapStates) %>% addTiles() %>%
  addPolygons(fillColor = topo.colors(10, alpha = NULL), stroke = FALSE)

