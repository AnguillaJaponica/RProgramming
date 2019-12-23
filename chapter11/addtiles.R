data_sake <- read.csv("https://raw.githubusercontent.com/dichika/mydata/master/sake.csv", as.is=TRUE, fileEncoding = "UTF-8")
library("leaflet")
leaflet(data = data_sake) %>%
  addTiles()
