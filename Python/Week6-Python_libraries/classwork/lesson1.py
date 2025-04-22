# 🐍 Python Libraries: Your Toolbox for Coding!
# 🧩 What is a Python Library?
# A Python library is a collection of pre-written code that you can use to perform common tasks without having to write everything from scratch.
# Think of it like a toolbox. If you're building something, instead of making your own hammer, you just pull one out from the toolbox!

# 🔧 How to Use a Library in Python

# ✅ 1. Importing a Built-in Library
# Python has many built-in libraries (you don’t need to install them).

import math
print("Square root of 16:", math.sqrt(16))  # Output: 4.0
print("Value of pi:", math.pi)              # Output: 3.141592653589793

# ✅ 2. Importing Part of a Library
# Sometimes, you don’t need the whole toolbox.
from math import sqrt, sin, radians, pow

print("Square root of 36:", sqrt(36))
print("Sine of 90 degrees:", sin(radians(90)))
print("Power of 2^3:", pow(2, 3))

# 🎲 2. random – Generate random numbers
import random

print("Random number between 1 and 10:", random.randint(1, 10))
print("Random choice from a list:", random.choice(['apple', 'banana', 'cherry']))

# ⏰ 3. datetime – Work with dates and time
import datetime

today = datetime.date.today()
print("Today's date is:", today)

now = datetime.datetime.now()
print("Current time:", now.strftime("%H:%M:%S"))