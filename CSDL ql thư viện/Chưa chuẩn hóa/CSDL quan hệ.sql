

-- // Chưa chuẩn hóa
CREATE TABLE student (
    student_number VARCHAR(15) PRIMARY KEY,
    student_name VARCHAR(50),
    address VARCHAR(500),
    email VARCHAR(50),
    image VARCHAR(255),
    date_of_birth DATE,
    image_url TEXT,
    image_type VARCHAR(50)
);

CREATE TABLE library_card (
    library_card_id INT PRIMARY KEY,
    phone BIGINT,
    student_name VARCHAR(50),
    date_of_birth DATE,
    address VARCHAR(500),
    email VARCHAR(50),
    image_url TEXT,
    image_type VARCHAR(50)
);

CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE book (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(255),
    author VARCHAR(255),
    publisher VARCHAR(100),
    publisher_year YEAR,
    price FLOAT,
    image_url TEXT,
    image_type VARCHAR(50),
    quantity INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE borrow_order (
    borrow_id INT PRIMARY KEY,
    borrow_date DATE,
    return_date DATE,
    status VARCHAR(20),
    student_number VARCHAR(15),
    FOREIGN KEY (student_number) REFERENCES student(student_number)
);


CREATE TABLE borrow_details (
    borrow_id INT,
    book_id INT,
    quantity INT,
    PRIMARY KEY (borrow_id, book_id),
    FOREIGN KEY (borrow_id) REFERENCES borrow_order(borrow_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

