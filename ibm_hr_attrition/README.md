# IBM HR Attrition Analytics

## Setup
1. Download the IBM HR Employee Attrition & Performance dataset (CSV format) from Kaggle.
2. Place the CSV file in the `data/` folder and name it `WA_Fn-UseC_-HR-Employee-Attrition.csv`.
3. Open your R console or RStudio and install the required dependencies:
   ```R
   install.packages(c("dplyr", "ggplot2", "caret", "randomForest", "e1071"))
   ```
4. Run the analytics pipeline:
   ```R
   source("main.R")
   ```
