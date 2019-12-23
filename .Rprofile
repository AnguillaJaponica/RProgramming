local({
    if (.Platform$OS.type == "unix") {
        if (capabilities("aqua")) {  # macOS
            grDevices::quartzFonts(jpfont = grDevices::quartzFont(c(
                "Hiragino Kaku Gothic Pro W3",    # 標準
                "Hiragino Kaku Gothic Pro W6",    # ボールド
                "Hiragino Kaku Gothic Pro W3",    # イタリック
                "Hiragino Kaku Gothic Pro W6"     # ボールドイタリック
            )))
        } else {  # Unix-like
            grDevices::X11Fonts(jpfont = grDevices::X11Font("-*-mincho-%s-%s-*-*-%d-*-*-*-*-*-*-*"))
        }
    } else {  # Windows
        grDevices::windowsFonts(jpfont = grDevices::windowsFont("ＭＳ Ｐゴシック"))
    }
    
    setHook("plot.new", function() {
    	 par(family = "jpfont")
    })
    setHook("persp", function() {
    	 par(family = "jpfont")
    })
})
