# E-commerce Database Design Project

## 📦 Overview

This repository contains the database design artifacts for a foundational e-commerce platform, developed as a collaborative peer group assignment. The goal was to design and implement a robust **MySQL** relational database schema capable of handling core e-commerce concepts such as products, categories, brands, variations (color, size), custom attributes, and product imagery.

## 🎯 Objective

The primary objectives of this project were to practice and demonstrate skills in database design, including:

* **Entity-Relationship Diagram (ERD) Creation:** Defining entities, attributes, primary keys, foreign keys, and relationships.
* **Data Flow Planning:** Understanding how data moves and interacts within the system.
* **MySQL Schema Implementation:** Translating the design into a functional MySQL schema (`ecommerce.sql`).
* **Collaborative Development:** Working as a team to analyze requirements, design the solution, and document the process.

## 🗃️ Database Structure

The database schema revolves around the concept of a `product`, which represents a general item (e.g., "Classic T-Shirt"). Specific, purchasable versions of that product (e.g., "Classic T-Shirt, Blue, Large") are represented by `product_item` entities (SKUs).

Key entities include:

* **Core Product Info:** `product`, `brand`, `product_category`
* **Product Variations:** `color`, `size_category`, `size_option`
* **Purchasable Item:** `product_item` (links product, color, size, holds SKU, price, stock)
* **Imagery:** `product_image` (linked to `product_item`)
* **Custom Attributes:** `attribute_type`, `attribute_category`, `product_attribute` (defines attributes like 'Material', 'Weight')
* **Attribute Values:** `product_variation` (links a specific `product_item` to a `product_attribute` and stores its `value`)

All relationships are enforced using primary and foreign keys, ensuring data integrity. Please refer to the ERD diagram for a visual representation of these relationships.

## 📂 Repository Contents

1.  **`ERD diagram.pdf`** : The Entity-Relationship Diagram illustrating the database structure, created using draw.io.
2.  **`ecommerce.sql`**: The SQL script containing `CREATE TABLE` statements to build the database schema. This script is **written for MySQL** and leverages MySQL-specific features such as `AUTO_INCREMENT` and `ON UPDATE CURRENT_TIMESTAMP`.
3.  **`README.md`**: This file.

## 🛠️ Tools Used

* **ERD Design:** Draw.io (for visual modeling )
* **Version Control:** Git & GitHub
* **Database:** MySQL (tested with MySQL 8.x)

## 🚀 Usage

To use this schema:

1.  Ensure you have **MySQL** installed (preferably version 5.7 or higher).
2.  Create a new database (e.g., `my_ecommerce_db`).
    ```sql
    CREATE DATABASE my_ecommerce_db;
    USE my_ecommerce_db;
    ```
3.  Open MySQL Workbench or your preferred MySQL client.
4.  Execute the contents of the `ecommerce.sql` script against the new database. This will create all the necessary tables, relationships, and indexes.

## 🧑‍🤝‍🧑 Group Collaboration

This project was developed collaboratively. Key aspects of our teamwork included:

* Regular communication and meetings to discuss design choices and resolve challenges.
* Using GitHub for version control of the schema and documentation.
* Shared understanding and peer review of all parts of the database design.
* Collaborative use of MySQL Workbench for ERD creation and schema validation.

---

