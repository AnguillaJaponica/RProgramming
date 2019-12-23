# 3次元散布図
cloud(
  Sepal.Length ~ Sepal.Width * Petal.Length,
  data = iris,
  groups = Species,
  auto.key = list(points = FALSE, rectangles = TRUE, space = "right")
)