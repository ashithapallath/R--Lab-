
# Load the necessary library
library(ggplot2)

# Create a bar plot
ggplot(mtcars, aes(x = factor(cyl), fill = factor(am)))+
  geom_bar() +
  labs(title = "Number of Cylinders by Transmission Type",
       x = "Cylinders",
       y = "Count") +
  scale_fill_manual(values = c("0" = "red", "1" = "blue")) +
  guides(fill=guide_legend(title="Transmission Type"))
