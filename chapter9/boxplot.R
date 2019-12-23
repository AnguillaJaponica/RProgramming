# 箱ひげ図をプロットする
boxplot(
    Sepal.Length ~ Species, data = iris,
    xlab = "種",
    ylab = "がく片の長さ[cm]",
    main = "アヤメの種ごとのがく辺の長さ"
)