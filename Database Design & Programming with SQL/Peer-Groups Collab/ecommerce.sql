-- E-commerce Database Schema (MySQL Version)
-- Author: Peer-Group 189
-- Date: 2025-04-26
-- This schema is designed for MySQL and covers all required entities, relationships, and constraints for a robust e-commerce platform.

-- =========================
-- 1. BRAND TABLE
-- =========================
-- Stores information about product brands.
CREATE TABLE brand (
    brand_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique brand identifier
    name VARCHAR(255) NOT NULL UNIQUE,       -- Brand name (must be unique)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Creation timestamp
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Auto-updates on row change
);

-- =========================
-- 2. PRODUCT CATEGORY TABLE
-- =========================
-- Classifies products into categories and supports subcategories via self-reference.
CREATE TABLE product_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique category identifier
    name VARCHAR(255) NOT NULL,                 -- Category name
    parent_category_id INT,                     -- Self-referencing FK for subcategories
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (parent_category_id) REFERENCES product_category(category_id)
        ON DELETE SET NULL ON UPDATE CASCADE
);
CREATE INDEX idx_category_parent ON product_category(parent_category_id);

-- =========================
-- 3. PRODUCT TABLE
-- =========================
-- Stores general product details.
CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique product identifier
    name VARCHAR(255) NOT NULL,                -- Product name
    description TEXT,                          -- Product description
    brand_id INT NOT NULL,                     -- FK to brand
    category_id INT NOT NULL,                  -- FK to product_category
    base_price DECIMAL(10,2) NOT NULL DEFAULT 0.00, -- Base price
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE INDEX idx_product_brand ON product(brand_id);
CREATE INDEX idx_product_category ON product(category_id);

-- =========================
-- 4. COLOR TABLE
-- =========================
-- Manages available color options for products.
CREATE TABLE color (
    color_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique color identifier
    name VARCHAR(100) NOT NULL UNIQUE,         -- Color name (unique)
    hex_code VARCHAR(7),                       -- Hex code (e.g., #FF0000)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- =========================
-- 5. SIZE CATEGORY TABLE
-- =========================
-- Groups sizes into categories (e.g., clothing, shoes).
CREATE TABLE size_category (
    size_category_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique size category identifier
    name VARCHAR(100) NOT NULL UNIQUE,               -- Size category name (unique)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- =========================
-- 6. SIZE OPTION TABLE
-- =========================
-- Lists specific sizes within a category.
CREATE TABLE size_option (
    size_option_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique size option identifier
    name VARCHAR(50) NOT NULL,                       -- Size name (e.g., S, M, L, 42)
    size_category_id INT NOT NULL,                   -- FK to size_category
    sort_order INT DEFAULT 0,                        -- For ordering sizes
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (name, size_category_id)                  -- Size name must be unique within its category
);
CREATE INDEX idx_size_option_category ON size_option(size_category_id);

-- =========================
-- 7. PRODUCT ITEM TABLE
-- =========================
-- Represents purchasable items with specific variations (SKU, color, size).
CREATE TABLE product_item (
    product_item_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique product item identifier
    product_id INT NOT NULL,                         -- FK to product
    sku VARCHAR(100) NOT NULL UNIQUE,                -- Stock Keeping Unit (unique)
    price DECIMAL(10,2) NOT NULL,                    -- Actual price for this item
    stock_quantity INT NOT NULL DEFAULT 0,           -- Inventory count
    color_id INT,                                    -- FK to color (nullable)
    size_option_id INT,                              -- FK to size_option (nullable)
    is_active BOOLEAN DEFAULT TRUE,                  -- Is this item available for sale?
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (color_id) REFERENCES color(color_id)
        ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id)
        ON DELETE SET NULL ON UPDATE CASCADE
);
CREATE INDEX idx_product_item_product ON product_item(product_id);
CREATE INDEX idx_product_item_color ON product_item(color_id);
CREATE INDEX idx_product_item_size ON product_item(size_option_id);
CREATE INDEX idx_product_item_sku ON product_item(sku);

-- =========================
-- 8. PRODUCT IMAGE TABLE
-- =========================
-- Stores product image URLs or file references.
CREATE TABLE product_image (
    image_id INT PRIMARY KEY AUTO_INCREMENT,         -- Unique image identifier
    product_item_id INT NOT NULL,                    -- FK to product_item
    image_url VARCHAR(2048) NOT NULL,                -- Image URL or file path
    alt_text VARCHAR(255),                           -- Alt text for accessibility
    is_primary BOOLEAN DEFAULT FALSE,                -- Is this the main image?
    sort_order INT DEFAULT 0,                        -- For ordering images
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_item_id) REFERENCES product_item(product_item_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX idx_product_image_item ON product_image(product_item_id);

-- =========================
-- 9. ATTRIBUTE TYPE TABLE
-- =========================
-- Defines types of attributes (e.g., text, number, boolean).
CREATE TABLE attribute_type (
    attribute_type_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique attribute type identifier
    name VARCHAR(100) NOT NULL UNIQUE,                -- Type name (unique)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- =========================
-- 10. ATTRIBUTE CATEGORY TABLE
-- =========================
-- Groups attributes into categories (e.g., physical, technical).
CREATE TABLE attribute_category (
    attribute_category_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique attribute category identifier
    name VARCHAR(100) NOT NULL UNIQUE,                    -- Category name (unique)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- =========================
-- 11. PRODUCT ATTRIBUTE TABLE
-- =========================
-- Stores custom attributes (e.g., material, weight).
CREATE TABLE product_attribute (
    product_attribute_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique product attribute identifier
    name VARCHAR(255) NOT NULL UNIQUE,                    -- Attribute name (unique)
    attribute_type_id INT NOT NULL,                       -- FK to attribute_type
    attribute_category_id INT NOT NULL,                   -- FK to attribute_category
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE INDEX idx_product_attribute_type ON product_attribute(attribute_type_id);
CREATE INDEX idx_product_attribute_category ON product_attribute(attribute_category_id);

-- =========================
-- 12. PRODUCT VARIATION TABLE
-- =========================
-- Links a product item to its attribute values (e.g., material, weight).
CREATE TABLE product_variation (
    product_variation_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique product variation identifier
    product_item_id INT NOT NULL,                         -- FK to product_item
    product_attribute_id INT NOT NULL,                    -- FK to product_attribute
    value TEXT NOT NULL,                                  -- Value for this attribute (e.g., 'Cotton', '500g')
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_item_id) REFERENCES product_item(product_item_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (product_attribute_id) REFERENCES product_attribute(product_attribute_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (product_item_id, product_attribute_id)        -- Each item can have only one value per attribute
);
CREATE INDEX idx_product_variation_item ON product_variation(product_item_id);
CREATE INDEX idx_product_variation_attribute ON product_variation(product_attribute_id);

-- =========================
-- END OF SCHEMA
-- =========================

-- Notes:
-- - All foreign keys use ON UPDATE CASCADE for referential integrity.
-- - Timestamps are managed automatically by MySQL.
-- - Indexes are added for performance on foreign keys and unique columns.