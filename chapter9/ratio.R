# 集計データを百分率に変換する
ratio <- count / sum(count) * 100
# 棒グラフ（帯グラフ）をプロットする
par(mar = c(5.1, 2.1, 4.1, 6.1))
barplot(
    as.matrix(ratio),
    horiz = TRUE,
    main = "UC Berkeley の学部別大学院進学希望者",
    xlab = "割合 (%)",
    xpd = TRUE,
    legend.text = names(ratio),
    args.legend = list(
        x = 105,
        xjust = 0
    )
)