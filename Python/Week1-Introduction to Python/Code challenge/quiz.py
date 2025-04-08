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