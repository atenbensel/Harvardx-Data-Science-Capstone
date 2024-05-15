# Load necessary libraries
library(tidyverse)
library(corrplot)
library(caret)
library(DataExplorer)

# Load the datasets
data_2C <- read.csv("/mnt/data/column_2C_weka.csv")
data_3C <- read.csv("/mnt/data/column_3C_weka.csv")

# Function to process and analyze each dataset
process_and_analyze_data <- function(data, dataset_name) {
  cat("\n--- Processing and Analyzing", dataset_name, "Data ---\n")
  
  # Basic data overview and cleaning
  print(summary(data))
  data <- na.omit(data)  # Remove rows with NA values

  # Automated exploratory data analysis
  plot_intro(data)
  plot_missing(data)  # Check missing data
  plot_correlation(data, maxcat = 5)  # Correlation plot

  # Feature distribution and relationships
  pdf(paste0(dataset_name, "_detailed_eda.pdf"))
  plot_histogram(data)  # Histograms for each feature
  plot_boxplot(data, by = "class")  # Boxplots by class
  plot_scatterplot(data, by = "class")  # Scatter plots by class
  dev.off()
}

# Process and analyze 2C and 3C data
process_and_analyze_data(data_2C, "2C")
process_and_analyze_data(data_3C, "3C")
