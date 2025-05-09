import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Task 1: Load and Explore the Dataset
try:
    # Load the dataset
    df = pd.read_csv('owid-covid-data.csv')  
    print("Dataset loaded successfully!")
except FileNotFoundError:
    print("Error: The file 'owid-covid-data.csv' was not found. Please check the file path.")
    exit()
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
for col in df.select_dtypes(include=['object']).columns:
    df[col] = df[col].fillna(df[col].mode()[0])

# Verify that there are no more missing values
print("\nMissing values after cleaning:")
print(df.isnull().sum())

# Task 2: Basic Data Analysis
# Compute basic statistics of numerical columns
print("\nBasic statistics of numerical columns:")
print(df.describe())

# Perform groupings on a categorical column and compute the mean of a numerical column for each group
print("\nMean total cases by continent:")
print(df.groupby('continent')['total_cases'].mean())

# Task 3: Data Visualization
# Line chart showing trends over time (for a specific country)
try:
    country = 'USA'  # You can change this to any country in the dataset
    df['date'] = pd.to_datetime(df['date'])
    df_country = df[df['location'] == country].set_index('date')
    plt.figure(figsize=(12, 6))
    plt.plot(df_country['total_cases'])
    plt.xlabel('Date')
    plt.ylabel('Total Cases')
    plt.title(f'Total COVID-19 Cases in {country} Over Time')
    plt.grid(True)
    plt.show()
except KeyError:
    print("No 'date' column found. Skipping line chart.")
except Exception as e:
    print(f"An error occurred while creating the line chart: {e}")

# Bar chart showing the comparison of a numerical value across categories (e.g., total deaths by continent)
plt.figure(figsize=(10, 6))
sns.barplot(x=df['continent'], y=df['total_deaths'])
plt.xlabel('Continent')
plt.ylabel('Total Deaths')
plt.title('Total COVID-19 Deaths by Continent')
plt.xticks(rotation=45)
plt.show()

# Histogram of a numerical column to understand its distribution (e.g., total cases)
plt.figure(figsize=(8, 6))
plt.hist(df['total_cases'], bins=50)
plt.xlabel('Total Cases')
plt.ylabel('Frequency')
plt.title('Distribution of Total COVID-19 Cases')
plt.show()

# Scatter plot to visualize the relationship between two numerical columns (e.g., total cases vs. total deaths)
plt.figure(figsize=(8, 6))
plt.scatter(df['total_cases'], df['total_deaths'])
plt.xlabel('Total Cases')
plt.ylabel('Total Deaths')
plt.title('Total Cases vs. Total Deaths')
plt.show()
