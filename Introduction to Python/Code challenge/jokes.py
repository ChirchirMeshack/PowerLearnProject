import random

def joke_generator():
    """
    Display a random programming joke from a collection.
    """
    jokes = [
        "Why do programmers prefer dark mode? Because light attracts bugs!",
        "How many programmers does it take to change a light bulb? None, that's a hardware problem!",
        "Why don't programmers like nature? It has too many bugs and no debugging tool!",
        "A SQL query walks into a bar, walks up to two tables and asks, 'Can I join you?'",
        "Why did the Python programmer need glasses? Because he couldn't C!",
        "What do you call a programmer from Finland? Nerdic!",
        "Why was the developer unhappy at his job? He wanted arrays!",
        "How do you tell HTML from HTML5? Try it out in Internet Explorer. If it doesn't work, it's HTML5!",
        "Why did the programmer quit his job? Because he didn't get arrays!",
        "What's a programmer's favorite hangout place? The Foo Bar!"
    ]
    
    def display_joke():
        print("\n🤣 PYTHON JOKE GENERATOR 🤣")
        print("-" * 40)
        random_joke = random.choice(jokes)
        print(f"🐍 {random_joke}")
        print("-" * 40)
    
    display_joke()
    
    while input("\nWant to hear another joke? (yes/no): ").lower() in ["yes", "y"]:
        display_joke()
    
    print("Come back for more jokes soon! 👋")

# Run the function
if __name__ == "__main__":
    joke_generator()