hello_fun2 <- function(env) {
    req <- Rook::Request$new(env)
    res <- Rook::Response$new()
    # 初期値はWorld
    friend <- 'World'
    if (!is.null(req$GET()[['friend']]))
	friend <- req$GET()[['friend']]
        # submitボタンが押されると、テキストボックスに入力された値をfriendに格納してGETパラメータとして扱う
    res$write(paste('<h1>Hello',friend,'</h1>・n'))
    res$write('What is your name?・n')
    res$write('<form method="GET">・n')
    res$write('<input type="text" name="friend">・n')
    res$write('<input type="submit" name="Submit">・n</form>・n<br>')
    res$finish()
}
#
rk <- Rhttpd$new()
rk$start(quiet = TRUE)
rk$add(app = hello_fun2, name = "HelloWorld2")
rk$browse("HelloWorld2")