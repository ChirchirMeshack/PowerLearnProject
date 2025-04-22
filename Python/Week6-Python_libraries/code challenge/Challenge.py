# Challenge: Use popular Python libraries to perform useful tasks!

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import requests

# 1. Create a NumPy array of numbers from 1 to 10 and calculate the mean.
arr = np.arange(1, 11)
print("NumPy array:", arr)
print("Mean:", np.mean(arr))

# 2. Load a small dataset into a pandas DataFrame and display summary statistics.
data = {
    'Name': ['Alice', 'Bob', 'Charlie'],
    'Age': [25, 30, 22],
    'Score': [88, 92, 95]
}
df = pd.DataFrame(data)
print("\nPandas DataFrame:")
print(df)
print("\nSummary statistics:")
print(df.describe())

# 3. Fetch data from a public API using requests and print a key piece of information.
response = requests.get('https://api.github.com')
if response.status_code == 200:
    data = response.json()
    print("\nGitHub API current user URL:", data.get('current_user_url'))
else:
    print("\nFailed to fetch data from GitHub API.")

# 4. Plot a simple line graph using matplotlib (e.g., a list of numbers).
x = [1, 2, 3, 4, 5]
y = [2, 4, 6, 8, 10]
plt.plot(x, y, marker='o')
plt.title("Simple Line Graph")
plt.xlabel("X values")
plt.ylabel("Y values")
plt.grid(True)
plt.show()
