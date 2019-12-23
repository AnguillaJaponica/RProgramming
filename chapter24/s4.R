# RでS4クラスPersonを定義する
setClass (
  # クラス名
  "Person",
  # スロットの型を指定
  representation (
    name = "character",
    birth = "Date"
  ),
  # スロットの初期化
  prototype = list(
    name = as.character(NULL),
    birth = as.Date(as.character(NULL))
  )
)

# RでPersonクラスのオブジェクトを作成する例
person_01 <- new("Person",
                 name = "Ronald Fisher",
                 birth = as.Date("1890-02-17"))