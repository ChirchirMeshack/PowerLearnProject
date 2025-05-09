import pandas as pd

# Load the CSV file
try:
    df = pd.read_csv('sales_data.csv')
except FileNotFoundError:
    print("Error: sales_data.csv not found. Please make sure the file exists in the correct directory.")
    exit()

# Calculate the total revenue
total_revenue = df['Revenue ($)'].sum()

# Find the best-selling product
best_selling_product = df.groupby('Product')['Quantity Sold'].sum().idxmax()
best_selling_quantity = df.groupby('Product')['Quantity Sold'].sum().max()

# Identify the day with the highest sales
highest_sales_day = df.groupby('Date')['Revenue ($)'].sum().idxmax()

# Save the results to a new file
with open('sales_summary.txt', 'w') as f:
    f.write(f"Total Revenue: ${total_revenue:,.2f}\n")
    f.write(f"Best-Selling Product: {best_selling_product} ({best_selling_quantity} units sold)\n")
    f.write(f"Highest Sales Day: {highest_sales_day}\n")

# Print the insights in a user-friendly format
print(f"Total Revenue: ${total_revenue:,.2f}")
print(f"Best-Selling Product: {best_selling_product} ({best_selling_quantity} units sold)")
print(f"Highest Sales Day: {highest_sales_day}")
