library(forecast)
# 残債の自己相関係数、偏自己相関係数のプロット
tsdisplay(arma.lh$resid)