library(ggplot2)
library(dplyr)
# 年ごとの電話の件数のプロット
p <- ggplot(phones %>% as.data.frame, aes(x = year, y = calls)) + geom_point()
print(p)