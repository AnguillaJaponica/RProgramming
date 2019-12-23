data_sake <- read.csv("https://raw.githubusercontent.com/dichika/mydata/master/sake.csv", as.is=TRUE, fileEncoding = "UTF-8")
library("leaflet")
leaflet(data = data_sake) %>%
  addCircleMarkers(
             lat = ~lat,
             lng = ~lng,
             radius = 10) %>%
  addPolylines(lat = ~lat,
               lng = ~lng) %>%
  addPopups(lat= ~lat,
            lng= ~lng,
            popup=~name,
            options=popupOptions(minWidth=10)
             ) %>%
  addTiles()
