## MongoDB CLI Operations and NoSQL Fundamentals

This document provides an introduction to MongoDB, covering installation, connection, and basic operations.

### Introduction to MongoDB

MongoDB is a NoSQL database that stores data in documents, offering flexibility and scalability compared to traditional SQL databases. It uses collections of documents in BSON (Binary JSON) format.

#### Key Characteristics

- **Schema-less:** Flexible data structure.
- **Scalable:** Handles large datasets efficiently.
- **High Performance:** Optimized for fast read/write operations.
- **Distributed System:** Supports replication and horizontal scaling.

#### Use Cases

- E-commerce platforms
- Social media applications
- Big Data & Analytics

### 🛠️ Step 1: Install MongoDB

#### 💻 Local Installation Guide

1. **Download MongoDB:**
    - Visit [MongoDB Download](https://www.mongodb.com/try/download/community).
    - Select the appropriate version for your OS.
2. **Installation:**
    - **Windows:**
        - Run the installer.
        - Follow the setup wizard, selecting "Complete" installation.
        - Check "Install MongoDB Compass".
    - **Mac:**
        - Use Homebrew:
            ```shell
            brew install mongodb-community@6.0
            ```
    - **Linux:**
        - Follow distribution-specific instructions.
3. **Starting MongoDB:**
    - Open terminal/command prompt:
        ```shell
        mongod --dbpath /your/database/path
        ```
    - Verify by connecting to the shell:
        ```shell
        mongo
        ```

#### 🌐 Cloud Installation Guide

1. **Sign up for MongoDB Atlas:**
    - Visit [MongoDB Atlas](https://www.mongodb.com/cloud/atlas).
    - Create an account.
    - Create a free shared cluster.

### 🔗 Step 2: Connect to MongoDB

#### 🛂 Local Connection

```shell
mongo
```

#### 🛂 Cloud Connection

```shell
mongo "your-connection-string"
```

### 🎓 Step 3: Create Your First Database and Collection

#### 📖 Understanding MongoDB Databases & Collections

- **Database:** Container for collections.
- **Collection:** Group of related documents (like a table in SQL).
- **Document:** Record stored in BSON format (like a row in SQL).

#### Example Operations

```javascript
// Use the 'library' database
use library;

// Insert a document into the 'books' collection
db.books.insertOne({
  title: "1984",
  author: "George Orwell",
  publishedYear: 1949
});

// Find all documents in the 'books' collection
db.books.find();
```