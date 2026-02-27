genes <- c("BRCA1", "TP53", "EGFR")
expression <- c(12.5, 45.2, 30.1)
condition <- c("Control", "Treatment", "Treatment")

exp_data <- data.frame(genes, expression, condition)
str(exp_data)


png("r_task/expression_plot.png")
barplot(height = exp_data$expression, 
        names.arg = exp_data$genes, 
        main = "Gene Expression",
        xlab = "Genes", 
        ylab = "Expression Level",
        col ="lightgreen")
dev.off()