#Histogram
# Load the necessary library
library(ggplot2)

# Create a histogram with different shades of blue
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(fill = "lightblue", color = "blue", bins = 20) +
  labs(title = "Miles Per Gallon (mpg) Distribution",
       x = "Miles per Gallon (mpg)",
       y = "Frequency") +
  geom_text(aes(x = mean(mpg), y = 10, label = paste("Mean: ", round(mean(mpg), 2))), 
            hjust = 0, vjust = 0, size = 4, color = "blue") +
  geom_text(aes(x = mean(mpg), y = 8, label = paste("SD: ", round(sd(mpg), 2))), 
            hjust = 0, vjust = 0, size = 4, color = "blue")