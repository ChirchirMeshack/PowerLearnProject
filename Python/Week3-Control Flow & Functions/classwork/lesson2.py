# Python Loops
# In computer programming, loops are used to repeat a block of code. We perform a process of iteration (repeating tasks).

# There are 2 types of loops in Python:
# 1. for loop
# 2. while loop

# Programming languages like Python implement two types of iteration:
# - Indefinite iteration: The number of times the loop is executed depends on how many times a condition is met.
# - Definite iteration: The number of times the loop will be executed is defined in advance (usually based on the collection size).

# For Loops
# In a for loop, we will know in advance how many times the loop will need to iterate because we will be working on a collection with a predefined length.
# With for loops, on each iteration, we will be able to perform an action on each element of the collection.

# For loop syntax:
# Example of a for loop
fruits = ["apple", "banana", "cherry"]

for fruit in fruits:
    print(f"I love {fruit}!")
# Output:
# I love apple!
# I love banana!
# I love cherry!

# Example Explanation:
# - List: fruits is a list containing "apple", "banana", and "cherry".
# - Loop: The for loop iterates through each item in the list.
# - Action: During each iteration, fruit represents the current item, and print outputs a message for each fruit.

# For Loops: Using Range
# A range is a series of values between two numeric intervals.
# We use Python's built-in function range() to define a range of values.

# Example of a for loop with range
for number in range(1, 6):  # Loops from 1 to 5
    print(f"Number: {number}")
# Output:
# Number: 1
# Number: 2
# Number: 3
# Number: 4
# Number: 5

# While Loops
# A while loop performs a set of instructions as long as a given condition is true.

# While loop structure
# Example of a while loop
count = 1

while count <= 5:
    print(f"Count: {count}")
    count += 1  # Increment the counter
# Output:
# Count: 1
# Count: 2
# Count: 3
# Count: 4
# Count: 5

# Explanation:
# - Initialization: count = 1 sets the starting value.
# - Condition: while count <= 5 keeps the loop running as long as count is less than or equal to 5.
# - Action: Inside the loop:
#   - It prints the current value of count.
#   - The count variable is incremented by 1 (count += 1) to eventually meet the exit condition.

# Loop controls: Break and continue
# The break statement is used to terminate the loop immediately when it is encountered.
# Example of loop controls: break and continue
for number in range(1, 10):  # Loop through numbers 1 to 9
    if number == 5:
        print("Breaking the loop at 5")
        break  # Exit the loop when number is 5
    elif number % 2 == 0:
        print(f"Skipping {number} because it's even")
        continue  # Skip the rest of the loop body for even numbers
    print(f"Processing number: {number}")
# Output:
# Processing number: 1
# Skipping 2 because it's even
# Processing number: 3
# Skipping 4 because it's even
# Breaking the loop at 5

# Python continue Statement
# The continue statement is used to skip the current iteration of the loop and the control flow of the program goes to the next iteration.

# Nested Loops
# In Python, loops can be nested inside other loops. Nested loops can be used to access items of lists which are inside other lists.

# Example of a nested loop
for i in range(1, 4):  # Outer loop
    for j in range(1, 4):  # Inner loop
        print(f"Outer loop: {i}, Inner loop: {j}")
# Output:
# Outer loop: 1, Inner loop: 1
# Outer loop: 1, Inner loop: 2
# Outer loop: 1, Inner loop: 3
# Outer loop: 2, Inner loop: 1
# Outer loop: 2, Inner loop: 2
# Outer loop: 2, Inner loop: 3
# Outer loop: 3, Inner loop: 1
# Outer loop: 3, Inner loop: 2
# Outer loop: 3, Inner loop: 3