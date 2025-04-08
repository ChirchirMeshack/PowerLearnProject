# Python OOP Examples: Class Design and Polymorphism

This repository contains Python code demonstrating fundamental Object-Oriented Programming (OOP) concepts. It includes examples based on two assignments:
1.  Designing a custom class with attributes, methods, constructors, and inheritance (using Chelsea FC and a generic Football Club).
2.  Illustrating polymorphism through different implementations of a common method in various classes (using Vehicles).

## Contents

* [Assignment 1: Design Your Own Class (Chelsea FC)](#assignment-1-design-your-own-class-chelsea-fc)
    * Features: Class Definition, Attributes, Methods, Constructor (`__init__`), Inheritance, Method Overriding, `super()`.
* [Assignment 2: Polymorphism Challenge (Vehicles)](#assignment-2-polymorphism-challenge-vehicles)
    * Features: Polymorphism, Method Overriding, Common Interface.
* [Requirements](#requirements)
* [How to Run](#how-to-run)
* [Example Output](#example-output)

## Assignment 1: Design Your Own Class (Chelsea FC)

This part demonstrates how to model a real-world entity (Chelsea Football Club) using Python classes.

* A base class `FootballClub` is defined with common attributes (`name`, `stadium`, `league`, `manager`, `squad`) and methods (`add_player`, `change_manager`, `display_info`).
* A derived class `ChelseaFC` inherits from `FootballClub`, utilizing `super().__init__()` to initialize parent attributes and adding its own specific attributes (`major_trophies`) and methods (`add_trophy`, `chant`).
* Method overriding is shown with the `display_info` method, where `ChelseaFC` extends the functionality of the base class method.

## Assignment 2: Polymorphism Challenge (Vehicles)

This section illustrates the concept of polymorphism.

* Multiple classes (`Car`, `Plane`, `Boat`) are defined, potentially inheriting from a common base class (`Vehicle`).
* Each class implements a method with the same name: `move()`.
* However, the *behavior* of `move()` is unique to each class (e.g., cars drive, planes fly, boats sail).
* The example code shows how objects of these different classes can be stored in a single list and iterated over, calling the `move()` method on each. Python automatically executes the correct version of `move()` based on the object's actual class, demonstrating polymorphism.

## Requirements

* Python 3.x

## How to Run

1.  **Clone the repository or download the script:**
    ```bash
    git clone <your-repository-url>
    cd <repository-directory>
    ```
    Or, simply save the Python code into a file (e.g., `oop_assignments.py`).

2.  **Execute the script:**
    Run the Python file from your terminal:
    ```bash
    python chelsea.py
    ```
    *(Replace `chelsea.py` with the actual name of your Python file if different.)*

    ```bash
    python vehicle.py
    ```
    *(Replace `vehicle.py` with the actual name of your Python file if different.)*

## Example Output

Running the script will produce output similar to this (details like manager names or trophy lists might vary based on the code version):


--- Assignment 1: Chelsea FC Class ---
Initialized club: Chelsea FC
-> Chelsea FC specific initialization complete.
Christopher Nkunku added to Chelsea FC's squad.
Cole Palmer is already in the squad.
Chelsea FC manager changed from Enzo Maresca to A New Manager.
Trophy 'FIFA Club World Cup x1' added to Chelsea FC's honours!
Keep the blue flag flying high! #KTBFFH

--- Club Information ---
Name: Chelsea FC
Stadium: Stamford Bridge
League: English Premier League
Manager: A New Manager
Squad Size: 4
--- Chelsea FC Specifics ---
Major Trophies:

Premier League x6

FA Cup x8

League Cup x5

Champions League x2

Europa League x2

FIFA Club World Cup x1

String representation: Chelsea FC playing in the English Premier League at Stamford Bridge.

--- Activity 2: Polymorphism Challenge ---
Initialized vehicle: Red Toyota Camry
Initialized vehicle: Kenya Airways Boeing 787 Dreamliner
Initialized vehicle: Yacht named 'Sea Spirit'

Demonstrating Polymorphism:

Attempting to move Vehicle: Red Toyota Camry:
Driving the Red Toyota Camry... 🚗 Vroom Vroom!

Attempting to move Vehicle: Kenya Airways Boeing 787 Dreamliner:
Flying the Kenya Airways Boeing 787 Dreamliner... ✈️ Whoosh!

Attempting to move Vehicle: Yacht named 'Sea Spirit': Sailing the Yacht named 'Sea Spirit'... ⛵ Sploosh!