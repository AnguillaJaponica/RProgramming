# 描画領域を作成する
par(mar = rep(4.1, 4))
plot.new()
box()

# text 関数で文字列を描画する
text(0.5, 0.5, "中")
text(0.5, 0.5, c("下", "左", "上", "右"), pos = 1:4)
text(0.5, 0.5, paste0("かなり", c("下", "左", "上", "右")), pos = 1:4, offset = 5)

# mtext 関数で文字列を描画する。
mtext(paste0("外側", c("下", "左", "上", "右")), side = 1:4)
mtext(paste0("外側かなり", c("下", "左", "上", "右")), side = 1:4, line = 3)