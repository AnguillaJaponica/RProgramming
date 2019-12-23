# 12時から時計回りに円グラフを作成する。
pie(
    count,
    clockwise = TRUE,
    main = "UC Berkeley の学部別大学院進学希望者",
    col = gray.colors(length(count))  # グレースケールで表示
)