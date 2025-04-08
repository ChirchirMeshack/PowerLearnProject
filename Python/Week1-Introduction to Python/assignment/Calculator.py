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

calculator()