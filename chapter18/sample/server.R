library(shiny)

# serverの設定
shinyServer(function(input, output) {

  # 出力がプロットなのでrenderPlot関数の中に記述

  output$distPlot <- renderPlot({
    x    <- faithful[, 2]  # Rに付属しているデータセットfaithful
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # plot(), ggplot(), hist()のようなプロットを出力するコードを記述
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
})