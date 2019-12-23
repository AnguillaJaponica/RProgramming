# 棒を並べる
barplot(
    data,
    beside = TRUE,  # 棒を並べる
    names.arg = colnames(data),      # x 軸の項目ラベル
    ylab = "逮捕者数 [/10万人]",     # y軸のラベル
    main = "州ごとの逮捕者数",       # グラフタイトル
    legend.text = rownames(data),    # 凡例
    args.legend = list(              # 凡例の調整
        y = max(data),
        yjust = 0,
        bty = "n",
        horiz = TRUE
    )
)