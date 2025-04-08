# Exception Handling in Python 🌪️
# Errors happen! To make sure your programs are error-proof and user-friendly, Python provides Exception Handling.
# It’s the art of catching errors and handling them gracefully.

# Basic Structure of try-except Blocks ⚙️
# - try: Runs code that might throw an error.
# - except: Catches the error, allowing you to respond without crashing.

# Example: Handling a FileNotFoundError
try:
    with open("nonexistent.txt", "r") as file:
        data = file.read()
except FileNotFoundError:
    print("File not found. Please check the filename.")
# Output: File not found. Please check the filename.

# Advanced Error Handling with finally and Custom Errors 🎩
# - finally: Runs no matter what, often used to clean up (like closing a file).
# - Custom Errors: Create custom exceptions for special cases (e.g., EmptyFileError).

# Example with finally:
try:
    file = open("sample.txt", "r")
    data = file.read()
except FileNotFoundError:
    print("File not found.")
finally:
    file.close()  # Ensures the file is closed no matter what

# Best Practices 📏
# 1. Use `with` for file handling: Auto-close files, preventing potential leaks.
# Example:
try:
    with open("example.txt", "r") as file:
        data = file.read()
        print(data)
except FileNotFoundError:
    print("File not found. Please check the filename.")

# 2. Check file existence before reading/writing to avoid crashes.
import os
if os.path.exists("example.txt"):
    with open("example.txt", "r") as file:
        print(file.read())
else:
    print("File does not exist.")

# 3. Handle specific exceptions over general ones (e.g., FileNotFoundError instead of Exception).
try:
    number = int("invalid_number")
except ValueError:
    print("Invalid input. Please enter a valid number.")

# 4. Document error messages clearly for easier debugging and user support.
# Example:
try:
    result = 10 / 0
except ZeroDivisionError as e:
    print(f"Error: {e}. Division by zero is not allowed.")