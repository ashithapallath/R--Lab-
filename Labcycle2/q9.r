# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load Iris dataset
iris_data <- iris

# Basic Information
print(summary(iris_data))
str(iris_data)

# Univariate Analysis
par(mfrow=c(2,2))
hist(iris_data$Sepal.Length, main='Sepal Length', xlab='Length')
hist(iris_data$Sepal.Width, main='Sepal Width', xlab='Width')
hist(iris_data$Petal.Length, main='Petal Length', xlab='Length')
hist(iris_data$Petal.Width, main='Petal Width', xlab='Width')

# Bivariate Analysis
pairs(iris_data[,1:4], col=iris_data$Species)

# Correlation Matrix
cor_matrix <- cor(iris_data[,1:4])
print(cor_matrix)

#2: EDA on "Iris Dataset"

#a)For the Iris dataset, which contains measurements of various iris flowers, conduct  an EDA.

library(ggplot2)
library(dplyr)

# Load Iris dataset
iris_data <- iris

# Basic Information
print(summary(iris_data))
str(iris_data)

# Univariate Analysis
par(mfrow=c(2,2))
hist(iris_data$Sepal.Length, main='Sepal Length', xlab='Length')
hist(iris_data$Sepal.Width, main='Sepal Width', xlab='Width')
hist(iris_data$Petal.Length, main='Petal Length', xlab='Length')
hist(iris_data$Petal.Width, main='Petal Width', xlab='Width')

# Bivariate Analysis
pairs(iris_data[,1:4], col=iris_data$Species)

# Correlation Matrix
cor_matrix <- cor(iris_data[,1:4])
print(cor_matrix)

# Box Plots
par(mfrow=c(2,2))
boxplot(Sepal.Length ~ Species, data=iris_data, col=c("lightblue", "lightgreen", "lightcoral"), main='Sepal Length by Species')
boxplot(Sepal.Width ~ Species, data=iris_data, col=c("lightblue", "lightgreen", "lightcoral"), main='Sepal Width by Species')
boxplot(Petal.Length ~ Species, data=iris_data, col=c("lightblue", "lightgreen", "lightcoral"), main='Petal Length by Species')
boxplot(Petal.Width ~ Species, data=iris_data, col=c("lightblue", "lightgreen", "lightcoral"), main='Petal Width by Species')

# Violin Plots
par(mfrow=c(2,2))
for (col in c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")) {
  p <- ggplot(iris_data, aes(x=Species, y=iris_data[[col]], fill=Species)) +
    geom_violin() +
    labs(title=paste(col, "by Species")) +
    scale_fill_manual(values=c("lightblue", "lightgreen", "lightcoral"))
  
  print(p)
}

##b) Determine if there are statistically significant differences in sepal lengths between            different species using a suitable statistical test. 
# Perform analysis of variance (ANOVA) to test for significant differences
anova_result <- aov(Sepal.Length ~ Species, data=iris_data)
print(summary(anova_result))

##c)Create a pair plot to visualize the relationships between all variables.
# Create pair plot
pairs(iris_data, col=iris_data$Species)



