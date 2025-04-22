# 🧠 What is NumPy?
# NumPy stands for Numerical Python.
# It’s used for:
# - Working with large arrays and matrices
# - Performing math operations on arrays

# 🔧 Installing NumPy
# pip install numpy

import numpy as np

# Create a simple array
my_array = np.array([1, 2, 3, 4, 5])
print("Array:", my_array)

# Perform operations
print("Array * 2:", my_array * 2)         # Multiply each element by 2
print("Mean:", np.mean(my_array))        # Average of the array
print("Square Roots:", np.sqrt(my_array))

# 🎲 Practice Task (NumPy)
# Create an array with numbers 10 to 50
practice_array = np.arange(10, 51)
print("Practice Array:", practice_array)

# Find the maximum and minimum values
print("Max value:", np.max(practice_array))
print("Min value:", np.min(practice_array))

# Multiply all elements by 3
print("Array * 3:", practice_array * 3)
