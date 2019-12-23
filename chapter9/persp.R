# 3次元プロットを行う
x <- seq(-3, 3, length.out = 100)
y <- x
z <- outer(x, y, function(x, y) { cos(-(x^2 + y^2 - x * y)) * exp(-(x^2 + y^2) / 2) })
par(mar = rep(2, 4), mfcol = c(3, 3))
# 見る角度を変えながらプロットする
for (theta in c(-90, -45, 0)) {
    for (phi in c(45, 0, -45)) {
        persp(x, y, z, theta = theta, phi = phi)
    }
}