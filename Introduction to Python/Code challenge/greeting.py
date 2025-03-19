def personalized_greeting():
    """
    Ask for user's name and favorite color, then print a personalized greeting.
    """
    # Get user input
    name = input("What's your name? ")
    favorite_color = input("What's your favorite color? ")
    
    # Create and display the personalized greeting
    greeting = f"Hello, {name}! Your favorite color, {favorite_color},awesome day!"
    print(greeting)

# Run the function
if __name__ == "__main__":
    personalized_greeting()