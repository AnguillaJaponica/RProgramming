# geom_tile関数を用いた相関係数行列のヒートマップのプロット
p <- ggplot(data = cor.Boston.l, aes(x = item1, y = item2, fill = corr)) +
    geom_tile() + scale_fill_gradient(low = "white", high = "red")
print(p)