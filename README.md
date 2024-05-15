# Harvardx Data Science Capstone

## [Read the full report here](https://harvardx-capstone-project.gitbook.io/biomechanical-features-of-orthopedic-patients/)

## Orthopedic Patient Data Analysis
### Overview
Welcome to my Orthopedic Patient Data Analysis repository for the Harvardx Data Science Capstone! Here, I delve into the realm of orthopedic healthcare, specifically focusing on analyzing data related to the bones of orthopedic patients. The primary objective is to develop a KNN (K-Nearest Neighbors) prediction model capable of distinguishing between abnormal and normal cases based on specific bone metrics.

### KNN Prediction Model
The approach hinges on the utilization of a KNN prediction model. This model works by classifying new data points based on the majority class of their k nearest neighbors in the feature space. By training this model on our dataset, my aim is to create a robust tool for accurately identifying abnormalities in orthopedic cases, thereby facilitating better decision-making in patient care.

### Data Processing
By leveraging the Biomechanical Features of Orthopedic Patients dataset, [which can be found here](https://www.kaggle.com/datasets/uciml/biomechanical-features-of-orthopedic-patients?resource=download&select=column_2C_weka.csv). The data, originally in CSV format, is processed using R programming language. We employ various data preprocessing techniques, including data cleaning, normalization, and feature engineering, to ensure the dataset is suitable for training our KNN model.

### Repository Contents
**data_processing.R**: This script contains the R code for processing the dataset. <br>
**knn_model.R**: Here, you'll find the implementation of our KNN prediction model. <br>
**README.md**: You're currently reading it! This file provides an overview of the project, including instructions on how to use the repository.<br>

### Usage
To replicate the analysis:

Download the dataset from the provided link.
Run the data_processing.R script to preprocess the data.
Execute the knn_model.R script to train and evaluate the KNN prediction model.

Feel free to explore, experiment, and suggest changes to this project!
