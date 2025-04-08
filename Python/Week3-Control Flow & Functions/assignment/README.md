# DiscountCalculator

A simple Python script that calculates the final price of an item after applying a discount. The discount is only applied if the percentage is 20% or higher.

## Description

This script prompts the user to enter the original price of an item and a discount percentage. It then uses a function `calculate_discount` to determine the final price. A key feature is the conditional logic: the discount is subtracted from the original price *only if* the specified discount percentage is 20% or greater. Otherwise, the original price is returned. The script also includes basic input validation and error handling.

## Features

* Calculates the final price based on original price and discount percentage.
* Applies discount **only if** the percentage is 20% or more.
* Returns the original price if the discount percentage is less than 20%.
* Prompts the user for input via the command line.
* Includes basic input validation (checks for numeric values and non-negative inputs).
* Formats the output price nicely to two decimal places.
* Handles potential `ValueError` if non-numeric input is provided.

## Requirements

* Python 3.x

## How to Use

1.  **Save the Code:** Save the Python script to a file, for example, `discount_calculator.py`.
2.  **Open Terminal:** Open your terminal or command prompt.
3.  **Navigate:** Go to the directory where you saved `discount_calculator.py`.
4.  **Run the Script:** Execute the script using the Python interpreter:
    ```bash
    python discount_calculator.py
    ```
5.  **Follow Prompts:** The script will ask you to enter the original price and the discount percentage. Provide numeric values when prompted.

### Example Usage

**Scenario 1: Discount is applied (>= 20%)**
Okay, here is a README.md file suitable for documenting the Python script you created.

Markdown

# Conditional Discount Calculator

A simple Python script that calculates the final price of an item after applying a discount. The discount is only applied if the percentage is 20% or higher.

## Description

This script prompts the user to enter the original price of an item and a discount percentage. It then uses a function `calculate_discount` to determine the final price. A key feature is the conditional logic: the discount is subtracted from the original price *only if* the specified discount percentage is 20% or greater. Otherwise, the original price is returned. The script also includes basic input validation and error handling.

## Features

* Calculates the final price based on original price and discount percentage.
* Applies discount **only if** the percentage is 20% or more.
* Returns the original price if the discount percentage is less than 20%.
* Prompts the user for input via the command line.
* Includes basic input validation (checks for numeric values and non-negative inputs).
* Formats the output price nicely to two decimal places.
* Handles potential `ValueError` if non-numeric input is provided.

## Requirements

* Python 3.x

## How to Use

1.  **Save the Code:** Save the Python script to a file, for example, `discount_calculator.py`.
2.  **Open Terminal:** Open your terminal or command prompt.
3.  **Navigate:** Go to the directory where you saved `discount_calculator.py`.
4.  **Run the Script:** Execute the script using the Python interpreter:
    ```bash
    python discount_calculator.py
    ```
5.  **Follow Prompts:** The script will ask you to enter the original price and the discount percentage. Provide numeric values when prompted.

### Example Usage

**Scenario 1: Discount is applied (>= 20%)**

Enter the original price of the item: 150.50
Enter the discount percentage (e.g., 15 for 15%): 25

Discount of 25.0% applied.
The final price after applying the discount is: $112.88


**Scenario 2: Discount is NOT applied (< 20%)**

Enter the original price of the item: 99.99
Enter the discount percentage (e.g., 15 for 15%): 10

The discount percentage (10.0%) is less than 20%.
No discount applied. The price remains: $99.99


**Scenario 3: Invalid Input**

Enter the original price of the item: ninety
Error: Invalid input. Please enter numeric values for price and discount percentage.


Enter the original price of the item: 100
Enter the discount percentage (e.g., 15 for 15%): -5
Error: Price and discount percentage cannot be negative.


## Code Explanation

* **`calculate_discount(price, discount_percent)` function:**
    * Takes the original `price` (float) and `discount_percent` (float) as arguments.
    * Checks if `discount_percent` is 20 or greater using an `if` condition.
    * If the condition is true, it calculates the discounted price (`price * (1 - discount_percent / 100)`) and returns it.
    * If the condition is false, it returns the original `price` unchanged.
* **Main execution block (`if __name__ == "__main__":`)**
    * This block runs only when the script is executed directly.
    * It uses a `try...except` block to handle potential `ValueError` during input conversion and other exceptions.
    * Prompts the user for the original price and discount percentage using `input()`.
    * Converts the input strings to floats using `float()`.
    * Validates that the inputs are not negative.
    * Calls the `calculate_discount` function with the user's inputs.
    * Prints the final result using an f-string, formatting the price to two decimal places (`:.2f`). The output message clarifies whether the discount was applied based on the comparison between the original price and the result.