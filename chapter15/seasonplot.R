library(forecast)
# AirPassengersデータセットの時系列プロット
seasonplot(AirPassengers, col = rainbow(12), season.labels = TRUE, year.labels = TRUE,
    year.labels.left = TRUE, cex = 0.8)