#age
Age1_shap_beeswarm <- sv_importance(Age1_shap1[["sv_svm"]], 
                                    kind = "beeswarm", #蜂群图
                                    size = 0.3, # 散点大小（蜂群图）
                                    bee_width = 0.3, #散点的水平扩展宽度
                                    max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 30), #坐标轴标题字体大小
    axis.text = element_text(size = 20), #坐标轴刻度字体大小
    legend.title = element_text(size = 20), #图例标题字体大小
    legend.text = element_text(size = 15), #图例字体大小
    legend.key.height = unit(0.9, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.2), #y轴刻度线粗细
    axis.ticks.length = unit(0.04, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )

Age2_shap_beeswarm <- sv_importance(Age2_shap1[["sv_svm"]], 
                                    kind = "beeswarm", #蜂群图
                                    size = 0.3, # 散点大小（蜂群图）
                                    bee_width = 0.3, #散点的水平扩展宽度
                                    max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 30), #坐标轴标题字体大小
    axis.text = element_text(size = 20), #坐标轴刻度字体大小
    legend.title = element_text(size = 20), #图例标题字体大小
    legend.text = element_text(size = 15), #图例字体大小
    legend.key.height = unit(0.9, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.2), #y轴刻度线粗细
    axis.ticks.length = unit(0.04, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )

Age3_shap_beeswarm <- sv_importance(Age3_shap1[["sv_svm"]], 
                                    kind = "beeswarm", #蜂群图
                                    size = 0.3, # 散点大小（蜂群图）
                                    bee_width = 0.3, #散点的水平扩展宽度
                                    max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 30), #坐标轴标题字体大小
    axis.text = element_text(size = 20), #坐标轴刻度字体大小
    legend.title = element_text(size = 20), #图例标题字体大小
    legend.text = element_text(size = 15), #图例字体大小
    legend.key.height = unit(0.9, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.2), #y轴刻度线粗细
    axis.ticks.length = unit(0.04, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )

shap_plot_Age <- Age1_shap_beeswarm + Age2_shap_beeswarm + Age3_shap_beeswarm + 
  plot_annotation(tag_levels = "A")#自动添加A和B标签
#导出SHAP依赖图-Age
ggsave(plot = shap_plot_Age, 
       filename = "shap_plot_Age.png", 
       width = 17, 
       height = 6,
       units = "cm", 
       dpi = 600)


#年龄
Gender1_shap_beeswarm <- sv_importance(Gender1_shap1[["sv_svm"]], 
                                       kind = "beeswarm", #蜂群图
                                       size = 0.5, # 散点大小（蜂群图）
                                       bee_width = 0.5, #散点的水平扩展宽度
                                       max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  #"#377EB8""#ca0020"/"#0130A7""#FF7801" /"#6601F7""#48EDFE"/"#00A088""#FDD39F"
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 40), #坐标轴标题字体大小
    axis.text = element_text(size = 30), #坐标轴刻度字体大小
    legend.title = element_text(size = 30), #图例标题字体大小
    legend.text = element_text(size = 25), #图例字体大小
    legend.key.height = unit(1.25, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.25), #y轴刻度线粗细
    axis.ticks.length = unit(0.05, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )

Gender2_shap_beeswarm <- sv_importance(Gender2_shap1[["sv_svm"]], 
                                       kind = "beeswarm", #蜂群图
                                       size = 0.5, # 散点大小（蜂群图）
                                       bee_width = 0.5, #散点的水平扩展宽度
                                       max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  #"#377EB8""#ca0020"/"#0130A7""#FF7801" /"#6601F7""#48EDFE"/"#00A088""#FDD39F"
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 40), #坐标轴标题字体大小
    axis.text = element_text(size = 30), #坐标轴刻度字体大小
    legend.title = element_text(size = 30), #图例标题字体大小
    legend.text = element_text(size = 25), #图例字体大小
    legend.key.height = unit(1.25, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.25), #y轴刻度线粗细
    axis.ticks.length = unit(0.05, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )


shap_plot_Gender <- Gender1_shap_beeswarm + Gender2_shap_beeswarm + 
  plot_annotation(tag_levels = "A")#自动添加A和B标签

#导出SHAP依赖图-Gender
ggsave(plot = shap_plot_Gender, 
       filename = "shap_plot_Gender.png", 
       width = 17, 
       height = 8,
       units = "cm", 
       dpi = 600)


