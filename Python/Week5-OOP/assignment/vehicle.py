class Vehicle:
    """A base class for different vehicles (Optional but good practice)."""
    def __init__(self, identifier):
        self.identifier = identifier

    def move(self):
        """Placeholder move method."""
        print("The vehicle is moving somehow...")

    def __str__(self):
        return f"Vehicle: {self.identifier}"

class Car(Vehicle):
    """Represents a Car."""
    def __init__(self, make, model, color):
        super().__init__(f"{color} {make} {model}") # Pass identifier to parent
        self.make = make
        self.model = model
        self.color = color

    # Override the move method
    def move(self):
        """Defines how a car moves."""
        print(f"Driving the {self.identifier}... 🚗 Vroom Vroom!")

class Plane(Vehicle):
    """Represents a Plane."""
    def __init__(self, airline, model):
         super().__init__(f"{airline} {model}") # Pass identifier to parent
         self.airline = airline
         self.model = model

    # Override the move method
    def move(self):
        """Defines how a plane moves."""
        print(f"Flying the {self.identifier}... ✈️ Whoosh!")

class Boat(Vehicle):
    """Represents a Boat."""
    def __init__(self, name, boat_type):
         super().__init__(f"{boat_type} named '{name}'") # Pass identifier to parent
         self.name = name
         self.boat_type = boat_type

    # Override the move method
    def move(self):
        """Defines how a boat moves."""
        print(f"Sailing the {self.identifier}... ⛵ Sploosh!")


# --- Activity 2 Usage Example ---
print("\n--- Activity 2: Polymorphism Challenge ---")

# Create instances of different vehicle types
my_car = Car("Toyota", "Camry", "Red")
my_plane = Plane("Kenya Airways", "Boeing 787 Dreamliner")
my_boat = Boat("Sea Spirit", "Yacht")

# Create a list of vehicles
vehicles = [my_car, my_plane, my_boat]

# Loop through the list and call the move() method on each object
print("\nDemonstrating Polymorphism:")
for vehicle in vehicles:
    print(f"\nAttempting to move {vehicle}:")
    vehicle.move() # <--- Polymorphism in action!

print("-" * 30)