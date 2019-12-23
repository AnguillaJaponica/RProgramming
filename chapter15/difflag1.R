# 乗客数の差分の自己相関係数(ラグ=12の後にラグ=1で差分化)
tsdisplay(diff(diff(AirPassengers, 12)))