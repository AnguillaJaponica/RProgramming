# ギャップ統計量のプロット
library(dplyr)
library(ggplot2)
gap <- gap.kmeans.cars$Tab %>% as.data.frame %>% mutate(k = seq(k.max))
p <- ggplot(data = gap, aes(x = k, y = gap)) + geom_line() + geom_point() + scale_x_discrete()
print(p)