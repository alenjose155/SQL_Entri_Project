CREATE DATABASE Entri_SQL_final;
USE Entri_SQL_final;

CREATE TABLE Branch (
    Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(255),
    Contact_no VARCHAR(15)
);

CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(100),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

CREATE TABLE Books (
    ISBN INT PRIMARY KEY,
    Book_title VARCHAR(255),
    Category VARCHAR(100),
    Rental_Price DECIMAL(10, 2),
    Status VARCHAR(3),
    Author VARCHAR(100),
    Publisher VARCHAR(100)
);

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Customer_address VARCHAR(255),
    Reg_date DATE
);

CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust_id INT,
    Issued_book_name VARCHAR(255),
    Issue_date DATE,
    Isbn_book INT,
    FOREIGN KEY (Issued_cust_id) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(255),
    Return_date DATE,
    Isbn_book2 INT,
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES
(1, 101, 'abc St, City A', '1234567890'),
(2, 102, 'ert St, City B', '9876543210'),
(3, 103, 'qwe St, City C', '5432167890'),
(4, 104, 'ktr St, City D', '6789012345'),
(5, 105, 'efg St, City E', '2345678901'),
(6, 106, 'hig St, City F', '8765432109'),
(7, 107, 'lmn St, City G', '3456789012'),
(8, 108, 'pqr St, City H', '0123456789'),
(9, 109, 'xyz St, City I', '5678901234'),
(10, 110, 'cde St, City J', '7890123456');

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES
(101, 'Alice', 'Manager', 75000, 1),
(102, 'Appu', 'Manager', 72000, 2),
(103, 'Akshay', 'Clerk', 35000, 1),
(104, 'Bob', 'Assistant', 40000, 2),
(105, 'Edwin', 'Manager', 76000, 3),
(106, 'Abi', 'Clerk', 33000, 4),
(107, 'George', 'Assistant', 38000, 5),
(108, 'kichu', 'Manager', 78000, 6),
(109, 'ebi', 'Clerk', 34000, 7),
(110, 'Jack', 'Assistant', 42000, 8);

INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES
(1001, 'Introduction to History', 'History', 30.00, 'yes', 'John', 'ABC Publishers'),
(1002, 'Advanced Mathematics', 'Math', 40.00, 'no', 'Smith', 'XYZ Publishers'),
(1003, 'World War II', 'History', 35.00, 'yes', 'Tom ', 'LMN Publishers'),
(1004, 'Quantum Physics', 'Science', 50.00, 'yes', 'Albert', 'PQR Publishers'),
(1005, 'Modern Literature', 'Literature', 20.00, 'yes', 'Mark ', 'RST Publishers'),
(1006, 'Basic Algebra', 'Math', 25.00, 'no', 'Mary ', 'OPQ Publishers'),
(1007, 'The Great Adventures', 'Adventure', 28.00, 'yes', 'Jules', 'UVW Publishers'),
(1008, 'Data Structures', 'Computer Science', 45.00, 'yes', 'Donald', 'XYZ Publishers'),
(1009, 'The Universe Explained', 'Science', 55.00, 'no', 'Johnson', 'LMN Publishers'),
(1010, 'The Art of Painting', 'Art', 30.00, 'yes', 'David', 'ABC Publishers');

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
(201, 'Richu', 'Street A, City A', '2021-12-15'),
(202, 'Frank', 'Street B, City B', '2022-05-10'),
(203, 'Abhraham', 'Street C, City C', '2023-01-20'),
(204, 'Helen', 'Street D, City D', '2020-08-30'),
(205, 'Abhijith', 'Street E, City E', '2022-02-18'),
(206, 'Jack', 'Street F, City F', '2021-07-12'),
(207, 'Keerthy', 'Street G, City G', '2020-11-25'),
(208, 'Leo', 'Street H, City H', '2023-04-05'),
(209, 'Mariya', 'Street I, City I', '2021-09-30'),
(210, 'Nimmy', 'Street J, City J', '2022-12-22');

INSERT INTO IssueStatus (Issue_Id, Issued_cust_id, Issued_book_name, Issue_date, Isbn_book)
VALUES
(301, 201, 'Introduction to History', '2023-06-05', 1001),
(302, 202, 'World War II', '2023-06-15', 1003),
(303, 203, 'Quantum Physics', '2023-07-10', 1004),
(304, 204, 'Modern Literature', '2023-05-01', 1005),
(305, 205, 'Basic Algebra', '2023-03-25', 1006),
(306, 206, 'The Great Adventures', '2023-04-20', 1007),
(307, 207, 'Data Structures', '2023-02-28', 1008),
(308, 208, 'The Universe Explained', '2023-06-22', 1009),
(309, 209, 'The Art of Painting', '2023-01-17', 1010),
(310, 210, 'Introduction to History', '2023-04-18', 1001);

INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
(401, 201, 'Introduction to History', '2023-06-20', 1001),
(402, 202, 'World War II', '2023-06-18', 1003),
(403, 203, 'Quantum Physics', '2023-07-15', 1004),
(404, 204, 'Modern Literature', '2023-05-10', 1005),
(405, 205, 'Basic Algebra', '2023-04-10', 1006),
(406, 206, 'The Great Adventures', '2023-05-05', 1007),
(407, 207, 'Data Structures', '2023-03-15', 1008),
(408, 208, 'The Universe Explained', '2023-06-28', 1009),
(409, 209, 'The Art of Painting', '2023-02-10', 1010),
(410, 210, 'Introduction to History', '2023-04-25', 1001);

SELECT Book_title, Category, Rental_Price 
FROM Books 
WHERE Status = 'yes';

SELECT Emp_name, Salary 
FROM Employee 
ORDER BY Salary DESC;

SELECT B.Book_title, C.Customer_name 
FROM Books B
JOIN IssueStatus I ON B.ISBN = I.Isbn_book
JOIN Customer C ON I.Issued_cust_id = C.Customer_Id;

SELECT Category, COUNT(*) AS Total_books
FROM Books 
GROUP BY Category;

SELECT Emp_name, Position 
FROM Employee 
WHERE Salary > 50000;

SELECT Customer_name 
FROM Customer 
WHERE Reg_date < '2022-01-01' AND Customer_Id NOT IN (SELECT DISTINCT Issued_cust_id FROM IssueStatus);

SELECT Branch_no, COUNT(*) AS Total_employees 
FROM Employee 
GROUP BY Branch_no;

SELECT DISTINCT C.Customer_name
FROM Customer C
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust_id
WHERE I.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';

SELECT Book_title 
FROM Books
WHERE Book_title LIKE '%history%';

SELECT Branch_no, COUNT(*) AS Total_employees 
FROM Employee 
GROUP BY Branch_no 
HAVING COUNT(*) > 5;

SELECT E.Emp_name, B.Branch_address 
FROM Employee E
JOIN Branch B ON E.Branch_no = B.Branch_no
WHERE E.Position = 'Manager';

SELECT DISTINCT C.Customer_name
FROM Customer C
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust_id
JOIN Books B ON I.Isbn_book = B.ISBN
WHERE B.Rental_Price > 25;


