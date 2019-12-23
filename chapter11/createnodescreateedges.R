library("DiagrammeR")
# ノードを生成
nodes <- create_nodes(nodes = c("玄米", "白米", "蒸米", "麹", "酒母",
                               "もろみ", "新酒", "市販の一般の清酒",
                               "水", "酵母", "醸造アルコールなど"),
                      color = c("black", "grey", "grey", "blue", "grey",
                                "grey", "grey", "grey",
                                "blue", "blue", "grey"),
                      style = c("filled", rep("", 10)),
                      fillcolor = c("red", rep("", 10)),
                      shape = c("", "box", "box", "", rep("box", 4), "", "", "box"))
# エッジを生成
edges <- create_edges(from = c("玄米", "白米", "蒸米", "麹", "酒母",
                               "もろみ", "新酒",
                               "水", "水", "酵母", "酵母", "醸造アルコールなど","蒸米"),
                      to = c("白米", "蒸米", "麹", "酒母","もろみ",
                             "新酒","市販の一般の清酒",
                             "酒母", "もろみ", "酒母", "もろみ", "もろみ","酒母"),
                      label = c(rep("", 5), "発酵・n上槽", "貯蔵・n割水",
                                rep("", 4), "入れない場合もある"),
                      style = c(rep("", 11), "dotted"))
# グラフを生成
graph <- create_graph(nodes_df = nodes,
             edges_df = edges
             )
# グラフを描画
render_graph(graph)
