# 2x1の描画領域を用意する
par(mfrow = c(2, 1), mar = c(0.6, 4.1, 0.6, 2.1), oma = c(4.1, 0, 0, 0))

# 上パネルのプロット
plot(sin, xlim = c(0, 2 * pi), axes = FALSE, xlab = "", ylab = "")
# y 軸を描く
axis(2, at = c(-1, 0, 1), las = 1)

# 下パネルのプロット
plot(cos, xlim = c(0, 2 * pi), axes = FALSE, xlab = "", ylab = "")
# y 軸を描く
axis(2, at = c(-1, 0, 1), las = 1)

# 2プロットに共通のx軸を描画する
axis(
    1,
    at = seq(0, 2, by = 0.5) * pi,
    labels = c(
        0,
        expression(paste(frac(1, 2), pi)),
        expression(pi),
        expression(paste(frac(3, 2), pi)),
        expression(paste(2, pi))
    ),
    outer = TRUE,
    padj = 0.5
)