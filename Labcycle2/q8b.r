#  b)Perform a detailed EDA, including advanced statistical analysis, to explore factors influencing survival rates. 
# Check for missing values
missing_values <- sapply(titanic_data, function(x) sum(is.na(x)))
print("Missing Values:")
print(missing_values)

# Impute missing values for numerical columns with median
titanic_data$Age[is.na(titanic_data$Age)] <- median(titanic_data$Age, na.rm = TRUE)
titanic_data$Fare[is.na(titanic_data$Fare)] <- median(titanic_data$Fare, na.rm = TRUE)

# For categorical columns, you might want to replace with the mode or another appropriate strategy
# Example for 'Embarked': titanic_data$Embarked[is.na(titanic_data$Embarked)] <- mode(titanic_data$Embarked)

# Create a boxplot with outlier detection for the 'Age' column
ggplot(titanic_data, aes(x = "Age", y = Age)) +
  geom_boxplot(fill = "green", color = "red", outlier.colour = "blue", outlier.shape = 16, outlier.size = 2) +
  labs(title = "Boxplot of Age with Outlier Detection",
       x = "Age",
       y = "Value") +
  theme_minimal()
