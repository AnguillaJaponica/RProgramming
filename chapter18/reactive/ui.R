library(shiny)

shinyUI(fluidPage(
  titlePanel("We love iris"),

  sidebarLayout(
    sidebarPanel(
      helpText("Select random sampling counts."),

      sliderInput(inputId = "n",
                  label   = "how many?",
                  min     = 10,
                  max     = 150,
                  value   = 150)
    ),
    mainPanel(plotOutput("plot"))
  )
))