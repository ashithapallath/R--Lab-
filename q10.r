# Function to reverse a list using recursion
reverse_list <- function(lst) {
  if (length(lst) == 1) {
    return(lst)
  } else {
    return(c(reverse_list(lst[-1]), lst[1]))
  }
}

# Example list
input_list <- list(1, 2, 3, 4, 5)

# Reverse the list
reversed_list <- reverse_list(input_list)

# Print the reversed list
cat("Original List: ", unlist(input_list), "\n")
cat("Reversed List: ", unlist(reversed_list), "\n")
