# Python Strings
# In computer programming, a string is a sequence of characters.
# For example, "hello" is a string containing a sequence of characters 'h', 'e', 'l', 'l', and 'o'.

# We use single quotes or double quotes to represent a string in Python.
# Example:
string1 = "Python Programming"
print(string1)  # Output: Python Programming

# Example: Python String
name = "Python"
message = "I love Python"
print(name)     # Output: Python
print(message)  # Output: I love Python

# Access String Characters in Python
# We can access the characters in a string in three ways:

# 1. Indexing
# One way is to treat strings as a list and use index values.
greeting = "Hello"
print(greeting[0])  # Output: H
print(greeting[4])  # Output: o

# 2. Negative Indexing
# Similar to a list, Python allows negative indexing for its strings.
print(greeting[-1])  # Output: o
print(greeting[-5])  # Output: H

# 3. Slicing
# Access a range of characters in a string by using the slicing operator colon :
print(greeting[1:4])  # Output: ell
print(greeting[:])    # Output: Hello

# Note: If we try to access an index out of the range or use numbers other than an integer, we will get errors.

# Python Strings are immutable
# In Python, strings are immutable. That means the characters of a string cannot be changed.
immutable_string = "Python"
# immutable_string[0] = "J"  # This will raise an error

# However, we can assign the variable name to a new string.
immutable_string = "Java"
print(immutable_string)  # Output: Java

# Python Multiline String
# We can also create a multiline string in Python using triple double quotes """ or triple single quotes '''.
multiline_string = """This is a
multiline string."""
print(multiline_string)
# Output:
# This is a
# multiline string.

# Python String Operations
# 1. Compare Two Strings
str1 = "Python"
str2 = "Java"
str3 = "Python"
print(str1 == str2)  # Output: False
print(str1 == str3)  # Output: True

# 2. Join Two or More Strings
greet = "Hello"
name = "Alice"
print(greet + " " + name)  # Output: Hello Alice

# Iterate Through a Python String
for char in "Python":
    print(char)
# Output:
# P
# y
# t
# h
# o
# n

# Python String Length
# We use the len() method to find the length of a string.
print(len("Python"))  # Output: 6

# String Membership Test
# We can test if a substring exists within a string or not, using the keyword `in`.
print("Py" in "Python")  # Output: True
print("Java" in "Python")  # Output: False

# Escape Sequences in Python
# The escape sequence is used to escape some of the characters present inside a string.
# Suppose we need to include both double quote and single quote inside a string:
escaped_string = "He said, \"Python is amazing!\""
print(escaped_string)  # Output: He said, "Python is amazing!"

# Python String Formatting (f-Strings)
# Python f-Strings make it really easy to print values and variables.
name = "Alice"
country = "Kenya"
print(f"{name} is from {country}")  # Output: Alice is from Kenya