# Python Set
# A set is a collection of unique data. That is, elements of a set cannot be duplicated.

# Example: Suppose we want to store information about student IDs. Since student IDs cannot be duplicated, we can use a set.

# Create a Set in Python
# In Python, we create sets by placing all the elements inside curly braces {}, separated by commas.
numbers = {1, 2, 3, 4}
print(numbers)  # Output: {1, 2, 3, 4}

# A set can have any number of items and they may be of different types (integer, float, tuple, string, etc.).
mixed_set = {1, 2.5, "Python", (3, 4)}
print(mixed_set)  # Output: {1, 2.5, 'Python', (3, 4)}

# Note: A set cannot have mutable elements like lists, sets, or dictionaries as its elements.

# Create an Empty Set in Python
# Creating an empty set is a bit tricky. Empty curly braces {} will make an empty dictionary in Python.
empty_set = set()
empty_dictionary = {}
print(type(empty_set))  # Output: <class 'set'>
print(type(empty_dictionary))  # Output: <class 'dict'>

# Duplicate Items in a Set
# Let's see what happens if we try to include duplicate items in a set.
unique_set = {1, 2, 2, 3, 4, 4}
print(unique_set)  # Output: {1, 2, 3, 4}

# Add and Update Set Items in Python
# Sets are mutable. However, since they are unordered, indexing has no meaning.

# Add Items to a Set in Python
# In Python, we use the add() method to add an item to a set.
numbers.add(32)
print(numbers)  # Output: {1, 2, 3, 4, 32}

# Update Python Set
# The update() method is used to update the set with items from other collection types (lists, tuples, sets, etc.).
tech_companies = {"Google", "Microsoft", "Apple"}
companies = {"Amazon", "Netflix"}
companies.update(tech_companies)
print(companies)  # Output: {'Google', 'Microsoft', 'Apple', 'Amazon', 'Netflix'}

# Remove an Element from a Set
# We use the discard() method to remove the specified element from a set.
languages = {"Python", "Java", "C++"}
languages.discard("Java")
print(languages)  # Output: {'Python', 'C++'}

# Built-in Functions with Set
# Built-in functions like all(), any(), enumerate(), len(), max(), min(), sorted(), sum() etc. are commonly used with sets.

# Find Number of Set Elements
# We can use the len() method to find the number of elements present in a Set.
print(len(languages))  # Output: 2

# Python Set Operations
# Python Set provides different built-in methods to perform mathematical set operations like union, intersection, subtraction, and symmetric difference.

# Union of Two Sets
# The union of two sets A and B includes all the elements of set A and B.
A = {1, 2, 3}
B = {3, 4, 5}
print(A | B)  # Output: {1, 2, 3, 4, 5}
print(A.union(B))  # Output: {1, 2, 3, 4, 5}

# Intersection of Two Sets
# The intersection of two sets A and B includes the common elements between set A and B.
print(A & B)  # Output: {3}
print(A.intersection(B))  # Output: {3}

# Difference between Two Sets
# The difference between two sets A and B includes elements of set A that are not present in set B.
print(A - B)  # Output: {1, 2}
print(A.difference(B))  # Output: {1, 2}

# Symmetric Difference of Two Sets
# The symmetric difference between two sets A and B includes all elements of A and B without the common elements.
print(A ^ B)  # Output: {1, 2, 4, 5}
print(A.symmetric_difference(B))  # Output: {1, 2, 4, 5}

# Check if Two Sets are Equal
# We can use the == operator to check whether two sets are equal or not.
C = {1, 2, 3}
D = {3, 2, 1}
if C == D:
    print("Set C and Set D are equal")  # Output: Set C and Set D are equal