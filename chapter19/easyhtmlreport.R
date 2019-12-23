# レポート送信を行う
library(EasyHTMLReport)
easyHtmlReport(
    rmd.file = "report.Rmd",                   # Rマークダウンファイル
    from = "from@example.com",                 # メール送信元
    to = "to@example.com",                     # メール宛先
    subject = paste("[レポート]", Sys.Date())  # メールタイトル
)