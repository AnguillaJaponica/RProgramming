# 描画領域を作成する
par(mar = rep(0.1, 4))
plot.new()
box()

# 出力データを作成する
x <- runif(50)
y <- runif(50)

# 点を描画する
points(x, y)
rug(x, side = 3)
rug(y, side = 4)