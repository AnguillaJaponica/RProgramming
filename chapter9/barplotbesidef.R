# データの形式を調整する
# barplot関数はベクトルまたは行列形式のデータでなければならない
data <- t(as.matrix(USArrests))
# 表示する項目が多いので減らす
data <- data[, 1:5]

# 余白とラベルのフォントサイズを調整する
par(mar = c(6.1, 4.1, 4.1, 2.1), las = 2L, xpd = TRUE)
# 棒を積み上げる
barplot(
    data,
    beside = FALSE,  # 棒を積み上げる
    names.arg = colnames(data),      # x軸の項目ラベル
    ylab = "逮捕者数 [/10 万人]",    # y軸のラベル
    main = "州ごとの逮捕者数",       # グラフタイトル
    legend.text = rownames(data),    # 凡例
    args.legend = list(              # 凡例の調整
        y = max(colSums(data)),
        yjust = 0,
        bty = "n",
        horiz = TRUE
    )
)