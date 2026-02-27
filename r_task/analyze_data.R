df <- read.csv("r_task/sample_data.csv")

mean_score <- mean(df$Score)
print(paste("Mean score:", mean_score))
treatment_data <- subset(df, Group == "Treatment")
max_treatment_score <- max(treatment_data$Score)
print(paste("Max score in Treatment group:", max_treatment_score))

png("r_task/score_boxplot.png")
boxplot(Score ~ Group, data = df,
        main = "Score Distribution by Group",
        xlab = "Group",
        ylab = "Score",
        col = c("orange", "lightgreen"))

dev.off()