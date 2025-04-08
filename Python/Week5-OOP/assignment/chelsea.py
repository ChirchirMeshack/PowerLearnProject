# Base class representing a generic football club
class FootballClub:
    """Represents a generic football club."""

    def __init__(self, name, stadium, league, manager="N/A", squad=None):
        """
        Constructor for FootballClub.

        Args:
            name (str): The official name of the club.
            stadium (str): The home stadium of the club.
            league (str): The primary league the club competes in.
            manager (str): The current manager's name. Defaults to "N/A".
            squad (list, optional): A list of player names. Defaults to an empty list.
        """
        self.name = name
        self.stadium = stadium
        self.league = league
        self.manager = manager
        # Squad is initialized as a list if None is passed
        self.squad = squad if squad is not None else []
        print(f"Initialized club: {self.name}")

    def add_player(self, player_name):
        """Adds a player to the club's squad."""
        if player_name not in self.squad:
            self.squad.append(player_name)
            print(f"{player_name} added to {self.name}'s squad.")
        else:
            print(f"{player_name} is already in the squad.")

    def change_manager(self, new_manager):
        """Updates the club's manager."""
        print(f"{self.name} manager changed from {self.manager} to {new_manager}.")
        self.manager = new_manager

    def display_info(self):
        """Displays basic information about the club."""
        print(f"\n--- Club Information ---")
        print(f"Name: {self.name}")
        print(f"Stadium: {self.stadium}")
        print(f"League: {self.league}")
        print(f"Manager: {self.manager}")
        print(f"Squad Size: {len(self.squad)}")

    def __str__(self):
        """String representation of the club."""
        return f"{self.name} playing in the {self.league} at {self.stadium}."

# Derived class specifically for Chelsea FC, inheriting from FootballClub
class ChelseaFC(FootballClub):
    """Represents Chelsea Football Club, inheriting from FootballClub."""

    def __init__(self, manager="Enzo Maresca", squad=None, trophies=None):
        """
        Constructor for ChelseaFC.

        Args:
            manager (str): The current manager. Defaults to a known recent manager.
            squad (list, optional): Initial squad list. Defaults to empty.
            trophies (list, optional): List of major trophies won. Defaults to a sample list.
        """
        # Call the parent class constructor with Chelsea's specific details
        super().__init__(
            name="Chelsea FC",
            stadium="Stamford Bridge",
            league="English Premier League",
            manager=manager,
            squad=squad
        )
        # Add Chelsea-specific attributes
        self.major_trophies = trophies if trophies is not None else [
            "Premier League x6", "FA Cup x8", "League Cup x5",
            "Champions League x2", "Europa League x2"
        ] # Example known major trophies
        print("-> Chelsea FC specific initialization complete.")

    def add_trophy(self, trophy_name):
        """Adds a major trophy to the club's honours list."""
        self.major_trophies.append(trophy_name)
        print(f"Trophy '{trophy_name}' added to {self.name}'s honours!")

    # Override display_info to add trophy information (Polymorphism example)
    def display_info(self):
        """Displays enhanced information including trophies for Chelsea FC."""
        super().display_info() # Call the parent method first
        print("--- Chelsea FC Specifics ---")
        print("Major Trophies:")
        if self.major_trophies:
            for trophy in self.major_trophies:
                print(f"- {trophy}")
        else:
            print("None listed.")

    def chant(self):
        """A specific action for Chelsea."""
        print("Keep the blue flag flying high! #KTBFFH")


# --- Assignment 1 Usage Example ---
print("--- Assignment 1: Chelsea FC Class ---")

# Create an instance of ChelseaFC
chelsea = ChelseaFC(squad=["Cole Palmer", "Reece James", "Enzo Fernández"])

# Use methods from the parent class
chelsea.add_player("Christopher Nkunku")
chelsea.add_player("Cole Palmer") # Already exists
chelsea.change_manager("A New Manager")

# Use methods specific to ChelseaFC
chelsea.add_trophy("FIFA Club World Cup x1")
chelsea.chant()

# Display information (uses the overridden method)
chelsea.display_info()

# Print string representation
print("\nString representation:", chelsea)
print("-" * 30)