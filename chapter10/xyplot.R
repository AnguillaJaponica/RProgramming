# 2次元散布図
xyplot(
  Sepal.Length ~ Sepal.Width,
  data = iris,
  groups = Species,
  auto.key = list(points = FALSE, rectangles = TRUE, space = "right")
  )