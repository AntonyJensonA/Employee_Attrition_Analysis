# R/02_eda.R
library(ggplot2)

run_eda <- function(df) {
  # 1. Overall Attrition Rate
  p1 <- ggplot(df, aes(x = Attrition, fill = Attrition)) +
    geom_bar() +
    theme_minimal() +
    labs(title = "1. Overall Employee Attrition Count", x = "Attrition", y = "Count")
  print(p1)

  # 2. Attrition by Monthly Income
  p2 <- ggplot(df, aes(x = Attrition, y = MonthlyIncome, fill = Attrition)) +
    geom_boxplot(alpha = 0.7) +
    theme_minimal() +
    labs(title = "2. Monthly Income vs Attrition", x = "Attrition", y = "Monthly Income")
  print(p2)

  # 3. Attrition by OverTime
  p3 <- ggplot(df, aes(x = OverTime, fill = Attrition)) +
    geom_bar(position = "fill") +
    theme_minimal() +
    labs(title = "3. Proportion of Attrition by OverTime", x = "OverTime", y = "Proportion")
  print(p3)
}
