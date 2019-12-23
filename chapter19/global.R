# global.R
library(ggplot2)

# ggplot2のテーマを変更する
if (capabilities("aqua")) {  # Macの場合
    theme_set(theme_bw("Osaka"))
} else {
    theme_set(theme_bw())
}