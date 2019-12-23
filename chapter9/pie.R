# 学部ごとの人数を集計する
count <- apply(UCBAdmissions, 3L, sum)
# 円グラフをプロットする
pie(
    count,
    main = "UC Berkeleyの学部別大学院進学希望者",
    col = gray.colors(length(count))  # グレースケールで表示
)