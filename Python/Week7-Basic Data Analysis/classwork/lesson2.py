"""
Data Analysis Techniques: Filtering, Sorting, and Aggregating Data

1. Filtering Data:
   - Basic Filtering: To filter data based on conditions, you can use boolean indexing.
"""

import pandas as pd

# Sample DataFrame (replace with your actual data)
data = {'Name': ['Alice', 'Bob', 'Charlie', 'David', 'Eve'],
        'Age': [25, 30, 35, 28, 40],
        'City': ['New York', 'Los Angeles', 'New York', 'Chicago', 'Los Angeles']}
df = pd.DataFrame(data)

# Get rows where Age is greater than 30
df_filtered = df[df['Age'] > 30]
print("Filtered DataFrame (Age > 30):\n", df_filtered)

"""
   - Multiple Conditions: You can combine multiple conditions using logical operators.
"""
# Get rows where Age is greater than 30 and City is 'New York'
df_filtered = df[(df['Age'] > 30) & (df['City'] == 'New York')]
print("\nFiltered DataFrame (Age > 30 and City == 'New York'):\n", df_filtered)

"""
2. Sorting Data:
   - Sorting by Columns: You can sort the DataFrame by a column in ascending or descending order.
"""
df_sorted = df.sort_values(by='Age', ascending=False)  # Sort by Age in descending order
print("\nSorted DataFrame (by Age descending):\n", df_sorted)

"""
   - Sorting by Multiple Columns:
"""
df_sorted = df.sort_values(by=['Age', 'City'], ascending=[True, False])
print("\nSorted DataFrame (by Age ascending, then City descending):\n", df_sorted)

"""
3. Aggregating Data:
   - Groupby: pandas groupby method is essential for aggregating data based on one or more columns.
"""
grouped = df.groupby('City').agg({'Age': 'mean', 'Name': 'count'})
print("\nGrouped DataFrame (by City, mean Age and count of Names):\n", grouped)

"""
   - Summary Statistics: pandas provide several built-in functions to calculate summary statistics.
"""
print("\nSummary Statistics:")
print("Mean of 'Age' column:", df['Age'].mean())  # Mean of 'Age' column
print("Sum of 'Age' column:", df['Age'].sum())   # Sum of 'Age' column
print("Max of 'Age' column:", df['Age'].max())   # Maximum of 'Age' column
