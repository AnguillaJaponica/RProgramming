shinyUI(fluidPage(
  titlePanel("Basic widgets"),  # Webページのタイトル

  fluidRow(  # 1行追加

    # ボタン
    column(3,
           h3("Buttons"),
           actionButton("action", label = "Action"),
           br(),
           br(),
           submitButton("Submit")),

    # チェックボックス
    column(3,
           h3("Single checkbox"),
           checkboxInput("checkbox", label = "Choice A", value = TRUE)),

    # 複数チェックボックス
    column(3,
           checkboxGroupInput("checkGroup",
                              label = h3("Checkbox group"),
                              choices = list("Choice 1" = 1,
                                             "Choice 2" = 2, "Choice 3" = 3),
                              selected = 1)),

    # 日付入力
    column(3,
           dateInput("date",
                     label = h3("Date input"),
                     value = "2014-01-01"))
  ),

  fluidRow(  # 1行追加

    # 日付（期間）入力
    column(3,
           dateRangeInput("dates", label = h3("Date range"))),

    # 入力ファイル選択
    column(3,
           fileInput("file", label = h3("File input"))),

    # （ヘルプなどの）テキスト表示
    column(3,
           h3("Help text"),
           helpText("Note: help text isn't a true widget,",
                    "but it provides an easy way to add text to",
                    "accompany other widgets.")),

    # 数値入力
    column(3,
           numericInput("num",
                        label = h3("Numeric input"),
                        value = 1))
  ),

  fluidRow(  # 1行追加

    # ラジオボタン
    column(3,
           radioButtons("radio", label = h3("Radio buttons"),
                        choices = list("Choice 1" = 1, "Choice 2" = 2,
                                       "Choice 3" = 3),selected = 1)),

    # 選択式プルダウンメニュー
    column(3,
           selectInput("select", label = h3("Select box"),
                       choices = list("Choice 1" = 1, "Choice 2" = 2,
                                      "Choice 3" = 3), selected = 1)),

    # 数値範囲選択
    column(3,
           sliderInput("slider1", label = h3("Sliders"),
                       min = 0, max = 100, value = 50),
           sliderInput("slider2", "",
                       min = 0, max = 100, value = c(25, 75))
    ),

    # テキスト入力
    column(3,
           textInput("text", label = h3("Text input"),
                     value = "Enter text..."))
  )

))