#城乡
crl1_shap_beeswarm <- sv_importance(crl1_shap1[["sv_svm"]], 
                                       kind = "beeswarm", #蜂群图
                                       size = 0.5, # 散点大小（蜂群图）
                                       bee_width = 0.5, #散点的水平扩展宽度
                                       max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  #"#377EB8""#ca0020"/"#0130A7""#FF7801" /"#6601F7""#48EDFE"/"#00A088""#FDD39F"
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 40), #坐标轴标题字体大小
    axis.text = element_text(size = 30), #坐标轴刻度字体大小
    legend.title = element_text(size = 30), #图例标题字体大小
    legend.text = element_text(size = 25), #图例字体大小
    legend.key.height = unit(1.25, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.25), #y轴刻度线粗细
    axis.ticks.length = unit(0.05, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )

crl2_shap_beeswarm <- sv_importance(crl2_shap1[["sv_svm"]], 
                                       kind = "beeswarm", #蜂群图
                                       size = 0.5, # 散点大小（蜂群图）
                                       bee_width = 0.5, #散点的水平扩展宽度
                                       max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  #"#377EB8""#ca0020"/"#0130A7""#FF7801" /"#6601F7""#48EDFE"/"#00A088""#FDD39F"
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 40), #坐标轴标题字体大小
    axis.text = element_text(size = 30), #坐标轴刻度字体大小
    legend.title = element_text(size = 30), #图例标题字体大小
    legend.text = element_text(size = 25), #图例字体大小
    legend.key.height = unit(1.25, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.25), #y轴刻度线粗细
    axis.ticks.length = unit(0.05, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )


shap_plot_crl <- crl1_shap_beeswarm + crl2_shap_beeswarm + 
  plot_annotation(tag_levels = "A")#自动添加A和B标签
#导出SHAP依赖图-城乡
ggsave(plot = shap_plot_crl, 
       filename = "shap_plot_crl.png", 
       width = 17, 
       height = 8,
       units = "cm", 
       dpi = 600)

#高血压
Hypertension1_shap_beeswarm <- sv_importance(Hypertension1_shap1[["sv_svm"]], 
                                       kind = "beeswarm", #蜂群图
                                       size = 0.5, # 散点大小（蜂群图）
                                       bee_width = 0.5, #散点的水平扩展宽度
                                       max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  #"#377EB8""#ca0020"/"#0130A7""#FF7801" /"#6601F7""#48EDFE"/"#00A088""#FDD39F"
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 40), #坐标轴标题字体大小
    axis.text = element_text(size = 30), #坐标轴刻度字体大小
    legend.title = element_text(size = 30), #图例标题字体大小
    legend.text = element_text(size = 25), #图例字体大小
    legend.key.height = unit(1.25, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.25), #y轴刻度线粗细
    axis.ticks.length = unit(0.05, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )
Hypertension2_shap_beeswarm <- sv_importance(Hypertension2_shap1[["sv_svm"]], 
                                       kind = "beeswarm", #蜂群图
                                       size = 0.5, # 散点大小（蜂群图）
                                       bee_width = 0.5, #散点的水平扩展宽度
                                       max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  #"#377EB8""#ca0020"/"#0130A7""#FF7801" /"#6601F7""#48EDFE"/"#00A088""#FDD39F"
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 40), #坐标轴标题字体大小
    axis.text = element_text(size = 30), #坐标轴刻度字体大小
    legend.title = element_text(size = 30), #图例标题字体大小
    legend.text = element_text(size = 25), #图例字体大小
    legend.key.height = unit(1.25, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.25), #y轴刻度线粗细
    axis.ticks.length = unit(0.05, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )

shap_plot_Hypertension <- Hypertension1_shap_beeswarm + Hypertension2_shap_beeswarm + 
  plot_annotation(tag_levels = "A")#自动添加A和B标签
#导出SHAP依赖图-Hypertension
ggsave(plot = shap_plot_Hypertension, 
       filename = "shap_plot_Hypertension.png", 
       width = 17, 
       height = 8,
       units = "cm", 
       dpi = 600)


