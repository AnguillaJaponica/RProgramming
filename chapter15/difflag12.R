library(forecast)
# 乗客数の差分の自己相関係数(ラグ=12)
tsdisplay(diff(AirPassengers, 12))