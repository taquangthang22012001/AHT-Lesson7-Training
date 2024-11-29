INSERT INTO student (student_number, student_name, address, email, date_of_birth, image_url, image_type) 
VALUES 
('STU001', 'Nguyen Van A', '123 Le Loi, HCM', 'a@example.com', '2000-05-15', '/images/stu001.jpg', 'jpg'),
('STU002', 'Tran Thi B', '456 Nguyen Trai, HN', 'b@example.com', '1999-09-10', '/images/stu002.jpg', 'jpg'),
('STU003', 'Le Van C', '789 Le Thanh Ton, HCM', 'c@example.com', '2001-03-20', '/images/stu003.jpg', 'jpg'),
('STU004', 'Pham Thi D', '321 Hai Ba Trung, DN', 'd@example.com', '1998-12-25', '/images/stu004.jpg', 'jpg'),
('STU005', 'Hoang Van E', '654 Tran Hung Dao, HN', 'e@example.com', '2002-07-05', '/images/stu005.jpg', 'jpg');

INSERT INTO library_card (student_id, phone)
VALUES 
(1, 84912345678),
(2, 84987654321),
(3, 84955511122),
(4, 84944433366),
(5, 84988877799);

INSERT INTO category (category_name)
VALUES 
('Science Fiction'),
('Romance'),
('History'),
('Technology'),
('Philosophy');

INSERT INTO book (book_name, author, publisher, publisher_year, price, image_url, image_type, quantity, category_id) 
VALUES 
('Dune', 'Frank Herbert', 'Chilton Books', 1965, 15.99, '/images/dune.jpg', 'jpg', 10, 1),
('Pride and Prejudice', 'Jane Austen', 'Whitehall', 1813, 12.49, '/images/pride.jpg', 'jpg', 8, 2),
('Sapiens', 'Yuval Noah Harari', 'Harper', 2011, 18.99, '/images/sapiens.jpg', 'jpg', 5, 3),
('Clean Code', 'Robert C. Martin', 'Prentice Hall', 2008, 25.50, '/images/clean_code.jpg', 'jpg', 7, 4),
('The Republic', 'Plato', 'Penguin', 380, 9.99, '/images/republic.jpg', 'jpg', 12, 5);


INSERT INTO borrow_order (borrow_date, return_date, status, student_id)
VALUES 
('2024-11-01', '2024-11-15', 'borrowed', 1),
('2024-11-05', '2024-11-20', 'returned', 2),
('2024-11-10', '2024-11-25', 'borrowed', 3),
('2024-11-15', '2024-11-30', 'overdue', 4),
('2024-11-20', '2024-12-05', 'borrowed', 5);

INSERT INTO borrow_details (borrow_id, book_id, quantity)
VALUES 
(1, 1, 1), 
(1, 2, 2), 
(3, 4, 1), 
(4, 5, 3); 
