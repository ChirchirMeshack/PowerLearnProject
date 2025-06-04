
  # MongoDB Data Modeling Documentation
 
  ## 🎯 Objective
  - Gain a deep understanding of data modeling in MongoDB.
  - Compare embedding vs. referencing and their use cases.
  - Design efficient database schemas for scalability and performance.
 
  ## 📖 What is Data Modeling?
  Data modeling in MongoDB refers to the process of structuring data in a way that optimizes storage, retrieval, and scalability.
  Since MongoDB is schema-less, developers have the flexibility to design the database structure based on application needs.
 *
  ### Why is Data Modeling Important?
  - **Performance:** Proper structuring ensures fast query execution.
  - **Scalability:** Well-optimized data models can handle large datasets.
  - **Maintainability:** Makes it easier to update, delete, and retrieve data efficiently.
 
  MongoDB provides two main approaches for structuring data:
  - **Embedding (Denormalization)**
 *- **Referencing (Normalization)**
 
  ---
 
  ## 🔹 1. Embedding Data (Denormalization)
  **Definition:**  
  Data is stored as nested sub-documents inside a single document.
  Improves read performance since related data is retrieved together.
  Best suited for one-to-few relationships.

 **Example:**  
  A user with multiple orders stored in one document.
  ```js
  db.users.insertOne({
    name: "Alice",
    email: "alice@example.com",
    orders: [
      { item: "Laptop", price: 1200 },
      { item: "Mouse", price: 25 }
    ]
  });
 ```
 
  **Advantages:**
  - Faster read operations (fewer queries needed).
  - Data is self-contained, reducing joins.
 
  **Disadvantages:**
  - Increases document size (MongoDB has a 16MB document size limit).
  - Duplicates data when frequently updated.
 
  ---
 
  ## 🔹 2. Referencing Data (Normalization)
  **Definition:**  
  Stores related data in separate collections.
  Uses ObjectId references (foreign keys in relational databases).
 Best suited for one-to-many or many-to-many relationships.
 
  **Example:**  
  Separating users and orders into different collections.
  ```js
  db.users.insertOne({ _id: 1, name: "Bob" });
  db.orders.insertOne({ userId: 1, item: "Keyboard", price: 100 });
  ```
 
  **Advantages:**
  - Avoids duplication of data.
  - Ideal for frequently updated records.
 
  **Disadvantages:**
  - Requires multiple queries (slower than embedding).
  - Increases complexity of joins.
 