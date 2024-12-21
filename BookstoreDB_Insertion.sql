-- Insert sample data into Authors
INSERT INTO Authors (AuthorName) VALUES 
('Chetan Bhagat'),
('Amish Tripathi'),
('Arundhati Roy'),
('R.K. Narayan'),
('Jhumpa Lahiri'),
('Rabindranath Tagore');

-- Insert sample data into Categories
INSERT INTO Categories (CategoryName) VALUES 
('Fiction'),
('History'),
('Philosophy'),
('Drama'),
('Romance'),
('Biography');

-- Insert sample data into Books
INSERT INTO Books (Title, AuthorID, CategoryID, Price, StockQuantity) VALUES 
('Five Point Someone', 1, 1, 299.00, 20),
('The Immortals of Meluha', 2, 1, 350.00, 15),
('The God of Small Things', 3, 1, 400.00, 0),
('Malgudi Days', 4, 4, 250.00, 25),
('The Namesake', 5, 1, 320.00, 30),
('Sita: Warrior of Mithila', 2, 1, 370.00, 18),
('Swami and Friends', 4, 4, 200.00, 22),
('Interpreter of Maladies', 5, 5, 280.00, 12),
('Wings of Fire', 1, 2, 450.00, 14),
('Gitanjali', 3, 3, 500.00, 8),
('My Experiments with Truth', 6, 6, 450.00, 0);

-- Insert sample data into Orders
INSERT INTO Orders (CustomerName, OrderDate) VALUES 
('Rajesh Sharma', '2024-12-20'),
('Priya Singh', '2024-12-18'),
('Arun Kumar', '2024-12-15'),
('Meera Patel', '2024-12-22');

-- Insert sample data into OrderDetails
INSERT INTO OrderDetails (OrderID, BookID, Quantity) VALUES 
(1, 1, 2),  -- Rajesh Sharma ordered 2 copies of Five Point Someone
(1, 5, 1),  -- Rajesh Sharma ordered 1 copy of The Namesake
(2, 2, 3),  -- Priya Singh ordered 3 copies of The Immortals of Meluha
(2, 8, 2),  -- Priya Singh ordered 2 copies of Interpreter of Maladies
(3, 4, 1),  -- Arun Kumar ordered 1 copy of Malgudi Days
(3, 9, 1),  -- Arun Kumar ordered 1 copy of Wings of Fire
(4, 6, 2),  -- Meera Patel ordered 2 copies of Sita: Warrior of Mithila
(4, 8, 3),  -- Meera Patel ordered 3 copies of Interpreter of Maladies
(4, 1, 2);  -- Meera Patel ordered 2 copies of Five Point Someone

