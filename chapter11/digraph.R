library("DiagrammeR")
grViz("
      digraph sake_flow{
        玄米 -> 白米 -> 蒸米 -> もろみ -> 新酒 -> 市販の一般の清酒
      }
      ")