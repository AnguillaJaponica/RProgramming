# C言語で定義したtriple関数のラッパー関数を作成する
triple <- function(x) {
    dummy <- 0  # 結果受け取りパラメータ用のダミー値
    callResult <- .C("triple", x = as.numeric(x), result = dummy)
    callResult$result
}