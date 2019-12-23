library(logging)

# フォーマット関数を定義する
formatter <- function(record) {
    msg <- record$msg
    timestamp <- record$timestamp
    logger <- record$logger
    level <- record$level
    levelname <- record$levelname
    sprintf("%s, [%s] [%s] %s %s", level, timestamp, levelname, logger, msg)
}
# 作成したフォーマット関数を利用する
addHandler(writeToConsole, formatter = formatter, logger = "formatted.logger")