#lipid-lowering drug
lld1_shap_beeswarm <- sv_importance(lld1_shap1[["sv_svm"]], 
                                             kind = "beeswarm", #蜂群图
                                             size = 0.5, # 散点大小（蜂群图）
                                             bee_width = 0.5, #散点的水平扩展宽度
                                             max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  #"#377EB8""#ca0020"/"#0130A7""#FF7801" /"#6601F7""#48EDFE"/"#00A088""#FDD39F"
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 40), #坐标轴标题字体大小
    axis.text = element_text(size = 30), #坐标轴刻度字体大小
    legend.title = element_text(size = 30), #图例标题字体大小
    legend.text = element_text(size = 25), #图例字体大小
    legend.key.height = unit(1.25, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.25), #y轴刻度线粗细
    axis.ticks.length = unit(0.05, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )

lld2_shap_beeswarm <- sv_importance(lld2_shap1[["sv_svm"]], 
                                    kind = "beeswarm", #蜂群图
                                    size = 0.5, # 散点大小（蜂群图）
                                    bee_width = 0.5, #散点的水平扩展宽度
                                    max_display = Inf) + #显示所有特征
  scale_color_gradient(low = "#6601F7", high = "#48EDFE") + 
  #"#377EB8""#ca0020"/"#0130A7""#FF7801" /"#6601F7""#48EDFE"/"#00A088""#FDD39F"
  scale_x_continuous(limits = c(-0.45, 0.6), #限制x轴刻度
                     breaks = seq(-0.4, 0.6, by = 0.2)) + #设置x轴刻度
  theme(
    panel.background = element_rect(fill = "white"), #面板背景为白色
    plot.background = element_rect(fill = "white"), #整个绘图区域背景为白色
    axis.title = element_text(size = 40), #坐标轴标题字体大小
    axis.text = element_text(size = 30), #坐标轴刻度字体大小
    legend.title = element_text(size = 30), #图例标题字体大小
    legend.text = element_text(size = 25), #图例字体大小
    legend.key.height = unit(1.25, "cm"), #条形图例高度
    legend.key.width = unit(0.075, "cm"), #条形图例宽度
    plot.tag = element_text(size = 50, face = "bold"), #设置标签文字大小
    plot.margin = margin(0, 0, 0, 0, "cm"), #调整边距
    axis.ticks = element_line(size = 0.25), #y轴刻度线粗细
    axis.ticks.length = unit(0.05, "cm"), #刻度线在外侧及长度
    axis.ticks.y = element_blank() #去掉y轴刻度线
  )

shap_plot_lld <- lld1_shap_beeswarm + lld2_shap_beeswarm + 
  plot_annotation(tag_levels = "A")#自动添加A和B标签
#导出SHAP依赖图-Hypertension
ggsave(plot = shap_plot_lld, 
       filename = "shap_plot_lld.png", 
       width = 17, 
       height = 8,
       units = "cm", 
       dpi = 600)




##------------------列线图------------------10/5
train_boruta_nom <- train_boruta
colnames(train_boruta_nom) <- data_dict$long[match(names(train_boruta_nom), data_dict$short)]
#生成数据分布对象（转换数据为rms包所需的格式）
dd <- datadist(train_boruta_nom)
#将数据分布对象dd设置为全局选项
options(datadist = "dd")
#用训练集拟合逻辑回归模型
lr_model <- lrm(
  RDKF ~ TC + `LDL-C` + `HDL-C` + Hypertension + `Anti-hypertensive drugs`,
  data = train_boruta_nom
)
nomogram <- nomogram(lr_model, 
                     lp = F,  #是否显示系数轴
                     fun.at = seq(0, 1, by = 0.2),  #设置风险轴刻度
                     fun = plogis, 
                     funlabel = "Predicted Probability")

png("nomogram.png", width = 8000, height = 5000, res = 600)
par(mar = c(1, 0.5, 1, 0.5))  #下、左、上、右边距
plot(nomogram, 
     cex.axis = 5,    # 刻度标签字体大小
     cex.var = 7,     # 变量名字体大小
     cex.sub = 7)     # 子标题字体大小（如"Points"等）
dev.off()

pred_prob <- predict(lr_model, type = "fitted")

# 计算 ROC 与 AUC
roc_obj <- roc(train_boruta_nom$RDKF, pred_prob)


#delong检验 vs.改为versus

library(mlr3tuning)

#雷达图F1