# File Handling in Python
# File Handling in Python is the ability to perform various operations on files, like reading from and writing to them.
# Files are used to store data permanently (like text documents, images, or spreadsheets).
# Unlike variables, which lose their values when a program ends, files provide persistent storage.

# File handling in Python allows you to:
# - Open files in different modes (e.g., read-only or write mode).
# - Read and write data in a variety of formats.
# - Close files to free up system resources.

# Python’s built-in open() function is at the heart of this process, and learning how to handle files can make your programs more robust, flexible, and useful.

# File Operations in Python

# Opening Files
# Use Python’s open() function to access a file.
# Syntax: open(filename, mode), where:
# - filename: The name of the file you want to work with.
# - mode: The mode you want to open the file in.
# Modes include:
# - 'r': Read mode, used for reading files.
# - 'w': Write mode, creates a new file or overwrites an existing one.
# - 'a': Append mode, adds new content without deleting existing data.
# - 'rb', 'wb': Binary modes for non-text files, like images.

# Example: Opening a file in read mode
file = open("example.txt", "r")  # Opens the file in read mode

# Reading Files
# Python provides multiple ways to read file contents:
# - .read(): Reads the entire file.
# - .readline(): Reads a single line at a time.
# - .readlines(): Reads all lines and returns a list.

# Example: Reading a file
with open("example.txt", "r") as file:
    data = file.read()
    print(data)  # Prints the entire content of the file

# Use cases: Processing large datasets or analyzing text documents.

# Writing & Appending to Files
# Writing is essential for saving data, like storing a user’s progress or keeping a record.
# - write(): Overwrites content.
# - append(): Adds new content without deleting existing data.

# Example: Writing to a file
with open("output.txt", "w") as file:
    file.write("Hello, Python!")  # Writes "Hello, Python!" to the file

# Example: Appending to a file
with open("output.txt", "a") as file:
    file.write("\nAppending new content!")  # Adds new content to the file

# Closing Files
# Files should be closed after processing to release system resources.
# Python’s with statement automatically handles closing, ensuring efficient resource management.

# Example: Using with statement (no need to explicitly close the file)
with open("example.txt", "r") as file:
    data = file.read()
    print(data)  # File is automatically closed after the block