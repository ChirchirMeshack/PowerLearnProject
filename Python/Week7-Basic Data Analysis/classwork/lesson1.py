"""
Introduction to Pandas: Creating, Reading, and Manipulating DataFrames

What is pandas?

pandas is an open-source Python library that provides high-performance, easy-to-use data structures and data analysis tools. 
It is primarily used for working with tabular data in the form of DataFrames. It allows you to efficiently manipulate, clean, and analyze structured data.

Key Data Structures:
- Series: A one-dimensional labeled array that can hold any data type (integers, strings, etc.).
- DataFrame: A two-dimensional, size-mutable, potentially heterogeneous tabular data structure with labeled axes (rows and columns).

Key Operations in pandas:

1. Creating DataFrames: 
   You can create a DataFrame by loading data from various formats or directly from Python data structures.
"""

import pandas as pd

# Creating DataFrame from a dictionary
data = {'Name': ['Alice', 'Bob', 'Charlie'],
        'Age': [25, 30, 35],
        'City': ['New York', 'Los Angeles', 'Chicago']}

df = pd.DataFrame(data)
print("Creating DataFrame from Dictionary:")
print(df)

"""
2. Reading Data: 
   pandas allows you to load data from multiple sources, such as CSV, Excel, SQL databases, etc.
"""
# Example: Reading data from a CSV file (assuming you have a file named 'data.csv' in the same directory)
# df_csv = pd.read_csv('data.csv')
# print("\nReading DataFrame from CSV:")
# print(df_csv.head())  # Prints the first 5 rows

"""
3. Manipulating DataFrames:
"""
# Selecting Columns: You can select a specific column
print("\nSelecting 'Age' column:")
print(df['Age'])  # Selects the Age column

# Filtering Rows: You can filter rows based on a condition
print("\nFiltering rows where Age > 30:")
print(df[df['Age'] > 30])  # Returns rows where Age > 30

# Adding/Removing Columns:
df['Country'] = ['USA', 'USA', 'USA']  # Adds a new column
print("\nDataFrame with new 'Country' column:")
print(df)

df.drop('Country', axis=1, inplace=True)  # Removes the 'Country' column
print("\nDataFrame after dropping 'Country' column:")
print(df)
