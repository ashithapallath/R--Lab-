# Load the mtcars dataset
data(mtcars)

# Create a cross-tabulation of cyl and am
cyl_am_tab <- table(mtcars$cyl, mtcars$am)

# Define color palette for transmission type
colors <- c("Automatic (0)" = "green", "Manual (1)" = "yellow")

# Create the bar plot with colors and labels
barplot(cyl_am_tab, beside = TRUE, col = colors, 
        main = "Number of Cylinders by Transmission Type",
        xlab = "Number of Cylinders", ylab = "Frequency")

# Adding a legend for transmission type
legend("topright", legend = c("Automatic (0)", "Manual (1)"), fill = colors)
