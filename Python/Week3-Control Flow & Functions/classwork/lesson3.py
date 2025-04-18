# List Comprehensions in Python
# List comprehensions provide a concise and elegant way to create and manipulate lists.
# They offer a more readable and expressive alternative to traditional loops for generating lists.

# What is a List Comprehension?
# A list comprehension is a compact syntax for creating a list by evaluating an expression for each element in an iterable,
# optionally filtering elements based on a condition.

# Syntax:
# [expression for item in iterable if condition]

# - expression: The value or transformation applied to each element.
# - item: A variable that represents each element in the iterable.
# - iterable: A sequence (like a list, tuple, or range) to iterate over.
# - condition: (Optional) A filter that determines whether to include the element.

# Basic Example
# Traditional loop
squares = []
for x in range(5):
    squares.append(x**2)

# List comprehension
squares = [x**2 for x in range(5)]
print(squares)  # Output: [0, 1, 4, 9, 16]

# Explanation:
# The list comprehension [x**2 for x in range(5)] creates a list of squares of numbers from 0 to 4.

# Using Conditions in List Comprehensions
# You can include a condition to filter items.
# List comprehension with a condition
even_numbers = [x for x in range(10) if x % 2 == 0]
print(even_numbers)  # Output: [0, 2, 4, 6, 8]

# Nested List Comprehensions
# List comprehensions can be nested to handle complex operations, such as creating a matrix.
# Create a 3x3 matrix using nested list comprehensions
matrix = [[i * j for j in range(1, 4)] for i in range(1, 4)]
print(matrix)  # Output: [[1, 2, 3], [2, 4, 6], [3, 6, 9]]

# Examples of List Comprehensions

# 1. Transforming Data:
names = ["Alice", "Bob", "Charlie"]
uppercased_names = [name.upper() for name in names]
print(uppercased_names)  # Output: ['ALICE', 'BOB', 'CHARLIE']

# 2. Filtering Data:
numbers = [10, 15, 20, 25, 30]
divisible_by_5 = [num for num in numbers if num % 5 == 0]
print(divisible_by_5)  # Output: [10, 15, 20, 25, 30]

# 3. Flattening a List:
nested_list = [[1, 2], [3, 4], [5, 6]]
flat_list = [item for sublist in nested_list for item in sublist]
print(flat_list)  # Output: [1, 2, 3, 4, 5, 6]

# Advantages of List Comprehensions
# - Conciseness: More compact than traditional loops.
# - Readability: Easier to understand when used appropriately.
# - Performance: Faster than loops in many cases due to optimization.

# When Not to Use List Comprehensions
# While list comprehensions are powerful, they can become hard to read if they are too complex.
# In such cases, traditional loops or generator functions may be more appropriate.

# Complex list comprehension (less readable)
result = [x * y for x in range(10) for y in range(5) if x + y > 5]

# Better as a loop (more readable)
result = []
for x in range(10):
    for y in range(5):
        if x + y > 5:
            result.append(x * y)

# Conclusion
# List comprehensions are a versatile and efficient tool in Python, enabling you to write cleaner and faster code.
# They are ideal for transforming, filtering, or generating lists in a Pythonic way.
# Start practicing them to enhance your coding skills!