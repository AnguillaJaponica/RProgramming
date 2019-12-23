library(ggplot2)
# 偽陽性率(fpr)と真陽性率(tpr)の算出
fpr.tpr <- data.frame(fpr = c(0, 0, 0, 1, 1, 2, 3, 3, 3, 3, 4, 5, 5, 6,
    7, 8, 8, 8, 9, 10, 10, 11, 12, 12, 13, 14)/14, tpr = c(0, 1, 2, 2,
    3, 3, 3, 4, 5, 6, 6, 6, 7, 7, 7, 7, 8, 9, 9, 9, 10, 10, 10, 11, 11,
    11)/11)
p <- ggplot(data = fpr.tpr, aes(x = fpr, y = tpr)) + geom_line() + geom_point() +
    geom_abline(slope = 1, intercept = 0) + xlab("偽陽性率") + ylab("真陽性率")
print(p)