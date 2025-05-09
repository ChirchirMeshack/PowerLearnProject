import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.datasets import load_iris

# Task 1: Load and Explore the Dataset
try:
    # Load the Iris dataset
    iris = load_iris()
    df = pd.DataFrame(data=iris.data, columns=iris.feature_names)
    df['target'] = iris.target  # Add the target variable (species)
    print("Iris dataset loaded successfully!")
except Exception as e:
    print(f"An error occurred while loading the dataset: {e}")
    exit()

# Display the first few rows of the dataset
print("\nFirst 5 rows of the dataset:")
print(df.head())

# Explore the structure of the dataset
print("\nDataset information:")
print(df.info())

# Check for missing values
print("\nMissing values:")
print(df.isnull().sum())

# Clean the dataset by filling missing values (if any)
# For numerical columns, fill with the mean
for col in df.select_dtypes(include=['number']).columns:
    df[col] = df[col].fillna(df[col].mean())

# For categorical columns, fill with the mode
# No categorical columns to fill in this dataset

# Verify that there are no more missing values
print("\nMissing values after cleaning:")
print(df.isnull().sum())

# Task 2: Basic Data Analysis
# Compute basic statistics of numerical columns
print("\nBasic statistics of numerical columns:")
print(df.describe())

# Perform groupings on a categorical column and compute the mean of a numerical column for each group
print("\nMean sepal length by species:")
print(df.groupby('target')['sepal length (cm)'].mean())

# Task 3: Data Visualization
# Pairplot to show relationships between all numerical features, colored by species
sns.pairplot(df, hue='target', palette='viridis')
plt.title('Pairwise Relationships in the Iris Dataset')
plt.show()

# Violin plot to show the distribution of sepal length by species
plt.figure(figsize=(8, 6))
sns.violinplot(x='target', y='sepal length (cm)', data=df, palette='viridis')
plt.xlabel('Species')
plt.ylabel('Sepal Length (cm)')
plt.title('Distribution of Sepal Length by Species')
plt.show()

# Histogram of sepal length to understand its distribution
plt.figure(figsize=(8, 6))
plt.hist(df['sepal length (cm)'], bins=20, color='skyblue', edgecolor='black')
plt.xlabel('Sepal Length (cm)')
plt.ylabel('Frequency')
plt.title('Distribution of Sepal Length')
plt.grid(axis='y', alpha=0.75)
plt.show()

# Scatter plot to visualize the relationship between sepal length and sepal width
plt.figure(figsize=(8, 6))
plt.scatter(df['sepal length (cm)'], df['sepal width (cm)'], c=df['target'], cmap='viridis')
plt.xlabel('Sepal Length (cm)')
plt.ylabel('Sepal Width (cm)')
plt.title('Sepal Length vs. Sepal Width')
plt.colorbar(label='Species')
plt.grid(True)
plt.show()
