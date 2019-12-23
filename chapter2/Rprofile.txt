# ヒラギノ角ゴProを使うフォントファミリーjpfontを作成する
grDevices::quartzFonts(jpfont = grDevices::quartzFont(c(
	 "Hiragino Kaku Gothic Pro W3",    # 標準
	 "Hiragino Kaku Gothic Pro W6",    # ボールド
	 "Hiragino Kaku Gothic Pro W3",    # イタリック
	 "Hiragino Kaku Gothic Pro W6"     # ボールドイタリック
)))
# 新しいプロットが作成される際にjpfontを使う
setHook("plot.new", function() {
	 par(family = "jpfont")
})
setHook("persp", function() {
	 par(family = "jpfont")
})