create database Movie_Rental;
use Movie_Rental;

-- creating a table customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY auto_increment,
    first_name VARCHAR(50),
    last_name VARCHAR(50) ,
    email VARCHAR(40) ,
    phone_number VARCHAR(20),
    address VARCHAR(50)
);

-- creating table movies
CREATE TABLE Movies ( movie_id INT PRIMARY  KEY,
    title VARCHAR(40) NOT NULL,
    genre VARCHAR(50),
    release_year INT,
    director VARCHAR(25)
);
-- creating table Rentals

CREATE TABLE Rentals(
rental_id INT PRIMARY KEY,
Customer_id INT,
Movie_id INT,
RentalDate DATETIME DEFAULT current_timestamp,
DueDate DATE,
ReturnDate DATE NULL,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (movie_id) REFERENCES movies(movie_id));  


-- creating table Payments

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    rental_id INT,
    Amount DECIMAL(5,2),
    payment_date DATETIME DEFAULT current_timestamp,
    payment_method VARCHAR(50),
    FOREIGN KEY (rental_id) REFERENCES Rentals(rental_id)
);

-- creating table employees

create table employees(
employee_id int primary key,
customer_id int,
first_name varchar(50),
last_name varchar(50),
role_employee varchar(50),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- creating a table revews
create table reviews(
review_id int primary key,
customer_id int,
movie_id int,
rating int,
review text,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
FOREIGN KEY(movie_id)REFERENCES movies(movie_id));



-- insert values into customers
INSERT INTO Customers (first_name, last_name, email, phone_number, address) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', '123 Elm Street, Springfield'),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '456 Oak Avenue, Metropolis'),
('Michael', 'Johnson', 'michael.johnson@example.com', '555-9101', '789 Pine Road, Gotham'),
('Emily', 'Brown', 'emily.brown@example.com', '555-1121', '321 Maple Drive, Star City'),
('Chris', 'Davis', 'chris.davis@example.com', '555-3141', '654 Birch Lane, Smallville'),
('Patricia', 'Miller', 'patricia.miller@example.com', '555-5161', '987 Cedar Blvd, Central City'),
('David', 'Wilson', 'david.wilson@example.com', '555-7181', '135 Spruce Street, Riverdale'),
('Linda', 'Moore', 'linda.moore@example.com', '555-9202', '246 Elm Street, Sunnydale'),
('James', 'Taylor', 'james.taylor@example.com', '555-1223', '357 Oak Lane, Hill Valley'),
('Susan', 'Anderson', 'susan.anderson@example.com', '555-3244', '468 Pine Road, Twin Peaks'),
('Robert', 'White', 'robert.white@example.com', '555-5656', '159 Maple Street, Oakwood'),
('Emily', 'Clark', 'emily.clark@example.com', '555-7878', '258 Cedar Avenue, Rivertown'),
('William', 'Lewis', 'william.lewis@example.com', '555-4343', '369 Birch Road, Elmsworth'),
('Olivia', 'Hall', 'olivia.hall@example.com', '555-8989', '741 Oak Boulevard, Fairview'),
('Daniel', 'Young', 'daniel.young@example.com', '555-3131', '852 Pine Lane, Brookfield'),
('Sophia', 'King', 'sophia.king@example.com', '555-6262', '963 Cedar Drive, Maplewood'),
('Ethan', 'Scott', 'ethan.scott@example.com', '555-7373', '147 Birch Blvd, Greenfield'),
('Isabella', 'Adams', 'isabella.adams@example.com', '555-8484', '258 Elm Street, Sunset Valley'),
('Lucas', 'Baker', 'lucas.baker@example.com', '555-9595', '369 Oak Drive, Rivertown'),
('Mia', 'Nelson', 'mia.nelson@example.com', '555-0606', '741 Maple Lane, Lakeside'),
('Noah', 'Mitchell', 'noah.mitchell@example.com', '555-1717', '852 Cedar Boulevard, Ashland'),
('Ava', 'Perez', 'ava.perez@example.com', '555-2828', '963 Pine Road, Hilltop'),
('Liam', 'Roberts', 'liam.roberts@example.com', '555-3939', '147 Birch Street, Crestwood'),
('Amelia', 'Turner', 'amelia.turner@example.com', '555-4040', '258 Oak Boulevard, Meadowbrook'),
('James', 'Harris', 'james.harris@example.com', '555-5151', '369 Maple Drive, Oakdale'),
('Harper', 'Green', 'harper.green@example.com', '555-6262', '741 Cedar Road, Springdale'),
('Benjamin', 'Young', 'benjamin.young@example.com', '555-7373', '852 Birch Lane, Riverside'),
('Evelyn', 'Clark', 'evelyn.clark@example.com', '555-8484', '963 Elm Street, Willow Creek'),
('Logan', 'Hall', 'logan.hall@example.com', '555-9595', '147 Pine Avenue, Ashford'),
('Chloe', 'Lewis', 'chloe.lewis@example.com', '555-0606', '258 Birch Drive, Greystone'),
('Sebastian', 'Robinson', 'sebastian.robinson@example.com', '555-1717', '369 Oak Street, Fairview');


select * from customers;



-- insert values into movies

INSERT INTO Movies (movie_id, title, genre, release_year, director) VALUES
(1, 'Shawshank Redemption', 'Drama', 1994, 'Frank Darabont'),
(2, 'The Godfather', 'Crime, Drama', 1972, 'Francis Ford Coppola'),
(3, 'The Dark Knight', 'Action, Crime', 2008, 'Christopher Nolan'),
(4, 'Pulp Fiction', 'Crime, Drama', 1994, 'Quentin Tarantino'),
(5, 'Inception', 'Sci-Fi, Thriller', 2010, 'Christopher Nolan'),
(6, 'Forrest Gump', 'Drama, Romance', 1994, 'Robert Zemeckis'),
(7, 'The Matrix', 'Sci-Fi, Action', 1999, 'Lana Wachowski'),
(8, 'Gladiator', 'Action, Drama', 2000, 'Ridley Scott'),
(9, 'Titanic', 'Romance, Drama', 1997, 'James Cameron'),
(10, 'Jurassic Park', 'Sci-Fi, Adventure', 1993, 'Steven Spielberg'),
(11, 'The Lion King', 'Animation, Family', 1994, 'Roger Allers'),
(12, 'Star Wars', 'Sci-Fi, Adventure', 1977, 'George Lucas'),
(13, 'The Avengers', 'Action, Sci-Fi', 2012, 'Joss Whedon'),
(14, 'Silence of the Lambs', 'Thriller, Crime', 1991, 'Jonathan Demme'),
(15, 'LOTR: Fellowship', 'Fantasy, Adventure', 2001, 'Peter Jackson'),
(16, 'Finding Nemo', 'Animation, Adventure', 2003, 'Andrew Stanton'),
(17, 'The Departed', 'Crime, Drama', 2006, 'Martin Scorsese'),
(18, 'Dark Knight Rises', 'Action, Crime', 2012, 'Christopher Nolan'),
(19, 'Matrix Reloaded', 'Sci-Fi, Action', 2003, 'Lana Wachowski'),
(20, 'Interstellar', 'Sci-Fi, Drama', 2014, 'Christopher Nolan'),
(21, 'The Incredibles', 'Animation, Action', 2004, 'Brad Bird'),
(22, 'Back to the Future', 'Sci-Fi, Adventure', 1985, 'Robert Zemeckis'),
(23, 'Hunger Games', 'Sci-Fi, Adventure', 2012, 'Gary Ross'),
(24, 'Grand Budapest Hotel', 'Comedy, Drama', 2014, 'Wes Anderson'),
(25, 'La La Land', 'Musical, Romance', 2016, 'Damien Chazelle'),
(26, 'Mad Max: Fury Road', 'Action, Adventure', 2015, 'George Miller'),
(27, 'Social Network', 'Drama, Biography', 2010, 'David Fincher'),
(28, 'Wolf of Wall Street', 'Biography, Comedy', 2013, 'Martin Scorsese'),
(29, 'Lego Movie', 'Animation, Family', 2014, 'Phil Lord'),
(30, 'Coco', 'Animation, Family', 2017, 'Lee Unkrich');
  select * from movies;
  
  -- insert into rentals
  INSERT INTO Rentals (rental_id, Customer_id, Movie_id, RentalDate, DueDate, ReturnDate) VALUES
(1, 1, 1, '2023-03-01 10:00:00', '2023-03-08', '2023-03-07'),
(2, 2, 2, '2023-03-02 11:00:00', '2023-03-09', NULL),
(3, 3, 3, '2023-03-03 12:00:00', '2023-03-10', '2023-03-09'),
(4, 4, 4, '2023-03-04 13:00:00', '2023-03-11', NULL),
(5, 5, 5, '2023-03-05 14:00:00', '2023-03-12', '2023-03-11'),
(6, 6, 6, '2023-03-06 15:00:00', '2023-03-13', NULL),
(7, 7, 7, '2023-03-07 16:00:00', '2023-03-14', '2023-03-13'),
(8, 8, 8, '2023-03-08 17:00:00', '2023-03-15', NULL),
(9, 9, 9, '2023-03-09 18:00:00', '2023-03-16', '2023-03-15'),
(10, 10, 10, '2023-03-10 19:00:00', '2023-03-17', NULL),
(11, 11, 11, '2023-03-11 20:00:00', '2023-03-18', '2023-03-17'),
(12, 12, 12, '2023-03-12 21:00:00', '2023-03-19', NULL),
(13, 13, 13, '2023-03-13 22:00:00', '2023-03-20', '2023-03-19'),
(14, 14, 14, '2023-03-14 23:00:00', '2023-03-21', NULL),
(15, 15, 15, '2023-03-15 09:00:00', '2023-03-22', '2023-03-21'),
(16, 16, 16, '2023-03-16 10:00:00', '2023-03-23', NULL),
(17, 17, 17, '2023-03-17 11:00:00', '2023-03-24', '2023-03-23'),
(18, 18, 18, '2023-03-18 12:00:00', '2023-03-25', NULL),
(19, 19, 19, '2023-03-19 13:00:00', '2023-03-26', '2023-03-25'),
(20, 20, 20, '2023-03-20 14:00:00', '2023-03-27', NULL),
(21, 21, 21, '2023-03-21 15:00:00', '2023-03-28', '2023-03-27'),
(22, 22, 22, '2023-03-22 16:00:00', '2023-03-29', NULL),
(23, 23, 23, '2023-03-23 17:00:00', '2023-03-30', '2023-03-29'),
(24, 24, 24, '2023-03-24 18:00:00', '2023-03-31', NULL),
(25, 25, 25, '2023-03-25 19:00:00', '2023-04-01', '2023-03-31'),
(26, 26, 26, '2023-03-26 20:00:00', '2023-04-02', NULL),
(27, 27, 27, '2023-03-27 21:00:00', '2023-04-03', '2023-04-02'),
(28, 28, 28, '2023-03-28 22:00:00', '2023-04-04', NULL),
(29, 29, 29, '2023-03-29 23:00:00', '2023-04-05', '2023-04-04'),
(30, 30, 30, '2023-03-30 09:00:00', '2023-04-06', NULL);
select * from rentals;

-- insert into payments

INSERT INTO Payments (rental_id, Amount, payment_date, payment_method) VALUES
(1, 15.50, '2023-03-01 10:00:00', 'Credit Card'),
(2, 20.00, '2023-03-02 11:00:00', 'PayPal'),
(3, 9.99, '2023-03-03 12:00:00', 'Debit Card'),
(4, 25.00, '2023-03-04 13:00:00', 'Cash'),
(5, 18.75, '2023-03-05 14:00:00', 'Credit Card'),
(6, 12.00, '2023-03-06 15:00:00', 'PayPal'),
(7, 22.50, '2023-03-07 16:00:00', 'Debit Card'),
(8, 30.00, '2023-03-08 17:00:00', 'Cash'),
(9, 14.99, '2023-03-09 18:00:00', 'Credit Card'),
(10, 19.00, '2023-03-10 19:00:00', 'PayPal'),
(11, 16.50, '2023-03-11 20:00:00', 'Debit Card'),
(12, 11.75, '2023-03-12 21:00:00', 'Cash'),
(13, 21.00, '2023-03-13 22:00:00', 'Credit Card'),
(14, 17.50, '2023-03-14 23:00:00', 'PayPal'),
(15, 13.00, '2023-03-15 09:00:00', 'Debit Card'),
(16, 27.50, '2023-03-16 10:00:00', 'Cash'),
(17, 23.00, '2023-03-17 11:00:00', 'Credit Card'),
(18, 19.99, '2023-03-18 12:00:00', 'PayPal'),
(19, 28.00, '2023-03-19 13:00:00', 'Debit Card'),
(20, 24.50, '2023-03-20 14:00:00', 'Cash'),
(21, 20.00, '2023-03-21 15:00:00', 'Credit Card'),
(22, 18.00, '2023-03-22 16:00:00', 'PayPal'),
(23, 22.75, '2023-03-23 17:00:00', 'Debit Card'),
(24, 14.50, '2023-03-24 18:00:00', 'Cash'),
(25, 30.00, '2023-03-25 19:00:00', 'Credit Card'),
(26, 26.00, '2023-03-26 20:00:00', 'PayPal'),
(27, 15.00, '2023-03-27 21:00:00', 'Debit Card'),
(28, 19.50, '2023-03-28 22:00:00', 'Cash'),
(29, 21.00, '2023-03-29 23:00:00', 'Credit Card'),
(30, 12.75, '2023-03-30 09:00:00', 'PayPal');

select * from payments;


-- inserting into employees
INSERT INTO Employees (employee_id, customer_id, first_name, last_name, role_employee) VALUES
(1, 1, 'Alice', 'Johnson', 'Manager'),
(2, 2, 'Bob', 'Smith', 'Assistant'),
(3, 3, 'Charlie', 'Brown', 'Technician'),
(4, 4, 'Diana', 'Miller', 'Clerk'),
(5, 5, 'Ethan', 'Davis', 'Supervisor'),
(6, 6, 'Fiona', 'Garcia', 'Receptionist'),
(7, 7, 'George', 'Martinez', 'Cashier'),
(8, 8, 'Hannah', 'Rodriguez', 'Manager'),
(9, 9, 'Ian', 'Wilson', 'Assistant'),
(10, 10, 'Jack', 'Moore', 'Technician'),
(11, 11, 'Karen', 'Taylor', 'Clerk'),
(12, 12, 'Leo', 'Anderson', 'Supervisor'),
(13, 13, 'Mia', 'Thomas', 'Receptionist'),
(14, 14, 'Nate', 'Hernandez', 'Cashier'),
(15, 15, 'Olivia', 'White', 'Manager'),
(16, 16, 'Paul', 'Lewis', 'Assistant'),
(17, 17, 'Quinn', 'Young', 'Technician'),
(18, 18, 'Rachel', 'King', 'Clerk'),
(19, 19, 'Sam', 'Scott', 'Supervisor'),
(20, 20, 'Tina', 'Green', 'Receptionist'),
(21, 21, 'Umar', 'Adams', 'Cashier'),
(22, 22, 'Vera', 'Baker', 'Manager'),
(23, 23, 'Walter', 'Gonzalez', 'Assistant'),
(24, 24, 'Xena', 'Nelson', 'Technician'),
(25, 25, 'Yasmin', 'Carter', 'Clerk'),
(26, 26, 'Zane', 'Mitchell', 'Supervisor'),
(27, 27, 'Aaron', 'Perez', 'Receptionist'),
(28, 28, 'Beth', 'Robinson', 'Cashier'),
(29, 29, 'Cody', 'Clark', 'Manager'),
(30, 30, 'Derek', 'Lewis', 'Assistant');

select * from employees;

-- inserting into reviews
INSERT INTO Reviews (review_id, customer_id, movie_id, rating, review) VALUES
(1, 1, 1, 5, 'Absolutely loved it! The storyline was gripping.'),
(2, 2, 2, 4, 'Great movie with fantastic visuals, but the plot was a bit slow.'),
(3, 3, 3, 3, 'It was okay, not the best but entertaining enough.'),
(4, 4, 4, 5, 'A masterpiece! Brilliant performances by the cast.'),
(5, 5, 5, 2, 'Disappointed. The movie did not meet my expectations.'),
(6, 6, 6, 4, 'Really good, especially the action scenes.'),
(7, 7, 7, 1, 'Horrible movie. I wouldn’t recommend it to anyone.'),
(8, 8, 8, 5, 'An emotional rollercoaster. Truly inspiring.'),
(9, 9, 9, 3, 'It was alright. Some parts were boring, but others were fun.'),
(10, 10, 10, 4, 'Great soundtrack and cinematography.'),
(11, 11, 11, 5, 'One of the best movies I’ve ever seen!'),
(12, 12, 12, 2, 'Not my cup of tea. The plot was confusing.'),
(13, 13, 13, 4, 'Very entertaining. The actors did a great job.'),
(14, 14, 14, 3, 'Good movie, but it felt a bit rushed at times.'),
(15, 15, 15, 5, 'Loved every moment of it. A must-watch!'),
(16, 16, 16, 1, 'Terrible. I almost fell asleep halfway through.'),
(17, 17, 17, 4, 'Solid movie with an engaging plot.'),
(18, 18, 18, 3, 'Average. Some parts were fun, but overall, just okay.'),
(19, 19, 19, 5, 'Incredible film! I would watch it again.'),
(20, 20,20, 2, 'Not great. I expected more from the director.'),
(21, 21, 21, 4, 'A very good movie. Definitely worth watching.'),
(22, 22, 22, 5, 'Outstanding! Beautifully made and emotionally powerful.'),
(23, 23, 23, 3, 'It had its moments, but I wasn’t fully engaged.'),
(24, 24, 24, 4, 'Really enjoyed it. The plot twists were unexpected.'),
(25, 25, 25, 5, 'Brilliant! The cinematography was stunning.'),
(26, 26, 26, 2, 'Boring and predictable. Not recommended.'),
(27, 27, 27, 4, 'Very good performances and an interesting plot.'),
(28, 28, 28, 1, 'Worst movie I’ve seen in a long time.'),
(29, 29, 29, 5, 'Epic! The best movie of the year without a doubt.'),
(30, 30, 30, 3, 'Okay film. It had potential but didn’t quite deliver.');

select * from reviews;
-- views

create view active_customer as
select first_name,address,email
from customers
order by first_name;
select * from active_customer;

CREATE VIEW MovieDetails AS
SELECT 
    movie_id,
    title,
    genre,
    release_year,
    director
FROM Movies;
select * from MovieDetails;

create view rentals_movies  as
select rental_id,movie_id,DUEDATE,RETURNDATE
from rentals
where rental_id>5;
select * from rentals_movies;

CREATE VIEW PaymentSummary AS
SELECT 
    p.payment_id,
    p.rental_id,
    c.first_name AS customer_first_name,
    c.last_name AS customer_last_name,
    p.Amount,
    p.payment_date,
    p.payment_method
FROM Payments p
JOIN Rentals r ON p.rental_id = r.rental_id
JOIN Customers c ON r.customer_id = c.customer_id;

select * from PaymentSummary;

CREATE VIEW EmployeeDetails AS
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.role_employee,
    c.first_name AS customer_first_name,
    c.last_name AS customer_last_name
FROM Employees e
LEFT JOIN Customers c ON e.customer_id = c.customer_id;

select * from EmployeeDetails;


CREATE VIEW ReviewDetails AS
SELECT 
    r.review_id,
    c.first_name AS customer_first_name,
    c.last_name AS customer_last_name,
    m.title AS movie_title,
    r.rating,
    r.review
FROM Reviews r
JOIN Customers c ON r.customer_id = c.customer_id
JOIN Movies m ON r.movie_id = m.movie_id;
select * from ReviewDetails;

-- stored procedure

DELIMITER //

CREATE PROCEDURE GetCustomerDetails(
    IN p_customer_id INT
)
BEGIN
    SELECT customer_id, first_name, last_name, email, phone_number, address
    FROM Customers
    WHERE customer_id = p_customer_id;
END //

DELIMITER ;
call GetCustomerDetails(5);

DELIMITER //

CREATE PROCEDURE AddCustomers(
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_email VARCHAR(40),
    IN p_phone_number VARCHAR(20),
    IN p_address VARCHAR(50)
)
BEGIN
    INSERT INTO Customers (first_name, last_name, email, phone_number, address)
    VALUES (p_first_name, p_last_name, p_email, p_phone_number, p_address);

    -- Select the newly added customer
    SELECT * FROM Customers
    WHERE email = p_email;
END //

DELIMITER ;
CALL AddCustomer('John', 'Doe', 'john.doe@example.com', '555-1234', '123 Elm Street, Springfield');


DELIMITER //

CREATE PROCEDURE GetMovieDetails(
    IN p_movie_id INT
)
BEGIN
    SELECT movie_id, title, genre, release_year, director
    FROM Movies
    WHERE movie_id = p_movie_id;
END //

DELIMITER ;
call GetMovieDetails(3);

DELIMITER //

CREATE PROCEDURE UpdateMovie(
    IN p_movie_id INT,
    IN p_title VARCHAR(40),
    IN p_genre VARCHAR(50),
    IN p_release_year INT,
    IN p_director VARCHAR(25)
)
BEGIN
    UPDATE Movies
    SET title = p_title,
        genre = p_genre,
        release_year = p_release_year,
        director = p_director
    WHERE movie_id = p_movie_id;

    -- Select the updated movie details
    SELECT * FROM Movies
    WHERE movie_id = p_movie_id;
END //

DELIMITER ;
CALL UpdateMovie(1, 'Shawshank Redemption', 'Drama', 1994, 'Frank Darabont');

DELIMITER //

CREATE PROCEDURE AddPayment(
    IN p_rental_id INT,
    IN p_amount DECIMAL(5,2),
    IN p_payment_method VARCHAR(50)
)
BEGIN
    INSERT INTO Payments (rental_id, amount, payment_method)
    VALUES (p_rental_id, p_amount, p_payment_method);

    -- Select the newly added payment
    SELECT * FROM Payments
    WHERE rental_id = p_rental_id
    ORDER BY payment_id DESC
    LIMIT 1;
END //

DELIMITER ;
CALL AddPayment(25, 30.00, 'Credit Card');

DELIMITER //

CREATE PROCEDURE GetPaymentDetails(
    IN p_payment_id INT
)
BEGIN
    SELECT payment_id, rental_id, amount, payment_date, payment_method
    FROM Payments
    WHERE payment_id = p_payment_id;
END //

DELIMITER ;
CALL GetPaymentDetails(1);

DELIMITER //

CREATE PROCEDURE UpdateReview(
    IN p_review_id INT,
    IN p_rating INT,
    IN p_review TEXT
)
BEGIN
    UPDATE Reviews
    SET rating = p_rating,
        review = p_review
    WHERE review_id = p_review_id;

    -- Select the updated review details
    SELECT * FROM Reviews
    WHERE review_id = p_review_id;
END //

DELIMITER ;

CALL UpdateReview(1, 1, 'Absolutely loved it! The storyline was gripping.');










  





































