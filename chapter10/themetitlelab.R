# タイトルとラベルの設定
#   日本語を使う場合 base_family に次の値を設定
#     Windows: "Meiryo"
#     Mac: "Osaka"
#     Linux: システムにインストール済みの日本語フォント

g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(colour = Sepal.Width, shape = Species)) +
  theme_bw(base_family = "Osaka") +
  ggtitle("タイトル") +
  xlab("X 軸") +
  ylab("Y 軸") +
  labs(colour = "色") +
  labs(shape = "形")

# グラフの描画
print(g)