library(ggplot2)
# 変数の重要度のプロット
p <- ggplot(data=vi, aes(x=var, y=importance)) +
       geom_bar(stat="identity") +
         theme(axis.text.x=element_text(angle=90, hjust=1))
print(p)