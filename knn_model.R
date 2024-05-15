# Load necessary libraries
library(caret)
library(kknn)  # Enhanced KNN modeling

# Load datasets
data_2C <- read.csv("/mnt/data/column_2C_weka.csv")
data_3C <- read.csv("/mnt/data/column_3C_weka.csv")

# Function to prepare data, run KNN model, and evaluate
run_knn <- function(data, dataset_name) {
  set.seed(42)
  
  # Data preparation
  X <- data[, -ncol(data)]
  y <- data[, ncol(data)]
  data_split <- createDataPartition(y, p = 0.8, list = FALSE)
  X_train <- X[data_split, ]
  y_train <- y[data_split]
  X_test <- X[-data_split, ]
  y_test <- y[-data_split]
  
  # Model training with cross-validation and parameter tuning
  fit_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
  tune_grid <- expand.grid(k = seq(1, 21, by = 2), distance = 1:2, kernel = c("rectangular", "triangular", "epanechnikov"))
  
  model <- train(X_train, y_train, method = "kknn", tuneGrid = tune_grid, trControl = fit_control)
  print(model)
  
  # Predictions and evaluation
  predictions <- predict(model, X_test)
  results <- confusionMatrix(predictions, y_test)
  cat("\n--- KNN Model Evaluation for", dataset_name, "---\n")
  print(results)
  
  # Save model
  saveRDS(model, file = paste0(dataset_name, "_knn_model.rds"))
}

# Run KNN for both datasets
run_knn(data_2C, "2C")
run_knn(data_3C, "3C")
