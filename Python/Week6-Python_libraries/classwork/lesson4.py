# 📊 What is Pandas?
# Pandas is used for data manipulation and analysis.
# It allows you to:
# - Work with tables (just like Excel or Google Sheets!)
# - Clean and filter data easily
# - Read from CSV, Excel, JSON, etc.

# 🔧 Installing Pandas
# pip install pandas

import pandas as pd

# Create a DataFrame (table-like structure)
data = {
    'Name': ['Alice', 'Bob', 'Charlie'],
    'Age': [24, 30, 22],
    'Score': [85, 90, 95]
}

df = pd.DataFrame(data)
print(df)

# Access column
print("Names:", df['Name'])

# Filter rows
print("Scores above 90:")
print(df[df['Score'] > 90])

# 📁 Reading CSV Files with Pandas
# df = pd.read_csv('students.csv')
# print(df.head())  # Show first 5 rows

# 📊 Practice Task (Pandas)
# Create a DataFrame with 3 students: name, age, and grade.
students = pd.DataFrame({
    'Name': ['David', 'Eva', 'Frank'],
    'Age': [21, 23, 20],
    'Grade': [45, 78, 88]
})

# Add a column called “Passed” where grade > 50 = True.
students['Passed'] = students['Grade'] > 50

print("\nAll students:")
print(students)

# Filter and display only students who passed.
print("\nStudents who passed:")
print(students[students['Passed']])
