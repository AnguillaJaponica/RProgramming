# 描画領域を作成する
par(mar = rep(0.1, 4))
plot.new()

# ラスタ画像を描画する
colors <- matrix(c("#FF0000", "#0000FF", "#00FF00", "#FFFF00"), 2, 2)
image <- as.raster(colors)
rasterImage(image, 0, 0, 0.2, 0.2, interpolate = FALSE)
rasterImage(image, 0.2, 0.2, 1, 1, angle = -20, interpolate = TRUE)