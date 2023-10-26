# Function to check if a string is a palindrome
check_palindrome <- function(input_string) {
  # Remove spaces and convert to lowercase for a more flexible check
  cleaned_string <- tolower(gsub(" ", "", input_string))
  
  # Reverse the cleaned string
  reversed_string <- rev(strsplit(cleaned_string, NULL)[[1]])
  
  # Combine the reversed characters into a string
  reversed_word <- paste(reversed_string, collapse = "")
  
  # Check if the cleaned string and the reversed string are the same
  return(cleaned_string == reversed_word)
}

# Get user input
input_string <- readline(prompt = "Enter a string: ")

# Check if the input is a palindrome
palindrome <- check_palindrome(input_string)

if (palindrome) {
  cat("The input string '", input_string, "' is a palindrome.\n")
} else {
  cat("The input string '", input_string, "' is not a palindrome.\n")
}
