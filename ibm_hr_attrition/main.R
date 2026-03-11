# main.R
# Main script to execute the Attrition Analytics Pipeline

# Ensure you have installed required packages before running:
# install.packages(c("dplyr", "ggplot2", "caret", "randomForest", "e1071"))

# Source individual modules
source("R/01_preprocessing.R")
source("R/02_eda.R")
source("R/03_modeling.R")

# Define path to the IBM HR dataset (ensure it's in the data folder)
data_path <- "data/WA_Fn-UseC_-HR-Employee-Attrition.csv"

cat("Starting Attrition Analytics Pipeline...\n\n")

# 1. Preprocess Data
clean_hr_data <- preprocess_data(data_path)

# 2. Exploratory Data Analysis (generates plots)
cat("\nGenerating EDA Plots...\n")
run_eda(clean_hr_data)

# 3. Model Training and Evaluation
cat("\nTraining Predictive Model (Random Forest)...\n")
model_results <- train_attrition_model(clean_hr_data)

cat("\nPipeline Execution Complete!\n")
