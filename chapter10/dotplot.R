dotplot(
  carat ~ cut,
  data = diamonds,
  auto.key = list(points = FALSE, rectangles = TRUE, space = "right")
)