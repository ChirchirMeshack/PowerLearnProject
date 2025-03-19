# Python List Operations

This repository contains a simple Python script that demonstrates various list operations such as appending elements, inserting at a specific position, extending with another list, removing elements, sorting, and finding the index of a value.

## Python Script

Below is the Python script performing the required operations:

```python
# Step 1: Create an empty list
my_list = []

# Step 2: Append elements 10, 20, 30, 40
my_list.append(10)
my_list.append(20)
my_list.append(30)
my_list.append(40)

# Step 3: Insert 15 at the second position (index 1)
my_list.insert(1, 15)

# Step 4: Extend my_list with [50, 60, 70]
my_list.extend([50, 60, 70])

# Step 5: Remove the last element
my_list.pop()

# Step 6: Sort the list in ascending order
my_list.sort()

# Step 7: Find and print the index of the value 30
index_of_30 = my_list.index(30)
print("Index of 30:", index_of_30)

# Print the final list for verification
print("Final list:", my_list)
```

## Explanation

1. **Creating an empty list:** `my_list = []`
2. **Appending elements:** Adds `10, 20, 30, 40` to the list using `.append()`.
3. **Inserting a value:** `15` is inserted at index `1` using `.insert()`.
4. **Extending the list:** Adds `[50, 60, 70]` to `my_list` using `.extend()`.
5. **Removing the last element:** Uses `.pop()` to remove `70`.
6. **Sorting the list:** Uses `.sort()` to arrange elements in ascending order.
7. **Finding the index of `30`**: Uses `.index()` to locate `30` in `my_list`.

## Expected Output

```
Index of 30: 3
Final list: [10, 15, 20, 30, 40, 50, 60]
```

## Usage

Run the script using Python:

```sh
python script.py
```
