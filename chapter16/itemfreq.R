library(ggplot2)
# 単一アイテムの支持度のヒストグラム
p <- ggplot(data=itemfreq, aes(x=support, y=..count..)) +
       geom_histogram()
print(p)