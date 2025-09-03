# 绘制人染色体圈图 ------------------------------------------------------
# 导入内建人类染色体数据
data(UCSC.HG19.Human.CytoBandIdeogram)

# 设置染色体数据
cyto.info <- UCSC.HG19.Human.CytoBandIdeogram
# 设置不显示的染色体，如 c(1,3)  
chr.exclude <- NULL
# 设置内部环形个数
tracks.inside <- 10
# 设置外部环形个数  
tracks.outside <- 0

# 导入上面四个基本参数
RCircos.Set.Core.Components(cyto.info, chr.exclude,tracks.inside, tracks.outside)


# 列出所有绘图参数
RCircos.List.Plot.Parameters()

# 绘制染色体图形，默认方法显示染色体名称。
RCircos.Set.Plot.Area()     
RCircos.Chromosome.Ideogram.Plot() 

# 添加基因名称与连线 ------------------------------------------------------

# 加载内置的RCircos.Gene.Label.Data数据集
data(RCircos.Gene.Label.Data);

# 指定内容在内侧的环形还是外侧的环形生成
side <- "in";
# 指定内容在第几个环形生成
track.num <- 1;

# 绘图
RCircos.Gene.Connector.Plot(RCircos.Gene.Label.Data, track.num, side);

# 在染色体上添加基因名称， 指定内容在第几个环形生成
name.col <- 4;
track.num <- 2;

# 绘图
RCircos.Gene.Name.Plot(RCircos.Gene.Label.Data, name.col,track.num, side);

