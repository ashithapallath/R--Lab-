# Read the paragraph, word to replace, and the replacing word from the user
paragraph <- readline("Enter the paragraph you want to process: ")
word_to_be_replaced <- readline("Enter the word you want to replace: ")
replacing_word <- readline("Enter the replacing word: ")

# Print the original paragraph
cat("Paragraph you have entered: ", paragraph, "\n")

# Split the paragraph into words
words_in_paragraph <- strsplit(paragraph, " ")[[1]]

# Calculate the total number of words
word_count <- length(words_in_paragraph)
cat("The total number of words is: ", word_count, "\n")

# Find the longest word and its length
longest_word <- ""
longest_word_length <- 0

# Calculate the total character count
total_char <- 0

for (word in words_in_paragraph) {
  total_char <- total_char + nchar(word)
  if (nchar(word) > longest_word_length) {
    longest_word <- word
    longest_word_length <- nchar(word)
  }
}

# Replace the specified word in the paragraph
replaced_strings <- gsub(word_to_be_replaced, replacing_word, paragraph)

# Print the modified paragraph
cat("Modified paragraph: ", replaced_strings, "\n")

# Calculate the average word length
average_character_count <- total_char / word_count
cat("The average word length is: ", average_character_count, "\n")

# Print the longest word and its length
cat("The longest word is '", longest_word, "' with length ", longest_word_length, "\n")
