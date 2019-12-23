library(ggplot2)
p <- ggplot(data = cars.with.widths,
            aes(x = speed, y = dist, shape = cluster, fill = sil_width)) +
       geom_point()
print(p)