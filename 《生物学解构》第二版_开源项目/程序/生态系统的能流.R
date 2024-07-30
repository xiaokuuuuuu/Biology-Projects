library(networkD3)
library(dplyr)

# A connection data frame is a list of flows with intensity for each flow
links <- data.frame(
  source = c(# "入射太阳能", "入射太阳能", 
             "生产者", "生产者", "生产者", "生产者", 
             "初级消费者", "初级消费者", "初级消费者", "初级消费者", 
             "次级消费者", "次级消费者", "次级消费者"),
  target = c(# "生产者", "未吸收", 
             "分解者", "初级消费者", "呼吸", "未利用", 
             "分解者", "次级消费者", "呼吸", "未利用", 
             "分解者", "呼吸", "未利用"),
  value = c(# 464.6, 497228.7, 
            14.7, 62.8, 122.6, 327.3, 
            2.1, 12.6, 18.8, 29.3, 
            0.1, 7.5, 5.0)
)

# From these flows we need to create a node data frame: it lists every entities involved in the flow
nodes <- data.frame(
  name=c(as.character(links$source), 
         as.character(links$target)) %>% unique()
)

# With networkD3, connection must be provided using id, not using real name like in the links dataframe.. So we need to reformat it.
links$IDsource <- match(links$source, nodes$name)-1 
links$IDtarget <- match(links$target, nodes$name)-1

# Make the Network
p <- sankeyNetwork(Links = links, Nodes = nodes,
                   Source = "IDsource", Target = "IDtarget",
                   Value = "value", NodeID = "name", 
                   LinkGroup = 'source', # 颜色分组
                   nodeWidth = 5, #节点格子宽度
                   fontSize = 20, #文本标签字体的大小
                   fontFamily = 'SimSun',
                   nodePadding = 4, #节点格子间空隙宽度
                   sinksRight=FALSE)
p

library(htmlwidgets)
saveWidget(p, "sankey.html")
library(webshot)
webshot("sankey.html" , "生态系统的能流.pdf")
