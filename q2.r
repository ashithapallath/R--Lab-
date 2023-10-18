# Define a function to encrypt a single character
encrypt_char <- function(char, shift) {
  if (char %in% letters) {
    base <- utf8ToInt("a")
  } else if (char %in% LETTERS) {
    base <- utf8ToInt("A")
  } else {
    return(char)  # Return the character as-is if it's not a letter
  }
  
  # Perform the Caesar cipher encryption
  encrypted_char <- intToUtf8((utf8ToInt(char) - base + shift) %% 26 + base)
  return(encrypted_char)
}

# Read the sentence and shift value from the user
sentence <- readline("Enter a sentence: ")
shift <- as.integer(readline("Enter the shift value: "))

# Encrypt the sentence using the encrypt_char function
encrypted_sentence <- sapply(strsplit(sentence, NULL), encrypt_char, shift = shift)
encrypted_sentence <- paste(encrypted_sentence, collapse = "")

# Print the encrypted sentence
cat("Encrypted sentence: ", encrypted_sentence, "\n")
