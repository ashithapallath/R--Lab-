#7.EDA on "Titanic Dataset"
#You are given the Titanic dataset, which contains information about passengers on the Titanic, including their survival status, age, class, and gender. 
#  a)plot the histogram of Number of parents and children of the passenger aboard(parch).


# Load necessary libraries
library(tidyverse)

# Load the Titanic dataset
titanic_data <- read.csv("C:/Users/Lenovo/Downloads/titanic_dataset.csv")

# Plot the histogram of Number of parents and children of the passenger aboard (Parch)
ggplot(titanic_data, aes(x = Parch)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Number of Parents and Children Aboard (Parch)",
       x = "Number of Parents and Children",
       y = "Frequency")
