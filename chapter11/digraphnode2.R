library("DiagrammeR")
grViz("
      digraph sake_flow{
        玄米[color = 'black' style = 'filled' fillcolor = 'red']
        // 玄米は線の色を黒で、赤で塗りつぶす
        node[color = 'blue']
        水;麹;酵母 //この3つのノードのみ線の色を青に
        node[color = 'grey' shape = 'box']
        // ほかのノードは四角形で線の色を灰色に

        玄米 -> 白米 -> 蒸米 -> 麹 -> 酒母
        水 -> {酒母 もろみ}
        酵母 -> {酒母 もろみ}
        醸造アルコールなど -> もろみ[label = '入れない場合もある' style = 'dotted']
        蒸米 -> 酒母 -> もろみ
        もろみ -> 新酒[label = '発酵・n上槽']
        新酒 -> 市販の一般の清酒[label = '貯蔵・n割水']
      }
      ")
