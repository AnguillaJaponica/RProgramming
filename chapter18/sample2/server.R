# server.R

# コードを記述する箇所①
# 外側のブロックの実行処理
# shinyアプリケーションが起動したタイミングで一度だけ実行される

shinyServer(
　function(input, output) {
　　# コードを記述する箇所②
　　# shinyServerブロックの実行処理
　　# ユーザがshinyアプリケーションに訪れたタイミングで一度だけ実行される
　　
　　　output$map <- renderPlot({
　　　  # コードを記述する箇所③
　　　  # renderPlotブロックの実行処理
　　　  # ユーザがInputを変えてパラメータが変更されるたびに実行される
　　})
　}
)