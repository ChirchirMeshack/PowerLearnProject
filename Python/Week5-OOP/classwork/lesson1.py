# Introduction to OOP: Classes, Objects, Attributes, and Methods 🏫

# What’s OOP?
# Object-Oriented Programming (OOP) is a programming paradigm that models real-world entities as objects within the program.
# It helps us model complex systems by treating entities as objects with attributes (characteristics) and methods (actions).

# Key Concepts:
# 1. Class: The blueprint or prototype, like a recipe 🍲! Defines the structure for creating objects.
# 2. Object: A specific instance of a class. Think of it as a cake made from that recipe 🎂.
# 3. Attributes: Characteristics or properties of an object, like the color of a car.
# 4. Methods: Actions or behaviors that the object can perform (e.g., drive() for a car).

# Example: Create Your First Class!

# Defining a class
class Car:
    color = "red"  # Attribute

    # Method
    def drive(self):
        print("The car is driving 🚗")

# Creating an object
my_car = Car()  # Create an instance of the Car class
print(my_car.color)  # Access the attribute of the object
my_car.drive()  # Call the method of the object
# Output:
# red
# The car is driving 🚗

# Explanation:
# - `class Car`: Defines a class named Car.
# - `color`: An attribute of the Car class, with a default value of "red".
# - `drive`: A method (function) that prints a message when called.
# - `my_car = Car()`: Creates an object (instance) of the Car class.
# - `my_car.color`: Accesses the `color` attribute of the `my_car` object.
# - `my_car.drive()`: Calls the `drive` method of the `my_car` object.

# OOP allows us to create reusable and modular code by encapsulating data and behavior into objects.