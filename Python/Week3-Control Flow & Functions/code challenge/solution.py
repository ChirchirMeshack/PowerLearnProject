# 1. Large Power

def large_power(base, exponent):
  """
  Checks if the result of base raised to the power of exponent is greater than 5000.

  Args:
    base: The base number (integer or float).
    exponent: The exponent number (integer or float).

  Returns:
    True if base**exponent is greater than 5000, False otherwise.
  """
  # Calculate the result of base to the power of exponent
  result = base ** exponent

  # Use an if statement to test if the result is greater than 5000
  if result > 5000:
    return True
  else:
    return False

# --- Example Usage for large_power ---
print("--- large_power Examples ---")
print(f"large_power(10, 3) = {large_power(10, 3)}")      # 10^3 = 1000 (Should be False)
print(f"large_power(2, 13) = {large_power(2, 13)}")      # 2^13 = 8192 (Should be True)
print(f"large_power(50, 2) = {large_power(50, 2)}")      # 50^2 = 2500 (Should be False)
print(f"large_power(100, 2) = {large_power(100, 2)}")    # 100^2 = 10000 (Should be True)
print("-" * 20)


# 2. Divisible By Ten

def divisible_by_ten(num):
  """
  Determines whether or not a number is divisible by ten.

  Args:
    num: The number to check (integer).

  Returns:
    True if num is divisible by 10, False otherwise.
  """
  # Calculate the remainder of the input divided by 10
  remainder = num % 10

  # Use an if statement to check if the remainder was 0
  if remainder == 0:
    return True
  else:
    return False

# --- Example Usage for divisible_by_ten ---
print("\n--- divisible_by_ten Examples ---")
print(f"divisible_by_ten(20) = {divisible_by_ten(20)}")    # 20 % 10 = 0 (Should be True)
print(f"divisible_by_ten(25) = {divisible_by_ten(25)}")    # 25 % 10 = 5 (Should be False)
print(f"divisible_by_ten(100) = {divisible_by_ten(100)}")  # 100 % 10 = 0 (Should be True)
print(f"divisible_by_ten(0) = {divisible_by_ten(0)}")      # 0 % 10 = 0 (Should be True)
print(f"divisible_by_ten(-30) = {divisible_by_ten(-30)}")  # -30 % 10 = 0 (Should be True)
print("-" * 20)

# --- Alternative Concise Versions (More Pythonic) ---
# While the versions above follow the step-by-step instructions including
# the if/else, these conditions directly evaluate to booleans (True/False),
# so the functions can often be written more concisely in Python:

def large_power_concise(base, exponent):
  """Concise version of large_power."""
  return (base ** exponent) > 5000

def divisible_by_ten_concise(num):
  """Concise version of divisible_by_ten."""
  return (num % 10) == 0

# print("\n--- Concise Version Examples ---")
# print(f"large_power_concise(2, 13) = {large_power_concise(2, 13)}") # True
# print(f"divisible_by_ten_concise(20) = {divisible_by_ten_concise(20)}") # True