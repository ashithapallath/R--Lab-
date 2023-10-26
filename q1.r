# Read the iris dataset from a CSV file
getwd()
iris_data <- read.csv("iris.csv")
# View the first few rows of the data
head(iris_data)


# Create a scatterplot of Sepal.Length and Petal.Length with labels and a title
plot(iris_data$sepal_length, iris_data$petal_length, 
     xlab = "Sepal Length", ylab = "Petal Length",
     main = "Scatterplot of Sepal Length vs Petal Length")

# Add different colors for each species
points(iris_data$sepal_length[iris_data$species == "setosa"], iris_data$petal_length[iris_data$species == "setosa"], col = "red", pch = 1)
points(iris_data$sepal_length[iris_data$species == "versicolor"], iris_data$petal_length[iris_data$species == "versicolor"], col = "blue", pch = 2)
points(iris_data$sepal_length[iris_data$species == "virginica"], iris_data$petal_length[iris_data$species == "virginica"], col = "green", pch = 3)

# Add a legend
legend("topright", legend = unique(iris_data$species), col = c("red", "blue", "green"), pch = 1:3, title = "Species")
