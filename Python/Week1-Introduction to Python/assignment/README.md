# Basic Calculator Program

A simple Python calculator that performs fundamental arithmetic operations based on user input.

## Description

This program allows users to:
1. Enter two numbers
2. Select a mathematical operation (addition, subtraction, multiplication, or division)
3. View the calculated result

The calculator handles basic error cases such as invalid inputs and division by zero.

## Code Example

```python
def calculator():
    """
    A simple calculator that performs basic arithmetic operations
    based on user input.
    """
    print("===== Basic Calculator =====")
    
    # Get first number from user
    try:
        num1 = float(input("Enter the first number: "))
    except ValueError:
        print("Invalid input. Please enter a valid number.")
        return
    
    # Get second number from user
    try:
        num2 = float(input("Enter the second number: "))
    except ValueError:
        print("Invalid input. Please enter a valid number.")
        return
    
    # Get operation from user
    print("\nSelect an operation:")
    print("+ : Addition")
    print("- : Subtraction")
    print("* : Multiplication")
    print("/ : Division")
    
    operation = input("\nEnter your choice (+, -, *, /): ")
    
    # Perform calculation based on selected operation
    result = None
    
    if operation == "+":
        result = num1 + num2
        operation_name = "Addition"
    elif operation == "-":
        result = num1 - num2
        operation_name = "Subtraction"
    elif operation == "*":
        result = num1 * num2
        operation_name = "Multiplication"
    elif operation == "/":
        # Check for division by zero
        if num2 == 0:
            print("Error: Cannot divide by zero!")
            return
        result = num1 / num2
        operation_name = "Division"
    else:
        print("Invalid operation. Please choose +, -, *, or /.")
        return
    
    # Display the result with appropriate formatting
    print(f"\n{operation_name} Result:")
    print(f"{num1} {operation} {num2} = {result}")

# Direct function call
calculator()
```

## How It Works

1. **User Input**:
   - The program prompts the user to enter two numbers.
   - Each input is converted to a float to support both integers and decimal numbers.
   - Input validation ensures that only valid numbers are accepted.

2. **Operation Selection**:
   - The user selects which operation to perform (+, -, *, /).
   - Clear menu options are displayed to guide the user.

3. **Error Handling**:
   - The program checks for invalid number inputs using try/except blocks.
   - Division by zero is specifically checked and prevented.
   - Invalid operation selections prompt an error message.

4. **Result Display**:
   - Results are displayed in a readable format: `number1 operation number2 = result`.
   - The operation name is included for clarity.

## Example Usage

```
===== Basic Calculator =====
Enter the first number: 10
Enter the second number: 5

Select an operation:
+ : Addition
- : Subtraction
* : Multiplication
/ : Division

Enter your choice (+, -, *, /): +

Addition Result:
10.0 + 5.0 = 15.0
```

## Running the Program

1. Save the code to a file named `calculator.py`
2. Run the program using Python:
   ```
   python calculator.py
   ```
3. Follow the prompts to enter numbers and select an operation

## Learning Concepts

This simple calculator demonstrates several important programming concepts:
- User input and output
- Type conversion
- Conditional statements
- Error handling
- Function definition and usage
- String formatting

## Extension Ideas

To enhance this calculator, consider adding:
- Support for more operations (exponents, modulo, etc.)
- A loop to perform multiple calculations without restarting
- Memory functions to store and recall previous results
- A more advanced user interface