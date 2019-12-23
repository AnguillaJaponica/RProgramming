library(fpp)
library(forecast)
# AirPassengersデータセットの自己相関係数
tsdisplay(AirPassengers, main = "AirPassengersデータセット")
# sunspotデータセットの自己相関係数
tsdisplay(sunspot.year, main = "sunspotデータセット")
# lhデータセットの自己相関係数
tsdisplay(lh, main = "lhデータセット")
# ランダムウォークの自己相関係数
set.seed(71)
x <- cumsum(rnorm(100))
tsdisplay(x, main = "ランダムウォーク")