library(forecast)
# 残差の自己相関係数、偏自己相関係数のプロット
tsdisplay(model.ar$resid)