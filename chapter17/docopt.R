# docopt パッケージをロードする
library(docopt)

doc <- "
乱数生成スクリプト

Usage:
 gen_rand.R (uniform | normal) [-n <n>] [-o <file>]
 gen_rand.R -h | --help

Options:
 -h --help  ヘルプを表示する
 -n <n>     生成する乱数の個数 [default: 10]。
 -o <file>  出力ファイル
"