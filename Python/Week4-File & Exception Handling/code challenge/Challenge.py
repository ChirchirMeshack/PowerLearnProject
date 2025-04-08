import sys
import datetime # To potentially add timestamps, though not required

# Define filenames
input_filename = "input.txt"
output_filename = "output.txt"

print(f"Starting file processing script...")
print(f"Input file: '{input_filename}'")
print(f"Output file: '{output_filename}'")

try:
    # --- Read the contents of input.txt ---
    print(f"Reading content from '{input_filename}'...")
    with open(input_filename, 'r', encoding='utf-8') as infile:
        original_content = infile.read() # Read the entire file content at once

    # --- Process the content ---
    print("Processing content...")

    # Count the number of words
    # Split the content by whitespace to get a list of words
    word_list = original_content.split()
    word_count = len(word_list)
    print(f"Word count calculated: {word_count}")

    # Convert all text to uppercase
    uppercase_content = original_content.upper()
    print("Content converted to uppercase.")

    # --- Write the processed text and word count to output.txt ---
    print(f"Writing processed data to '{output_filename}'...")
    with open(output_filename, 'w', encoding='utf-8') as outfile:
        # Write the uppercase content
        outfile.write("--- UPPERCASE CONTENT ---\n")
        outfile.write(uppercase_content)
        outfile.write("\n\n") # Add some space before the word count

        # Write the word count
        outfile.write("--- WORD COUNT ---\n")
        outfile.write(f"Total number of words: {word_count}\n")

    # --- Print success message ---
    # Get current time for the success message
    now = datetime.datetime.now()
    current_time_str = now.strftime("%Y-%m-%d %H:%M:%S") # Format the time nicely

    print(f"\n-----------------------------------------")
    print(f"✅ Success! File processing complete at {current_time_str}.")
    print(f"Processed content and word count written to '{output_filename}'.")
    print(f"-----------------------------------------")


# --- Error Handling ---
except FileNotFoundError:
    print(f"\n❌ Error: The input file '{input_filename}' was not found.")
    print("Please make sure 'input.txt' exists in the same directory as the script.")
    sys.exit(1) # Exit with an error code

except PermissionError:
    print(f"\n❌ Error: Permission denied.")
    print(f"Check if you have read permissions for '{input_filename}' and write permissions for the directory.")
    sys.exit(1)

except Exception as e:
    print(f"\n❌ An unexpected error occurred: {e}")
    sys.exit(1)