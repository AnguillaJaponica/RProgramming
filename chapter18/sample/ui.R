library(shiny)

# UIの設定
shinyUI(fluidPage(

  # shinyアプリのタイトル, HTMLのtitleタグに相当する
  titlePanel("Hello Shiny!"),

  # レイアウトを記述する
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),

    # プロットを出力
    mainPanel(
      plotOutput("distPlot") #
    )
  )
))