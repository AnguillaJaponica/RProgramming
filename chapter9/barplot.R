# 余白とラベルのフォントサイズを調整する
par(mar = c(7.1, 4.1, 4.1, 2.1), cex.axis = 0.8, las = 2L)
# 棒グラフをプロットする
barplot(
    USArrests$Murder,
    names.arg = rownames(USArrests),     # x軸の項目ラベル
    ylab = "逮捕者数 [/10 万人]",        # y軸のラベル
    main = "州ごとの殺人による逮捕者数"  # グラフタイトル
)