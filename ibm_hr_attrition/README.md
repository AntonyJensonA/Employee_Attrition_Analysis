# IBM HR Attrition Analytics

This repository contains an Employee Attrition Analytics System built in R. It uses the IBM HR Analytics Employee Attrition & Performance dataset to preprocess data, perform Exploratory Data Analysis (EDA), and train a Random Forest predictive model to identify factors that contribute to employee attrition.

## 🚀 Quick Start Guide

Follow these step-by-step instructions to get the project running on your local machine.

### Step 1: Prerequisites
Ensure you have the following installed on your computer:
- **R**: Download and install from [CRAN](https://cran.r-project.org/)
- **RStudio** (Highly Recommended): Download and install from [Posit](https://posit.co/download/rstudio-desktop/)
- **Git**: Download and install from [git-scm.com](https://git-scm.com/)

### Step 2: Clone the Repository
Open your terminal (Mac/Linux) or Git Bash/Command Prompt (Windows) and run the following commands:
```bash
git clone https://github.com/AntonyJensonA/Employee_Attrition_Analysis.git
cd Employee_Attrition_Analysis
```

### Step 3: Download the Dataset
The dataset is ignored from version control to prevent uploading large data files. You will need to download it manually:
1. Navigate to the Kaggle dataset page: [IBM HR Analytics Employee Attrition & Performance](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
2. Download the dataset and extract the CSV file.
3. Ensure the CSV file is named `WA_Fn-UseC_-HR-Employee-Attrition.csv`.
4. Place the CSV file inside the `data/` folder within the cloned project directory.

### Step 4: Install Dependencies
Open **RStudio**, and set your working directory to the cloned repository. You can do this by opening RStudio and navigating to `Session -> Set Working Directory -> Choose Directory`, then selecting the `Employee_Attrition_Analysis` folder.

Next, run the following command in the R console to install the necessary R packages:
```R
install.packages(c("dplyr", "ggplot2", "caret", "randomForest", "e1071"))
```

### Step 5: Run the Analysis
To run the full analytics pipeline—which includes preprocessing, generating EDA plots, and training the model—run the `main.R` script:
```R
source("main.R")
```
Alternatively, open `main.R` in RStudio and click the **Source** button in the top right corner of the script editor.

## 📂 Project Structure
- `data/`: Directory where the dataset should be placed. (Contains `README.txt` placeholder).
- `R/01_preprocessing.R`: Functions for loading, cleaning, and preparing the data.
- `R/02_eda.R`: Functions for generating Exploratory Data Analysis (EDA) visualizations.
- `R/03_modeling.R`: Functions for training and evaluating the Random Forest model.
- `main.R`: The main execution script that connects and runs all components of the pipeline.
