# 余白を調整する
par(mar = c(5.1, 6.1, 4.1, 2.1), las = 1L, xpd = TRUE)
# 棒グラフを横向きでプロットする
barplot(
    data,
    horiz = TRUE,   # 横向きにする
    xlab = "逮捕者数 [/10万人]",     # x軸のラベル
    main = "州ごとの逮捕者数",       # グラフタイトル
    legend.text = rownames(data),    # 凡例
    args.legend = list(              # 凡例の調整
        y = ncol(data) + 1,
        yjust = 0,
        bty = "n",
        horiz = TRUE
    )
)