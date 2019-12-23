# 線形モデルオブジェクトをプロットする
# グラフが 4 つ表示されるので 2x2 のパネルを用意しておく
par(mfrow = c(2L, 2L), mar = c(4.1, 3.1, 2.1, 1.1))
model <- lm(Response ~ Predictor, data = df)
plot(model)