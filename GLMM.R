###广义线性混合模型分析####
# 导入lme4包
library(lme4)
library(readxl)


# 读取Excel表数据
data <- read_excel("F:/临床预测模型构建&机器学习（R语言进阶）-讲义等辅助资料/临床预测模型机器学习/linchangyucemoingjiqixuexi/.xlsx")

# 构建广义线性混合模型

model <- glmer(  + (1|ID),family = binomial, data = data)

options("max.print")
options(max.print = 1400)
# 查看模型结果
summary(model)

# 创建一个包含地理位置和计数的数据框



# 创建一个包含地理位置和计数的数据框
data <- data.frame(
  "Geographical location" = c("Western Europe", "Eastern Europe", "Middle Africa", "Eastern Asia", "South America", "Western Asia",
                              "Eastern Africa", "Southern Africa", "Southern Europe", "Southern Asia", "Northern Europe",
                              "Australia and New Zealand", "Central Asia", "South-eastern Asia", "Melanesia", "Northern America",
                              "Western Africa", "Central America"),
  "Count" = c(1567, 1116, 309, 3160, 367, 69, 1657, 858, 217, 184, 1257, 118, 465, 319, 53, 1637, 30, 19)
)

# 使用 barplot() 函数绘制柱状图，并添加地理位置具体名称作为横轴标签
barplot(data$Count, names.arg = data$`Geographical location`, xlab = "Geographical location", ylab = "Count", las = 2, cex.names = 0.8)

# 在每个柱状图下方添加地理位置名称
text(x = 1:length(data$`Geographical location`), y = -100, labels = data$`Geographical location`, srt = 45, adj = 1, xpd = TRUE, cex = 0.8)



