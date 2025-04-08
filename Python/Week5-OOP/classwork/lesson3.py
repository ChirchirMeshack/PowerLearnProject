# OOP Principles: Inheritance, Polymorphism, and Encapsulation 👩‍🏫👨‍🏫

# Inheritance 👨‍👩‍👧‍👦
# Just like humans inherit traits from their parents, classes can inherit attributes and methods from other classes.
# This helps reduce code repetition and create a natural hierarchy in your code!

# Example: Imagine a Vehicle class with general features (like wheels).
# We can create subclasses like Car and Bike that inherit those features!

class Vehicle:
    def __init__(self, wheels):
        self.wheels = wheels  # Attribute for the number of wheels

class Car(Vehicle):
    pass  # Inherits everything from the Vehicle class

# Creating an object of the Car class
car = Car(4)  # A car with 4 wheels
print(car.wheels)  # Output: 4

# Explanation:
# - `Vehicle`: A base class with a `wheels` attribute.
# - `Car`: A subclass that inherits from `Vehicle`.
# - `car = Car(4)`: Creates a Car object with 4 wheels, using the constructor of the Vehicle class.

# Polymorphism 🦄
# Derived classes can behave differently for the same method inherited from a base class.
# With polymorphism, a method name can mean different things across multiple classes.

# Example: Imagine a speak() method. Dogs bark(), while cats meow(), even though both use speak()!

class Dog:
    def speak(self):
        return "Woof!"  # Dog's implementation of speak()

class Cat:
    def speak(self):
        return "Meow!"  # Cat's implementation of speak()

# Polymorphism in action
for animal in [Dog(), Cat()]:
    print(animal.speak())
# Output:
# Woof!
# Meow!

# Explanation:
# - `Dog` and `Cat` classes both have a `speak` method.
# - The same method name behaves differently depending on the class of the object.

# Encapsulation 🔐
# Encapsulation is the practice of keeping attributes and methods private to prevent unwanted interference from outside the class.
# It’s like hiding your chocolate stash 🍫 from everyone else!

class SecretStash:
    def __init__(self):
        self.__chocolates = 10  # Private attribute (indicated by double underscores)

    def take_chocolate(self):
        if self.__chocolates > 0:
            self.__chocolates -= 1
            print("One chocolate taken!")
        else:
            print("No chocolates left 😢")

# Creating an object of SecretStash
stash = SecretStash()
stash.take_chocolate()  # Output: One chocolate taken!
# stash.__chocolates  # This will raise an AttributeError because __chocolates is private

# Explanation:
# - `__chocolates`: A private attribute that cannot be accessed directly from outside the class.
# - `take_chocolate`: A public method that allows controlled access to the private attribute.

# In Summary:
# - **Inheritance**: Allows classes to inherit attributes and methods from other classes.
# - **Polymorphism**: Enables methods to behave differently based on the object's class.
# - **Encapsulation**: Protects data by keeping attributes and methods private.

# OOP allows you to organize code in a way that’s reusable, efficient, and fun! 🎉