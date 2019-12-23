library(dplyr)
library(ggplot2)
# carsデータセットにデータ番号とクラスタ番号を追加
cars.with.No.clus <- cars %>%
                     mutate(No=seq(nrow(.)), cluster=factor(pam.cars$cluster))
p <- ggplot(data=cars.with.No.clus, aes(x=speed, y=dist, color=cluster)) +
       geom_text(aes(label=No))
print(p)