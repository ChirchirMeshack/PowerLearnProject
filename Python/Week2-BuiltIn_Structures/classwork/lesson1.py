# Python Lists
# Lists are used to store multiple data at once. For example:
# Suppose we need to record the ages of 5 students. Instead of creating 5 separate variables, we can simply create a list.

# Create a Python List
# A list is created in Python by placing items inside [], separated by commas.
numbers = [1, 2, 3]  # Example of a list with 3 integer items
print(numbers)  # Output: [1, 2, 3]

# A list can have any number of items and they may be of different types (integer, float, string, etc.).
mixed_list = [1, 2.5, "Python"]
print(mixed_list)  # Output: [1, 2.5, 'Python']

# Access Python List Elements
# Each item in a list is associated with a number called the index.
languages = ["Python", "Java", "C++"]
print(languages[0])  # Output: Python
print(languages[2])  # Output: C++

# List Indexing in Python
# The list index always starts with 0. Hence, the first element of a list is present at index 0, not 1.

# Slicing of a Python List
# It is possible to access a section of items from the list using the slicing operator :.
my_list = [10, 20, 30, 40, 50, 60]
print(my_list[2:5])  # Output: [30, 40, 50]
print(my_list[5:])   # Output: [60]
print(my_list[:])    # Output: [10, 20, 30, 40, 50, 60]

# Note: The start index is inclusive, but the end index is exclusive.

# Add Elements to a Python List
# 1. Using append()
numbers.append(32)
print(numbers)  # Output: [1, 2, 3, 32]

# 2. Using extend()
prime_numbers = [2, 3, 5]
even_numbers = [4, 6, 8]
prime_numbers.extend(even_numbers)
print(prime_numbers)  # Output: [2, 3, 5, 4, 6, 8]

# Change List Items
# Lists are mutable, meaning we can change items of a list by assigning new values.
languages[1] = "JavaScript"
print(languages)  # Output: ['Python', 'JavaScript', 'C++']

# Remove an Item From a List
# 1. Using del()
del languages[2]
print(languages)  # Output: ['Python', 'JavaScript']

# 2. Using remove()
languages.remove("Python")
print(languages)  # Output: ['JavaScript']

# Python List Methods
# Python has many useful list methods that make it easy to work with lists.

# Iterating through a List
for language in languages:
    print(language)  # Output: JavaScript

# Python List Comprehension
# A concise and elegant way to create lists.
squares = [x**2 for x in range(5)]
print(squares)  # Output: [0, 1, 4, 9, 16]

# Tuples
# A tuple in Python is similar to a list. The difference is that tuples are immutable.

# Creating a Tuple
products = ("Laptop", 1200, "Phone", 800)
print(products)  # Output: ('Laptop', 1200, 'Phone', 800)

# Create a Python Tuple With One Element
single_tuple = ("hello",)
print(type(single_tuple))  # Output: <class 'tuple'>

# Access Python Tuple Elements
# 1. Indexing
letters = ('a', 'b', 'c', 'd', 'e', 'f')
print(letters[0])  # Output: a
print(letters[5])  # Output: f

# 2. Negative Indexing
print(letters[-1])  # Output: f
print(letters[-3])  # Output: d

# Python Tuple Methods
# Tuples do not have methods to add or remove items. Only the following methods are available:
my_tuple = ('p', 'y', 't', 'h', 'o', 'n')
print(my_tuple.count('p'))  # Output: 1
print(my_tuple.index('h'))  # Output: 3

# examples of tuple in real life include
# 1. Storing coordinates (x, y)
# 2. Representing RGB color values
# 3. Storing fixed configuration settings