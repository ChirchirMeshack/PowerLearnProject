# In computer programming, data types specify the type of data that can be stored inside a variable.
# For example:
num = 24  # Here, 24 (an integer) is assigned to the num variable. So the data type of num is of the int class.

# Python Data Types
# Data Types       Class                Description
# numeric          int, float, complex  Holds numeric values
# string           str                  Holds sequence of characters
# sequence         list, tuple, range   Holds collection of items
# mapping          dict                 Holds data in key-value pair form
# boolean          bool                 Holds either True or False
# set              set                  Holds collection of unique items

# Since everything is an object in Python programming, data types are actually classes,
# and variables are instances (objects) of these classes.

# Python Numeric Data Type
# In Python, the numeric data type is used to hold numeric values.
# Integers, floating-point numbers, and complex numbers fall under Python numbers category.
# They are defined as int, float, and complex classes in Python.

# int - holds signed integers of non-limited length.
# float - holds floating decimal points and it's accurate up to 15 decimal places.

# Example:
num1 = 55
num2 = 5.3
print(num1)  # Output: 55
print(num2)  # Output: 5.3

# Python List Data Type
# A list is an ordered collection of similar or different types of items separated by commas and enclosed within brackets [ ].
# Example:
languages = ["Python", "Dart", "Web", 23]
print(languages)  # Output: ['Python', 'Dart', 'Web', 23]

# Access List Items
# To access items from a list, we use the index number (0, 1, 2 ...).
print(languages[1])  # Output: Dart

# Python Tuple Data Type
# A tuple is an ordered sequence of items same as a list. The only difference is that tuples are immutable.
# Tuples once created cannot be modified.
# Example:
products = ('XBox', 499.99, "Habibi", 23)
print(products)  # Output: ('XBox', 499.99, 'Habibi', 23)

# Access Tuple Items
# Similar to lists, we use the index number to access tuple items in Python.
print(products[2])  # Output: Habibi

# Python String Data Type
# String is a sequence of characters represented by either single or double quotes.
# Example:
site_name = "Power Learn Project"
print(site_name)  # Output: Power Learn Project

# Python Set Data Type
# The Set is an unordered collection of unique items. Set is defined by values separated by commas inside braces { }.
# Example:
student_ids = {112, 114, 117, 113}
print(student_ids)  # Output: {112, 113, 114, 117}

# Note: Since sets are unordered collections, indexing has no meaning. Hence, the slicing operator [] does not work.

# Python Dictionary Data Type
# Python dictionary is an ordered collection of items. It stores elements in key/value pairs.
# Keys are unique identifiers that are associated with each value.
# Example:
capital_city = {"Kenya": "Nairobi", "Nigeria": "Lagos"}
print(capital_city)  # Output: {'Kenya': 'Nairobi', 'Nigeria': 'Lagos'}