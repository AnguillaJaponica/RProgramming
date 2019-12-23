library(Rook)
hello_fun <- function(env) {
     res <- Rook::Response$new()
     res$write("<html>ヮ<head><title>HelloWorld</title></head>・n<body>・n")
     res$write("<h1>Hello World</h1>・n")
     res$write("</body>・n</html>・n")
     res$finish()
 }
#
rk <- Rhttpd$new()
rk$start(quiet = TRUE)
rk$add(app = hello_fun, name = "HelloWorld")
rk$browse("HelloWorld")