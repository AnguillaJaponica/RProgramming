# 関数をプロットする
fun <- function(x) {
    x^3 - 3 * x + 1
}
plot(fun, xlim = c(-3, 3), main = "関数")