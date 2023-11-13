# Load necessary libraries
library(tidyverse)

# Load the Titanic dataset
titanic_data <- read.csv("C:/Users/Lenovo/Downloads/titanic_dataset.csv")

# Impute missing values for the 'Age' column with the median
titanic_data$Age[is.na(titanic_data$Age)] <- median(titanic_data$Age, na.rm = TRUE)

# Create a customized box plot for age distribution of survivors and non-survivors
ggplot(titanic_data, aes(x = factor(Survived), y = Age, fill = factor(Survived))) +
  geom_boxplot(show.legend = FALSE) +
  labs(title = "Age Distribution of Survivors and Non-Survivors",
       x = "Survival Status",
       y = "Age") +
  theme_minimal()
