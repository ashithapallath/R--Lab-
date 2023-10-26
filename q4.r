# Function to generate a random password
generate_password <- function(length) {
  # Define character sets
  uppercase_letters <- LETTERS
  lowercase_letters <- letters
  digits <- 0:9
  special_characters <- c('!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', '[', ']', '{', '}', '|', ';', ':', ',', '.', '<', '>')
  
  all_characters <- c(uppercase_letters, lowercase_letters, as.character(digits), special_characters)
  
  if (length < 4) {
    cat("Password length must be at least 4 characters.\n")
    return(NULL)
  }
  
  # Initialize the password with one character from each category
  initial_chars <- c(sample(uppercase_letters, 1),
                     sample(lowercase_letters, 1),
                     sample(digits, 1),
                     sample(special_characters, 1))
  
  remaining_length <- length - 4
  
  # Add random characters to complete the password
  password <- c(initial_chars, sample(all_characters, remaining_length, replace = TRUE))
  
  # Shuffle the password characters to randomize the order
  password <- paste(sample(password), collapse = '')
  return(password)
}

# Get user input for the desired password length
while (TRUE) {
  password_length <- as.integer(readline("Enter the desired password length: "))
  
  if (!is.na(password_length) && password_length >= 4) {
    break
  }
  
  cat("Please enter a valid integer of at least 4 for password length.\n")
}

generated_password <- generate_password(password_length)

if (!is.null(generated_password)) {
  cat("Generated Password: ", generated_password, "\n")
}
