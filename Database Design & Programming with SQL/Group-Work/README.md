# 📚 BookstoreDB - MySQL Workbench Edition

Welcome to **BookstoreDB**, a full-fledged bookstore management system built with **MySQL** and designed for use in **MySQL Workbench**. Whether you’re shipping Wanjiku her Sheng survival guide or tracking Kamau’s order via boda boda, this database has your back – 🇰🇪.

---

## 🎯 Project Objective

Design a fully normalized, real-world **relational database** to manage:
- Books, authors, publishers, and languages
- Customer profiles and multiple addresses
- Orders, shipping methods, and order histories
- User roles and access control

---

## 🧰 Tools & Technologies

| Tool              | Role                                      |
|-------------------|-------------------------------------------|
| **MySQL Workbench** | Create schema, run queries, manage data   |
| **Draw.io**        | ERD design                                |
| **GitHub**         | Version control and collaboration         |

---

## 🧱 Schema Overview

The database contains the following core tables:

📘 Book Module:
- `book`, `author`, `book_author`, `book_language`, `publisher`

👤 Customer Module:
- `customer`, `address`, `country`, `address_status`, `customer_address`

🛒 Order Module:
- `cust_order`, `order_line`, `shipping_method`, `order_status`, `order_history`

👉 ERD included: **BookstoreDB.pdf**

---

## 🌍 Sample Data (With Kenyan Flavor 🇰🇪)

You’ll find:
- Classic authors like *Ngugi wa Thiong’o* and *Binyavanga*
- Swahili and Sheng titles
- Kenyan towns: Nairobi, Kisumu, Nakuru
- Shipping options: **Boda Boda**, **Matatu**, **G4S**

Want to vibe with books in Sheng or Swahili? We got you. 😎

---

## 🧲 Setup in MySQL Workbench

### 📅 Step 1: Import the Schema

1. Open **MySQL Workbench**.
2. Connect to your local MySQL server.
3. Open a new SQL tab.
4. Load the schema file:
   ```sql
   SOURCE path/to/schema.sql;
   ```

### 📦 Step 2: Load Sample Data
```sql
SOURCE path/to/sample_data.sql;
```

### 🔍 Step 3: Run Test Queries
```sql
SOURCE path/to/Bookstore_Test_Queries.sql;
```

✨ Tip: You can also paste queries one-by-one from `Bookstore_Test_Queries.sql` to explore the data manually.

---
### 🔒 Step 4: Set Up User Roles & Access Control

```sql
SOURCE path/to/setup_user_roles.sql;
```

This script:

- Creates an admin user with full access.
- Creates a reader user with read-only access.
- Ensures permissions follow best practices.

## 🔍 Sample Queries Included

- Find top-spending customer (spoiler: Wanjiku knows how to shop 💼)
- Books written in **Sheng** (local language 🔥)
- Orders shipped via **Matatu** (might come with reggae 🎶)
- All books and their authors

---

## 👨🏽‍💻 Team

| Name              | Role                  |
|-------------------|-----------------------|
| Meshack Kimoloi   | DB Designer  |
| Team Members      | QA & Documentation    |

---


## ⚡ Bonus Quote

> *“Why did Kamau refuse to use MongoDB?”*  
> *“Because he wanted **relational-ships**, not situationships.”* 😂

---

## 📌 Note

If you’re using **XAMPP**, **phpMyAdmin**, or **DBeaver**, this setup will still work — just load the `.sql` files accordingly.

---

## 💬 Questions or Suggestions?

Have questions? Want us to support Maasai Mara bookstores next? Feel free to **open an issue** or submit a **pull request (PR)**. We'd love to hear from you! 😄

---

> *“If you want to hide something from a Kenyan, put it in a README. Unless it’s this one.”* — Unknown 😅