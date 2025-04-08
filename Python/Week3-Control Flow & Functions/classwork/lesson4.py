# Functions in Python
# Functions are a fundamental part of Python programming. They allow you to encapsulate reusable blocks of code 
# to make programs modular, easier to understand, and maintain.

# What is a Function?
# A function is a block of code designed to perform a specific task. You define a function once and can use it 
# multiple times throughout your code.

# Syntax:
# def function_name(parameters):
#     """Optional docstring explaining the function."""
#     # Code block
#     return value  # Optional return statement

# Types of Functions
# 1. Built-in Functions: Predefined functions in Python (e.g., print(), len(), type()).
# 2. User-defined Functions: Functions created by the user.

# Defining and Calling a Function
# Here’s how you define and call a function in Python:

# Function definition
def greet(name):
    """Greet a person by their name."""
    return f"Hello, {name}!"

# Function call
print(greet("Alice"))  # Output: Hello, Alice!

# Key Components of a Function
# - Function Name: Should be descriptive and follow naming conventions.
# - Parameters: Variables passed into the function.
# - Docstring: An optional description of what the function does.
# - Return Statement: Outputs a value from the function (optional).

# Parameters and Arguments
# Functions can accept zero or more arguments.

# 1. Positional Arguments:
def add(a, b):
    return a + b

print(add(3, 5))  # Output: 8

# 2. Default Arguments:
def greet(name="Guest"):
    return f"Hello, {name}!"

print(greet())  # Output: Hello, Guest!
print(greet("Alice"))  # Output: Hello, Alice!

# 3. Keyword Arguments:
def introduce(name, age):
    return f"My name is {name}, and I'm {age} years old."

print(introduce(age=25, name="Bob"))  # Output: My name is Bob, and I'm 25 years old.

# Returning Values
# A function can return values using the return statement.
def square(number):
    return number ** 2

result = square(4)
print(result)  # Output: 16

# Anonymous Functions: Lambda
# Python supports anonymous functions using the lambda keyword. They are useful for short, simple functions.

# Lambda function for adding two numbers
add = lambda x, y: x + y
print(add(3, 5))  # Output: 8

# Using lambda with map()
numbers = [1, 2, 3, 4]
squares = list(map(lambda x: x**2, numbers))
print(squares)  # Output: [1, 4, 9, 16]

# Recursive Functions
# A function can call itself, enabling recursive problem-solving.
def factorial(n):
    if n == 1:
        return 1
    return n * factorial(n - 1)

print(factorial(5))  # Output: 120

# Benefits of Functions
# - Reusability: Write once, and use multiple times.
# - Modularity: Break programs into smaller, manageable parts.
# - Improved Readability: Descriptive names make code easier to understand.

# Conclusion
# Functions are a powerful tool that makes your code cleaner, more efficient, and easier to maintain.
# Mastering their use is essential for any Python developer. Start experimenting with different types of functions 
# to understand their versatility!