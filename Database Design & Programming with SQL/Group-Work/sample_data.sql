USE BookStoreDB;

-- 1. Insert into country
-- Adds countries to the `country` table. These will be used to associate addresses with specific countries.
INSERT INTO country (country_name) VALUES 
('Kenya'),
('Uganda'),
('Tanzania');

-- 2. Insert into address_status
-- Adds address statuses to the `address_status` table. These statuses indicate whether an address is current or old.
INSERT INTO address_status (status_name) VALUES 
('Current'),
('Old');

-- 3. Insert into book_language
-- Adds languages to the `book_language` table. These languages will be associated with books.
INSERT INTO book_language (language_name) VALUES 
('English'),
('Swahili'),
('Sheng');

-- 4. Insert into publisher
-- Adds publishers to the `publisher` table. These publishers will be associated with books.
INSERT INTO publisher (publisher_name, contact_info) VALUES 
('Nairobi Press', 'print@nairobipress.co.ke'),
('East African Books Ltd', 'eabooks@hotmail.com');

-- 5. Insert into author
-- Adds authors to the `author` table. These authors will be linked to books they have written.
INSERT INTO author (first_name, last_name, bio) VALUES 
('Ngugi', 'wa Thiong\'o', 'Legendary Kenyan writer. Wrote novels that scared colonialists.'),
('Binyavanga', 'Wainaina', 'Wrote "How to Write About Africa", not a guide, just vibes.'),
('Muthoni', 'TheAuthor', 'Loves chai and storytelling.');

-- 6. Insert into book
-- Adds books to the `book` table. Each book is associated with a publisher, language, price, and publication date.
INSERT INTO book (title, publisher_id, language_id, price, published_date) VALUES 
('The River Between', 1, 1, 850.00, '2003-04-01'),
('How to Write About Africa', 2, 1, 950.00, '2005-01-01'),
('Wanjiku\'s Survival Guide', 1, 3, 400.00, '2020-07-10');

-- 7. Insert into book_author
-- Links books to their respective authors in the `book_author` table.
INSERT INTO book_author (book_id, author_id) VALUES 
(1, 1), -- Ngugi wrote The River Between
(2, 2), -- Binyavanga wrote How to Write About Africa
(3, 3); -- Muthoni wrote Wanjiku's Survival Guide

-- 8. Insert into customer
-- Adds customers to the `customer` table. Each customer has a name, email, and phone number.
INSERT INTO customer (first_name, last_name, email, phone) VALUES 
('Kamau', 'Mwangi', 'kamau@gmail.com', '0712345678'),
('Achieng', 'Deborah', 'achieng@gamil.com', '0722345678'),
('Wanjiku', 'WaNairobi', 'wanjiku@gmail.com', '0733345678');

-- 9. Insert into address
-- Adds addresses to the `address` table. Each address is associated with a country.
INSERT INTO address (street, city, state, postal_code, country_id) VALUES 
('Moi Avenue', 'Nairobi', 'Nairobi', '00100', 1),
('Oginga Odinga Street', 'Kisumu', 'Kisumu', '40100', 1),
('Kanu Street', 'Nakuru', 'Rift Valley', '20100', 1);

-- 10. Insert into customer_address
-- Links customers to their addresses in the `customer_address` table. Each address has a status (e.g., Current).
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES 
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

-- 11. Insert into shipping_method
-- Adds shipping methods to the `shipping_method` table. Each method has a name and description.
INSERT INTO shipping_method (method_name, description) VALUES 
('Boda Boda', 'Fastest if it doesn’t rain.'),
('Matatu', 'Your book might arrive with reggae.'),
('G4S', 'The serious option.');

-- 12. Insert into cust_order
-- Adds customer orders to the `cust_order` table. Each order is associated with a customer, shipping method, and total amount.
INSERT INTO cust_order (customer_id, order_date, shipping_method_id, total_amount) VALUES 
(1, NOW(), 1, 1250.00), -- Kamau
(2, NOW(), 2, 950.00),  -- Achieng
(3, NOW(), 3, 400.00);  -- Wanjiku

-- 13. Insert into order_line
-- Adds order line items to the `order_line` table. Each line item specifies the book, quantity, and price.
INSERT INTO order_line (order_id, book_id, quantity, price) VALUES 
(1, 1, 1, 850.00),  -- Kamau ordered The River Between
(1, 3, 1, 400.00),  -- Kamau also ordered Wanjiku's Survival Guide
(2, 2, 1, 950.00),  -- Achieng ordered How to Write About Africa
(3, 3, 1, 400.00);  -- Wanjiku ordered Wanjiku's Survival Guide

-- 14. Insert into order_status
-- Adds order statuses to the `order_status` table. These statuses track the progress of an order.
INSERT INTO order_status (status_name) VALUES 
('Pending'),
('Shipped'),
('Delivered');

-- 15. Insert into order_history
-- Adds order history records to the `order_history` table. Each record tracks the status, update time, and notes for an order.
INSERT INTO order_history (order_id, status_id, update_time, note) VALUES 
(1, 1, NOW(), 'Kamau ordered. Still arguing with boda guy about fare.'),  -- Kamau's order is pending
(2, 2, NOW(), 'Matatu conductor accepted books instead of cash.'),        -- Achieng's order was shipped
(3, 3, NOW(), 'Wanjiku received the book and posted on TikTok.');         -- Wanjiku's order was delivered