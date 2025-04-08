# Constructors: The __init__ Method and Instance Variables 🚀

# What’s a Constructor?
# Every time you create a new object, you want it to have its unique attributes (color, model, etc.).
# Constructors (__init__ methods) allow each object to start with specific values.
# It’s like building a pizza 🍕 with the toppings you want!

# Instance Variables
# Instance variables are specific to each object and can vary across objects.
# For example, two Car objects can have different colors, models, and speeds.

# Example: Setting Up Your Constructor!

class Car:
    def __init__(self, color, model):
        # The __init__ method is the constructor.
        # It initializes the instance variables for each object.
        self.color = color    # Instance variable
        self.model = model    # Instance variable

# Creating objects with unique attributes
car1 = Car("blue", "Sedan")  # car1 has color "blue" and model "Sedan"
car2 = Car("red", "SUV")     # car2 has color "red" and model "SUV"

# Accessing instance variables
print(car1.color)  # Output: blue
print(car2.model)  # Output: SUV

# Explanation:
# - `__init__`: The constructor method that is automatically called when an object is created.
# - `self`: Refers to the current object being created. It is used to assign values to instance variables.
# - `car1` and `car2`: Objects of the Car class, each with unique attributes.
# - `car1.color`: Accesses the `color` attribute of the `car1` object.
# - `car2.model`: Accesses the `model` attribute of the `car2` object.

# Constructors make it easy to create objects with specific attributes, ensuring each object starts with the desired values.