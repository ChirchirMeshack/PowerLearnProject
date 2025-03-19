# Program 1: List Sum Calculator
def list_sum_calculator():
    """
    Accept user input to create a list of integers and compute their sum.
    """
    print("\n===== List Sum Calculator =====")
    
    # Get input from user
    user_input = input("Enter integers separated by spaces: ")
    
    # Convert input string to list of integers
    try:
        # Split the input by spaces and convert each item to integer
        num_list = [int(num) for num in user_input.split()]
        
        if not num_list:
            print("No integers were entered.")
            return
            
        # Calculate the sum
        total_sum = sum(num_list)
        
        # Display results
        print(f"\nYour list: {num_list}")
        print(f"Sum of all integers: {total_sum}")
        
    except ValueError:
        print("Error: Please enter valid integers separated by spaces.")

# Program 2: Favorite Books Tuple
def favorite_books_display():
    """
    Create a tuple of favorite books and display each on a separate line.
    """
    print("\n===== Favorite Books =====")
    
    # Create a tuple containing five favorite books
    favorite_books = (
        "To Kill a Mockingbird",
        "1984",
        "The Great Gatsby",
        "The Catcher in the Rye",
        "Pride and Prejudice"
    )
    
    # Print each book on a separate line using a for loop
    print("My favorite books:")
    for book in favorite_books:
        print(book)

# Program 3: Person Information Dictionary
def person_info_dictionary():
    """
    Store and display information about a person using a dictionary.
    """
    print("\n===== Person Information =====")
    
    # Create an empty dictionary to store person information
    person = {}
    
    # Get user input for person information
    person["name"] = input("Enter name: ")
    
    # Get age with validation
    while True:
        try:
            person["age"] = int(input("Enter age: "))
            break
        except ValueError:
            print("Please enter a valid age as a number.")
    
    person["favorite_color"] = input("Enter favorite color: ")
    
    # Optional additional information
    if input("Do you want to add more information? (yes/no): ").lower().startswith('y'):
        person["city"] = input("Enter city: ")
        person["occupation"] = input("Enter occupation: ")
    
    # Print the dictionary
    print("\nPerson Information:")
    for key, value in person.items():
        print(f"{key.capitalize()}: {value}")

# Program 4: Common Elements in Sets
def common_elements_sets():
    """
    Create two sets of integers and find their intersection.
    """
    print("\n===== Common Elements in Sets =====")
    
    # Get input for the first set
    try:
        input1 = input("Enter integers for the first set (separated by spaces): ")
        set1 = set(int(num) for num in input1.split())
    except ValueError:
        print("Error: Please enter valid integers.")
        return
    
    # Get input for the second set
    try:
        input2 = input("Enter integers for the second set (separated by spaces): ")
        set2 = set(int(num) for num in input2.split())
    except ValueError:
        print("Error: Please enter valid integers.")
        return
    
    # Find the common elements (intersection)
    common_elements = set1.intersection(set2)
    
    # Display results
    print(f"\nSet 1: {set1}")
    print(f"Set 2: {set2}")
    
    if common_elements:
        print(f"Common elements: {common_elements}")
    else:
        print("There are no common elements between the sets.")

# Program 5: Odd-Length Words Filter
def odd_length_words():
    """
    Create a list of words and filter for those with odd number of characters.
    """
    print("\n===== Odd-Length Words Filter =====")
    
    # Get input from user
    user_input = input("Enter a list of words separated by spaces: ")
    
    # Create a list of words
    words_list = user_input.split()
    
    if not words_list:
        print("No words were entered.")
        return
    
    # Use list comprehension to filter words with odd number of characters
    odd_length_words = [word for word in words_list if len(word) % 2 != 0]
    
    # Display results
    print(f"\nOriginal list of words: {words_list}")
    
    if odd_length_words:
        print(f"Words with odd number of characters: {odd_length_words}")
    else:
        print("There are no words with an odd number of characters.")

# Main program to run all examples
def main():
    print("===== Python Data Structures Programs =====")
    
    while True:
        print("\nSelect a program to run:")
        print("1: List Sum Calculator")
        print("2: Favorite Books Display")
        print("3: Person Information Dictionary")
        print("4: Common Elements in Sets")
        print("5: Odd-Length Words Filter")
        print("6: Exit")
        
        choice = input("\nEnter your choice (1-6): ")
        
        if choice == '1':
            list_sum_calculator()
        elif choice == '2':
            favorite_books_display()
        elif choice == '3':
            person_info_dictionary()
        elif choice == '4':
            common_elements_sets()
        elif choice == '5':
            odd_length_words()
        elif choice == '6':
            print("\nThank you for using the Python Data Structures Programs!")
            break
        else:
            print("Invalid choice. Please enter a number between 1 and 6.")

# Run the main program
main()