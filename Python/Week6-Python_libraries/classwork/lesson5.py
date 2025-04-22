# Data Visualization with Matplotlib
# Matplotlib is used to create charts and graphs like line graphs, bar charts, pie charts, and more.

# 🧰 What is Matplotlib?
# Matplotlib is a library that allows you to create visual representations of your data. It’s especially useful when working with data in Pandas or NumPy.

# 🔧 Installing Matplotlib
# pip install matplotlib

import matplotlib.pyplot as plt
import pandas as pd

# 📈 Basic Line Plot
x = [1, 2, 3, 4, 5]
y = [10, 20, 25, 30, 40]
plt.plot(x, y)
plt.title("Simple Line Plot")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.show()

# 📊 Bar Chart Example
names = ['Alice', 'Bob', 'Charlie']
scores = [85, 90, 78]
plt.bar(names, scores, color='skyblue')
plt.title("Student Scores")
plt.xlabel("Students")
plt.ylabel("Scores")
plt.show()

# 🍰 Pie Chart Example
activities = ['Sleeping', 'Eating', 'Coding', 'Gaming']
hours = [8, 2, 8, 6]
plt.pie(hours, labels=activities, autopct='%1.1f%%')
plt.title("Daily Activities")
plt.show()

# 📏 Histogram Example
ages = [22, 21, 20, 23, 24, 22, 20, 21, 22, 25, 23]
plt.hist(ages, bins=5, color='purple')
plt.title("Age Distribution")
plt.xlabel("Age")
plt.ylabel("Frequency")
plt.show()

# 💡 Combine with Pandas Example
data = {
    'Year': [2021, 2022, 2023],
    'Users': [1500, 3000, 5000]
}
df = pd.DataFrame(data)
plt.plot(df['Year'], df['Users'], marker='o')
plt.title("User Growth Over Time")
plt.xlabel("Year")
plt.ylabel("Users")
plt.grid(True)
plt.show()

# 🧪 Practice Tasks
# 1. Bar chart: 5 countries and their population
countries = ['Kenya', 'Uganda', 'Tanzania', 'Rwanda', 'Burundi']
population = [54000000, 45000000, 60000000, 13000000, 12000000]
plt.bar(countries, population, color='green')
plt.title("Population by Country")
plt.xlabel("Country")
plt.ylabel("Population")
plt.show()

# 2. Pie chart: Student's 24-hour day
activities = ['Sleep', 'Study', 'Eat', 'Play', 'Other']
hours = [8, 6, 2, 4, 4]
plt.pie(hours, labels=activities, autopct='%1.1f%%')
plt.title("Student's 24-Hour Day")
plt.show()

# 3. Line chart: Temperature changes during the day
periods = ['Morning', 'Noon', 'Evening', 'Night']
temps = [18, 28, 24, 20]
plt.plot(periods, temps, marker='o', color='red')
plt.title("Temperature Changes During the Day")
plt.xlabel("Time of Day")
plt.ylabel("Temperature (°C)")
plt.show()
