CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
    birth_year INT,
    nationality VARCHAR(50)
);

-- Create Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200),
    author_id INT,
    publication_year INT,
    genre VARCHAR(50),
    price DECIMAL(10, 2),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    registration_date DATE
);

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Order_Items Table
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

INSERT INTO Authors (author_id, author_name, birth_year, nationality)
VALUES
    (1, 'F. Scott Fitzgerald', 1896, 'American'),
    (2, 'Jane Austen', 1775, 'British'),
    (3, 'Harper Lee', 1926, 'American'),
    (4, 'George Orwell', 1903, 'British'),
    (5, 'J.R.R. Tolkien', 1892, 'British'),
    (6, 'J.K. Rowling', 1965, 'British'),
    (7, 'J.D. Salinger', 1919, 'American'),
    (8, 'Virginia Woolf', 1882, 'British'),
    (9, 'Aldous Huxley', 1894, 'British'),
    (10, 'Homer', NULL, 'Greek');
    
    
INSERT INTO Books(book_id, title, author_id, publication_year, genre, price)
VALUES
    (1, 'The Great Gatsby', 1, 1925, 'Fiction', 20),
    (2, 'Pride and Prejudice', 2, 1813, 'Fiction', 15),
    (3, 'To Kill a Mockingbird', 3, 1960, 'Fiction', 18),
    (4, '1984', 4, 1949, 'Fiction', 22),
    (5, 'The Hobbit', 5, 1937, 'Fantasy', 25),
    (6, 'Harry Potter and the...', 6, 1997, 'Fantasy', 28),
    (7, 'The Catcher in the Rye', 7, 1951, 'Fiction', 16),
    (8, 'The Lord of the Rings', 5, 1954, 'Fantasy', 30),
    (9, 'To the Lighthouse', 8, 1927, 'Fiction', 19),
    (10, 'Brave New World', 9, 1932, 'Fiction', 21);

INSERT INTO Customers (customer_id, first_name, last_name, email, registration_date)
VALUES
    (1, 'John', 'Smith', 'john@example.com', '2022-01-15'),
    (2, 'Emily', 'Johnson', 'emily@example.com', '2022-03-10'),
    (3, 'Michael', 'Williams', 'michael@example.com', '2022-05-20'),
    (4, 'Sarah', 'Brown', 'sarah@example.com', '2022-07-12'),
    (5, 'David', 'Jones', 'david@example.com', '2022-09-05'),
    (6, 'Laura', 'Davis', 'laura@example.com', '2022-11-18'),
    (7, 'James', 'Miller', 'james@example.com', '2023-01-22'),
    (8, 'Emma', 'Wilson', 'emma@example.com', '2023-03-14'),
    (9, 'Olivia', 'Taylor', 'olivia@example.com', '2023-05-29'),
    (10, 'Liam', 'Anderson', 'liam@example.com', '2023-07-02');

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES
    (1, 1, '2022-02-01'),
    (2, 2, '2022-03-15'),
    (3, 1, '2022-04-10'),
    (4, 3, '2022-05-18'),
    (5, 4, '2022-07-25'),
    (6, 5, '2022-09-10'),
    (7, 6, '2022-11-25'),
    (8, 7, '2023-01-30'),
    (9, 8, '2023-03-20'),
    (10, 9, '2023-06-05');

INSERT INTO Order_Items (order_item_id, order_id, book_id, quantity)
VALUES
    (1, 1, 2, 1),
    (2, 1, 4, 2),
    (3, 2, 1, 1),
    (4, 3, 3, 1),
    (5, 3, 5, 3),
    (6, 4, 6, 2),
    (7, 5, 7, 1),
    (8, 6, 8, 2),
    (9, 7, 9, 1),
    (10, 8, 10, 1);
