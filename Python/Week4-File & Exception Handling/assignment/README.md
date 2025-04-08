# Python File Processor with Error Handling

## Description

This Python script demonstrates robust file reading and writing practices. It prompts the user for the name of an input text file, reads its content line by line, adds a line number to the beginning of each line, and then writes this modified content to a new file.

A key focus of this script is **error handling**. It gracefully manages common file-related issues such as:
* The input file not being found (`FileNotFoundError`).
* Lack of permissions to read the input file or write the output file (`PermissionError`).
* Other general Input/Output errors (`IOError`).

## Features

* Reads text content from a user-specified file.
* Modifies the content by adding line numbers.
* Writes the modified content to a new file (e.g., `input.txt` becomes `input_modified.txt`).
* Prompts the user for the input filename via the command line.
* Implements specific error handling for `FileNotFoundError`, `PermissionError`, and `IOError`.
* Includes a general exception handler for unexpected errors.
* Uses the `with` statement for safe and automatic file resource management.
* Provides informative feedback to the user about success or specific errors encountered.

## Requirements

* Python 3.x

## How to Use

1. **Save the Script:** Save the Python code provided into a file named `file_processor.py` (or any other `.py` name).
2. **Prepare an Input File:** Create a simple text file (e.g., `my_document.txt`) in the same directory as the script. Add some lines of text to this file.

    *Example `my_document.txt`:*
    ```
    This is the first line.
    This is the second line.
    And a third line here.
    ```

3. **Open Terminal:** Open your command prompt or terminal window.
4. **Navigate:** Use the `cd` command to navigate to the directory where you saved `file_processor.py` and your input text file.
5. **Run the Script:** Execute the script using the command:
    ```bash
    python file_processor.py
    ```
6. **Enter Filename:** When prompted, type the exact name of your input text file (e.g., `my_document.txt`) and press `Enter`.
7. **Check Output:**
    * If successful, the script will print success messages.
    * A new file will be created in the same directory with `_modified` appended to the original name (e.g., `my_document_modified.txt`). This file will contain the content with line numbers.
    * If an error occurs (e.g., file not found, permission denied), an informative error message will be printed instead.

## Example Usage

### Successful Run

```bash
python file_processor.py
Please enter the name of the file to process: my_document.txt
Attempting to read from: 'my_document.txt'
Output will be written to: 'my_document_modified.txt'

Processing file...

Success! File processed.
Read 3 lines from 'my_document.txt'.
Modified content written to 'my_document_modified.txt'.

Output file my_document_modified.txt:

1: This is the first line.
2: This is the second line.
3: And a third line here.python file_processor.py

###  File not found error

Please enter the name of the file to process: non_existent_file.txt
Attempting to read from: 'non_existent_file.txt'
Output will be written to: 'non_existent_file_modified.txt'

--- Error ---
The file 'non_existent_file.txt' was not found.
Please check the filename and its location.

### Permission Error (Conceptual Example)
***(This error depends on your actual file system permissions.)***
python file_processor.py
Please enter the name of the file to process: restricted_file.txt
Attempting to read from: 'restricted_file.txt'
Output will be written to: 'restricted_file_modified.txt'

--- Error ---
Permission denied.
Could not read 'restricted_file.txt' or could not write to 'restricted_file_modified.txt'.
Check file/folder permissions.

##Code Explanation

process_file(input_filename) Function
Encapsulates the core logic.
Takes the input filename as an argument.
Determines the output filename automatically.
Uses a try...except block to handle file operations and catch potential errors (FileNotFoundError, PermissionError, IOError, general Exception).
Uses with open(...) to ensure both input and output files are properly closed, even if errors occur.
Iterates through the input file line by line.
Formats the modified line (adding the line number) and writes it to the output file.
Prints status messages (processing, success, or error details).
Main Execution Block (if __name__ == "__main__":)
Ensures the code runs only when the script is executed directly.
Prompts the user to enter the filename.
Calls the process_file function to perform the file processing and error handling.