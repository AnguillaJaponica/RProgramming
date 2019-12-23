# ui.R
library(shiny)
library(shinydashboard)

# ヘッダ
header <- dashboardHeader(title = "売上レポート")

# サイドバー
sidebar <- dashboardSidebar(
   sidebarMenu(
      menuItem("ダッシュボード", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("データ", tabName = "raw_data", icon = icon("th"))
   )
)

# ボディ
# ダッシュボードタブ
dashboard_tab <- tabItem(
   "dashboard",
   fluidRow(
      infoBox(
         title = "売上推移",
         icon = icon("jpy"),
         plotOutput("graph", height = 280),
         width = 12
      )
   )
)
# データタブ
table_tab <- tabItem(
   "raw_data",
   fluidRow(
      box(
         downloadLink("download"),
         width = 3
      ),
      box(
         title = "売上推移",
         DT::dataTableOutput("table"),
         width = 12
      )
   )
)
body <- dashboardBody(
   tabItems(dashboard_tab, table_tab)
)

dashboardPage(header, sidebar, body)