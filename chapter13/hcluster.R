# carsデータセットのロード
data(cars)
# データ間の距離の算出
dist.cars <- dist(cars)
# 階層的クラスタリングの実行
hc.cars <- hclust(dist.cars)
# クラスタリングの可視化
plot(hc.cars)