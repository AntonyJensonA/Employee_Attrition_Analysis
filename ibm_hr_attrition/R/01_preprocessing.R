# R/01_preprocessing.R
library(dplyr)

preprocess_data <- function(file_path) {
  if (!file.exists(file_path)) {
    stop(paste("Error: File not found at", file_path, "- Please add the IBM HR dataset to the data/ folder."))
  }

  cat(paste("Loading data from", file_path, "\n"))
  # Load CSV, converting categorical text to proper Factors for modeling
  df <- read.csv(file_path, stringsAsFactors = TRUE)

  # Remove invariant/non-predictive columns present in the IBM dataset
  # EmployeeCount is always 1, StandardHours is always 80, Over18 is always 'Y'
  cols_to_remove <- c("EmployeeCount", "EmployeeNumber", "StandardHours", "Over18")
  df <- df %>% select(-any_of(cols_to_remove))

  # Ensure the target variable is appropriately typed
  if(!is.factor(df$Attrition)){
      df$Attrition <- as.factor(df$Attrition)
  }

  cat(paste("Dataset loaded successfully. Rows:", nrow(df), "Columns:", ncol(df), "\n"))
  return(df)
}
