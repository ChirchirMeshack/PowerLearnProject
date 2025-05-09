"""
Data Visualization Basics with matplotlib

Introduction to matplotlib:
matplotlib is a comprehensive library for creating static, animated, and interactive visualizations in Python. 
It's often used for visualizing the results of data analysis. The most common form of visualization is through line plots, scatter plots, bar plots, and histograms.

Basic Plotting with matplotlib:
"""

import matplotlib.pyplot as plt
import pandas as pd

# Sample DataFrame (replace with your actual data)
data = {'Name': ['Alice', 'Bob', 'Charlie', 'David', 'Eve'],
        'Age': [25, 30, 35, 28, 40],
        'City': ['New York', 'Los Angeles', 'New York', 'Chicago', 'Los Angeles']}
df = pd.DataFrame(data)

"""
1. Simple Line Plot:
"""
# Plotting Age vs. Name
plt.plot(df['Name'], df['Age'])
plt.xlabel('Name')
plt.ylabel('Age')
plt.title('Name vs Age')
plt.show()

"""
2. Bar Plot:
"""
# Plotting a bar chart for Age by City
df.groupby('City')['Age'].mean().plot(kind='bar')
plt.xlabel('City')
plt.ylabel('Average Age')
plt.title('Average Age by City')
plt.show()

"""
3. Histogram:
"""
# Plotting a histogram for Age
df['Age'].plot(kind='hist', bins=10)
plt.xlabel('Age')
plt.title('Age Distribution')
plt.show()

"""
4. Scatter Plot:
"""
# Plotting a scatter plot of Age vs. City
df.plot(kind='scatter', x='City', y='Age')
plt.title('City vs Age')
plt.show()

"""
Customizing Plots:

Adding Labels and Title:
plt.xlabel('City')
plt.ylabel('Average Age')
plt.title('Average Age by City')

Color and Style:
"""
df['Age'].plot(kind='line', color='green', linestyle='--', linewidth=2)
plt.xlabel('Index')
plt.ylabel('Age')
plt.title('Age Line Plot with Custom Style')
plt.show()

"""
Best Practices for Working with Data and Basic Data Analysis:

1. Data Cleaning: Before analysis, always ensure the data is clean. This includes handling missing values (df.fillna()), removing duplicates (df.drop_duplicates()), and dealing with outliers.
"""
# Example of handling missing values
df_cleaned = df.fillna(df.mean(numeric_only=True))  # Fill NaN values with the mean of the column

# Example of removing duplicates
df_cleaned = df.drop_duplicates()

"""
2. Efficient Data Access: pandas provides several ways to read large datasets efficiently. For example, use chunksize to read large CSV files in chunks.

3. Handling Data Types: Ensure the data types of your columns are correct (e.g., using df['Age'] = df['Age'].astype(int)).
"""
# Example of changing data type
df['Age'] = df['Age'].astype(int)

"""
4. Documentation: When working on analysis, make sure to document your code and the reasoning behind each transformation or computation.

Additional Resources:
- pandas Documentation: https://pandas.pydata.org/pandas-docs/stable/
- matplotlib Documentation: https://matplotlib.org/stable/contents.html

By completing these exercises and concepts, learners will gain a solid foundation in handling and analyzing data using pandas and matplotlib. 
These skills will be essential for performing data-driven tasks like cleaning, analyzing, and visualizing data.
"""
