# Python Beginner Projects

This repository contains three beginner-friendly Python projects to help you practice your programming skills. Each project comes with explanations and code examples.

## 1. Personalized Greeting App 👋

A simple program that collects a user's name and favorite color, then generates a personalized greeting.

### How It Works:
- Asks for user input using the `input()` function
- Stores the responses in variables
- Creates a personalized message using string formatting
- Displays the final greeting to the user

### Code Example:

```python
def personalized_greeting():
    """
    Ask for user's name and favorite color, then print a personalized greeting.
    """
    # Get user input
    name = input("What's your name? ")
    favorite_color = input("What's your favorite color? ")
    
    # Create and display the personalized greeting
    greeting = f"Hello, {name}! Your favorite color, {favorite_color}, is awesome!"
    print(greeting)

# Run the function
if __name__ == "__main__":
    personalized_greeting()
```

### Expected Output:
```
What's your name? Alex
What's your favorite color? Blue
Hello, Alex! Your favorite color, Blue, is awesome!
```

## 2. Simple Quiz Game 🎮

A multiple-choice quiz game that tests knowledge on Python programming, displays scores, and allows users to play again.

### How It Works:
- Stores questions and answers in a list of dictionaries
- Presents questions one at a time
- Checks user answers against correct answers
- Tracks score and displays results
- Offers option to play again

### Code Example:

```python
def quiz_game():
    """
    A simple multiple-choice quiz game about Python.
    """
    questions = [
        {
            "question": "What is the correct way to create a function in Python?",
            "choices": ["A) function myFunction()", "B) def myFunction()", "C) create myFunction()", "D) func myFunction()"],
            "answer": "B"
        },
        {
            "question": "Which of these is NOT a Python data type?",
            "choices": ["A) List", "B) Dictionary", "C) Tuple", "D) Array"],
            "answer": "D"
        },
        {
            "question": "What does the len() function do in Python?",
            "choices": ["A) Returns the length of an object", "B) Rounds a number down", "C) Creates a new list", "D) Converts to lowercase"],
            "answer": "A"
        }
    ]
    
    def run_quiz():
        score = 0
        for i, q in enumerate(questions, 1):
            print(f"\nQuestion {i}: {q['question']}")
            for choice in q['choices']:
                print(choice)
            
            user_answer = input("\nYour answer (A/B/C/D): ").upper()
            if user_answer == q['answer']:
                print("Correct! ✅")
                score += 1
            else:
                print(f"Wrong! ❌ The correct answer is {q['answer']}")
        
        print(f"\nQuiz complete! Your score: {score}/{len(questions)}")
        return score
    
    play_again = "yes"
    while play_again.lower() in ["yes", "y"]:
        print("\n🎮 PYTHON QUIZ GAME 🎮")
        print("Test your Python knowledge!")
        
        run_quiz()
        
        play_again = input("\nDo you want to play again? (yes/no): ")
    
    print("Thanks for playing! 👋")

# Run the function
if __name__ == "__main__":
    quiz_game()
```

### Expected Output:
```
🎮 PYTHON QUIZ GAME 🎮
Test your Python knowledge!

Question 1: What is the correct way to create a function in Python?
A) function myFunction()
B) def myFunction()
C) create myFunction()
D) func myFunction()

Your answer (A/B/C/D): B
Correct! ✅

Question 2: Which of these is NOT a Python data type?
A) List
B) Dictionary
C) Tuple
D) Array

Your answer (A/B/C/D): D
Correct! ✅

...

Quiz complete! Your score: 3/3

Do you want to play again? (yes/no): no
Thanks for playing! 👋
```

## 3. Random Joke Generator 🤣

A program that stores a collection of programming jokes and randomly selects one to display each time it runs.

### How It Works:
- Stores jokes in a list
- Uses the `random` module to select a random joke
- Displays the joke with a fun format
- Optionally allows users to see another joke

### Code Example:

```python
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
```

### Expected Output:
```
🤣 PYTHON JOKE GENERATOR 🤣
----------------------------------------
🐍 Why do programmers prefer dark mode? Because light attracts bugs!
----------------------------------------

Want to hear another joke? (yes/no): yes

🤣 PYTHON JOKE GENERATOR 🤣
----------------------------------------
🐍 Why did the Python programmer need glasses? Because he couldn't C!
----------------------------------------

Want to hear another joke? (yes/no): no
Come back for more jokes soon! 👋
```

## Getting Started

1. Clone this repository
2. Run any of the Python files using Python 3.x:
   ```
   python personalized_greeting.py
   python quiz_game.py
   python joke_generator.py
   ```

## Learning Objectives

- Working with user input and output
- String formatting and manipulation
- Control structures (if/else, loops)
- Functions and basic program structure
- Lists, dictionaries, and random selection
- Basic user interaction patterns
