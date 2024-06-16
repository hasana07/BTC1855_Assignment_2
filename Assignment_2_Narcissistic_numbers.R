#' Plan
#' Step 1: Read user input
#' Step 2: Check user input to see if it is numeric
#'  if F
#'    Print an error message prompting user to re-run code and try again
#'  if T
#'    Print a message saying it is numeric.
#' Step 3: Break down user input into a vector of digits
#' Step 4: Sum the cubes of each of the digits.
#' Step 5: Check if the sum is equal to the original user input
#'  if F:
#'    Print a message saying "(original user input) is not an Armstrong number."
#'  if T:
#'    Print a message saying "(original user input) is a narcissistic number."


# Prompt the user to enter a three digit positive number
three_dig <- readline(prompt = "Please enter a three digit positive number: ")

# Check if the user input is numeric. If not, print an error message and quit.

# Check if the number is narcissistic. A narcissistic number, or an Armstrong 
# number, is a number that is equal to the sum of the cubes of its own digits. 
# 153, 370, 371, 407 are three digit Armstrong numbers.

# Display the result with an appropriate message, e.g. “127 is not an Armstrong 
# number” or “370 is a narcissistic number” or any additional fun text you may 
# want to add.
