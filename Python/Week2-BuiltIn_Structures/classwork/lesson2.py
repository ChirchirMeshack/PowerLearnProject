# Python Dictionary
# A dictionary in Python is an ordered collection (starting from Python 3.7) of items.
# It stores elements in key/value pairs. Here, keys are unique identifiers that are associated with each value.

# Example: Storing information about countries and their capitals
# If we want to store information about countries and their capitals, we can create a dictionary with country names as keys and capitals as values.

# Create a dictionary in Python
capital_city = {
    "Nepal": "Kathmandu",
    "Italy": "Rome",
    "England": "London"
}
print(capital_city)  # Output: {'Nepal': 'Kathmandu', 'Italy': 'Rome', 'England': 'London'}

# Note: Keys and values can be of different data types.
# Example 1: Python Dictionary with integer keys and string values
numbers = {
    1: "One",
    2: "Two",
    3: "Three"
}
print(numbers)  # Output: {1: 'One', 2: 'Two', 3: 'Three'}

# Add Elements to a Python Dictionary
# We can add elements to a dictionary using the name of the dictionary with [].
capital_city["Japan"] = "Tokyo"
print(capital_city)  # Output: {'Nepal': 'Kathmandu', 'Italy': 'Rome', 'England': 'London', 'Japan': 'Tokyo'}

# Change Value of Dictionary
# We can also use [] to change the value associated with a particular key.
student_id = {
    111: "Eric",
    112: "Kyle",
    113: "Butters"
}
student_id[112] = "Stan"
print(student_id)  # Output: {111: 'Eric', 112: 'Stan', 113: 'Butters'}

# Accessing Elements from Dictionary
# In Python, we use the keys to access their corresponding values.
print(capital_city["Nepal"])  # Output: Kathmandu
print(capital_city["Italy"])  # Output: Rome

# If we try to access the value of a key that doesn't exist, we'll get an error.
# Example:
# print(capital_city["Germany"])  # KeyError: 'Germany'

# Removing Elements from Dictionary
# We use the del statement to remove an element from the dictionary.
del student_id[111]
print(student_id)  # Output: {112: 'Stan', 113: 'Butters'}

# We can also delete the whole dictionary using the del statement.
del student_id
# print(student_id)  # NameError: name 'student_id' is not defined

# Python Dictionary Methods
# Python provides several methods to work with dictionaries, such as keys(), values(), items(), get(), etc.

# Dictionary Membership Test
# We can test if a key is in a dictionary or not using the keyword `in`.
squares = {1: 1, 2: 4, 3: 9, 4: 16}
print(1 in squares)  # Output: True
print(5 in squares)  # Output: False

# Note: The membership test is only for the keys and not for the values.

# Iterating Through a Dictionary
# We can iterate through each key in a dictionary using a loop.
for key in squares:
    print(key, squares[key])
# Output:
# 1 1
# 2 4
# 3 9
# 4 16