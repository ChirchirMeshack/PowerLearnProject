import sys
import os # Import os module for path manipulation

def process_file(input_filename):
    """
    Reads an input file, adds line numbers, and writes to a new file.
    Handles common file-related errors.

    Args:
        input_filename (str): The name of the file to read.
    """
    # Create a predictable output filename
    base, ext = os.path.splitext(input_filename)
    output_filename = f"{base}_modified{ext}"
    # Or a simpler version: output_filename = f"modified_{input_filename}"

    print(f"Attempting to read from: '{input_filename}'")
    print(f"Output will be written to: '{output_filename}'")

    try:
        line_count = 0
        # Used 'with' statement for safe file handling (automatic closing)
        # Specify encoding for broader compatibility
        with open(input_filename, 'r', encoding='utf-8') as infile, \
             open(output_filename, 'w', encoding='utf-8') as outfile:

            print("\nProcessing file...")
            for line in infile:
                line_count += 1
                # Modify the line (e.g., add line number)
                # rstrip() removes trailing whitespace/newlines from original line
                modified_line = f"{line_count}: {line.rstrip()}\n"
                outfile.write(modified_line)

        # If we reach here, reading and writing were successful
        print(f"\nSuccess! File processed.")
        print(f"Read {line_count} lines from '{input_filename}'.")
        print(f"Modified content written to '{output_filename}'.")

    except FileNotFoundError:
        print(f"\n--- Error ---")
        print(f"The file '{input_filename}' was not found.")
        print("Please check the filename and its location.")

    except PermissionError:
        print(f"\n--- Error ---")
        print(f"Permission denied.")
        print(f"Could not read '{input_filename}' or could not write to '{output_filename}'.")
        print("Check file/folder permissions.")

    except IOError as e: # Catch other Input/Output errors
        print(f"\n--- Error ---")
        print(f"An error occurred while reading or writing the file: {e}")

    except Exception as e: # Catch any other unexpected errors
        print(f"\n--- An Unexpected Error Occurred ---")
        print(f"{e}")
        print("Script execution halted.")

# --- Main part of the script ---
if __name__ == "__main__":
    input_file = input("Please enter the name of the file to process: ")

    if not input_file:
        print("No filename entered. Exiting.")
    else:
        process_file(input_file)