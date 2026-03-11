# R/03_modeling.R
library(caret)
library(randomForest)

train_attrition_model <- function(df) {
  # Seed for reproducibility
  set.seed(42)

  # Partition the data: 80% for training, 20% for testing
  trainIndex <- createDataPartition(df$Attrition, p = 0.8, list = FALSE)
  train_data <- df[trainIndex, ]
  test_data  <- df[-trainIndex, ]

  cat("Training Random Forest with 100 trees... This may take a few seconds.\n")
  # Train a Random Forest Model
  # The formula `Attrition ~ .` tells it to use all other columns to predict Attrition
  rf_model <- randomForest(Attrition ~ ., data = train_data, ntree = 100, importance = TRUE)

  # Generate Predictions on Test Set
  predictions <- predict(rf_model, newdata = test_data)

  # Evaluate Performance
  cat("\nModel Evaluation (Confusion Matrix):\n")
  conf_matrix <- confusionMatrix(predictions, test_data$Attrition)
  print(conf_matrix)

  # Plot Feature Importance
  # This plot shows HR which factors most strongly predict whether an employee quits
  varImpPlot(rf_model, main = "Key Drivers of Employee Attrition")

  return(list(model = rf_model, confusion_matrix = conf_matrix))
}
