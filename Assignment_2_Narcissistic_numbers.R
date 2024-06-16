#' Plan
#' Step 1: Read user input
#' Step 2: Check user input to see if it is numeric and a three digit positive 
#'         number
#'  if it is not numeric
#'    Print an error message prompting user to re-run code and try again
#'  if it is numeric but less than or equal to 99
#'    Print an error message saying it is too small and to try again
#'  if it is numeric but greater than or equal to 1000
#'    Print an error message saying it is too big and to try again.
#'  if everything is good
#'    Print a message saying thank you.
#' Step 3: Break down user input into a vector of digits
#' Step 4: Sum the cubes of each of the digits.
#' Step 5: Check if the sum is equal to the original user input
#'  if F:
#'    Print a message saying "(original user input) is not an Armstrong number."
#'  if T:
#'    Print a message saying "(original user input) is a narcissistic number."


# Prompt the user to enter a three digit positive number
three_dig <- readline(prompt = "Please enter a three digit positive number: ")

# Convert user input into an object of type "numeric" to use in conditions below.
three_dig_num <- as.numeric(three_dig)

# If it returns TRUE for the object (as in it is NA), that means the user input 
# was not a number.
if (is.na(three_dig_num)) {
  print("Your entry is not a number. Please try again.")
  
# We need a three digit positive number, which it means it cannot be less than 
# or equal to 99 OR greater than or equal to 1000. If it is, a new input must 
# be entered.
} else if (99 >= three_dig_num) {
  print("Your number is too small! Please try again.")
} else if (three_dig_num >= 1000) {
  print("Your number is too big! Please try again.")

# If the user input passed all of the above conditions, we can then check if it 
# is an Armstrong number.
} else {
  print("Thank you! Let's see if it is narcissistic.")
}

# Using the original user input, which was of type "string", split the numbers 
# into digits. By using double square brackets, I am extracting the elements of
# the output, rather than the list itself that contains the digit characters.
digs <- strsplit(three_dig, "")[[1]]

# The individual digits are converted back into type "numeric", so that each of 
# the numbers can be cubed.
digs_cube <- as.numeric(digs) ^ 3

# Each of the digits are summed and saved to be compared to the original user 
# input.
digs_cube_sum <- sum(digs_cube)

# Check if the number is narcissistic. A narcissistic number, or an Armstrong 
# number, is a number that is equal to the sum of the cubes of its own digits. 
# 153, 370, 371, 407 are three digit Armstrong numbers.

# If the sum of the cubes does not equal to the original user input, it will
# return a statement stating that it was not an Armstrong number. Otherwise, if
# they do equal to each other, it will return a statement stating that it is
# a narcissistic number.
if (three_dig_num != digs_cube_sum) {
  print(paste(three_dig, "is not an Armstrong number."))
} else {
  print(paste(three_dig, "is a  narcissistic number. YAY!!"))
}