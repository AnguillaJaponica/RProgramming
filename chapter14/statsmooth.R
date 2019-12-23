library(ggplot2)
data(cars)
p <- ggplot(data = cars, aes(x = speed, y = dist)) + stat_smooth(method = "lm") + geom_point()
print(p)