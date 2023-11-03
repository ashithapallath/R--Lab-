#Box plot
# Load the necessary library
library(ggplot2)

# Create a box plot with different shapes for gears
ggplot(mtcars, aes(x = factor(gear), y = hp, shape = factor(gear))) +
  geom_boxplot() +
  labs(title = "Horsepower (hp) by Number of Gears",
       x = "Number of Gears",
       y = "Horsepower (hp)") +
  scale_shape_manual(values = c("3" = 1, "4" = 2, "5" = 3)) +
  guides(shape = guide_legend(title = "Number of Gears")) +
  geom_text(data = mtcars[mtcars$hp > quantile(mtcars$hp, 0.75) + 1.5*IQR(mtcars$hp),],
            aes(label = rownames(mtcars[mtcars$hp > quantile(mtcars$hp, 0.75) + 1.5*IQR(mtcars$hp),])),
            vjust = -0.5, hjust = -0.5)

