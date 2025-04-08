# Conditional Statements in Python
# Conditional statements help in the decision-making process.
# For example:
# "Are you hungry? If so, then eat" is a conditional statement.

# In this example:
# - "Are you hungry" is the boolean expression.
# - If "are you hungry" == True, the conditional statement will be executed, and you will eat.

# In computer programming, we use the if statement to run a block of code only when a certain condition is met.

# In Python, there are three forms of the if...else statement:
# 1. if statement
# 2. if...else statement
# 3. if...elif...else statement

# 1. Python if Statement
# The basic syntax for the if statement:
temperature = 30

if temperature > 25:
    print("It's a hot day!")  # Output: It's a hot day!

# Explanation:
# - If the condition (temperature > 25) is True, the code inside the body of if is executed.
# - If the condition is False, the code inside the body of if is skipped.

# Practice using if statements with:
# - Relational operators: (>, >=, <, <=)
# - Boolean operators: (and, or, not)

# 2. Python if...else Statement
# Syntax:
temperature = 20

if temperature > 25:
    print("It's a hot day!")
else:
    print("It's a cool day!")  # Output: It's a cool day!

# Explanation:
# - If the condition evaluates to True, the code inside if is executed, and the code inside else is skipped.
# - If the condition evaluates to False, the code inside else is executed, and the code inside if is skipped.

# 3. Python if...elif...else Statement
# The if...else statement is used to execute a block of code among two alternatives.
# If we need to make a choice between more than two alternatives, we use the if...elif...else statement.

# Syntax:
temperature = 15

if temperature > 25:
    print("It's a hot day!")
elif temperature > 15:
    print("It's a warm day!")
else:
    print("It's a cold day!")  # Output: It's a cold day!

# Explanation:
# - If condition1 evaluates to True, code block 1 is executed.
# - If condition1 evaluates to False, then condition2 is evaluated.
# - If condition2 is True, code block 2 is executed.
# - If condition2 is False, code block 3 is executed.

# Test Yourself:
# Write an if/elif/else statement for a college grading system:
# Grading system:
# - If grade is 90 or higher, print "A"
# - Else if grade is 80 or higher, print "B"
# - Else if grade is 70 or higher, print "C"
# - Else if grade is 60 or higher, print "D"
# - Else, print "F"

# Example solution:
grade = 85

if grade >= 90:
    print("A")
elif grade >= 80:
    print("B")  # Output: B
elif grade >= 70:
    print("C")
elif grade >= 60:
    print("D")
else:
    print("F")