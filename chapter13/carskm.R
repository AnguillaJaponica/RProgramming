library(dplyr)
library(ggplot2)
# クラスタ番号の結合
cars.km <- cars %>% mutate(cluster = factor(km.cars$cluster, levels = 1:3))
# 点の色をクラスタ番号とする散布図のプロット
p <- ggplot(data = cars.km, aes(x = speed, y = dist, colour = cluster,
    shape = cluster)) + geom_point()
print(p)