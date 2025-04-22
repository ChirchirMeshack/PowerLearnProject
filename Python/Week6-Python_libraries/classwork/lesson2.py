# 📦 Installing Python Packages – Simple Summary

# Python has lots of built-in tools (standard library), but sometimes you'll need more.
# That’s where third-party packages come in — extra tools made by the community.

# pip
# pip is Python’s tool for installing packages.
# It stands for "Pip Installs Packages".
# If you’re using Python 3.4 or newer, you already have pip3.

# To install a package, just run this command in your terminal:
# pip install package_name

# Example: Install the requests library
# pip install requests

# PyPI
# PyPI (Python Package Index) is the place where all these third-party packages live.
# pip automatically pulls packages from PyPI.
# You can also visit https://pypi.org to search for packages manually.

# Popular third-party libraries (just a few examples):
# - requests: HTTP for Humans (web requests)
# - scrapy, Twisted: Web scraping and networking
# - Pillow: Image processing
# - lxml, PyYAML: XML and YAML parsing
# - Django, Flask, Pyramid: Web frameworks
# - SQLAlchemy: Database toolkit
# - numpy, scipy, pandas: Data science and analysis
# - pytest, tox, coverage, mock: Testing tools
# - six: Python 2/3 compatibility
# - Jinja2: Templating engine
# - cryptography: Security and encryption
# - pylint, flake8, pep8: Code quality tools
# - pymongo, redis, MySQL-Python, psycopg2: Database connectors

# Example: Using requests after installing
import requests

response = requests.get("https://api.github.com")
print("Status code:", response.status_code)
print("Content type:", response.headers["Content-Type"])