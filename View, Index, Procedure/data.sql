-- Tạo CSDL demo
CREATE DATABASE DemoDB;

-- Tạo bảng và chèn dữ liệu mẫu-----------------
CREATE TABLE Products (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    productCode VARCHAR(50) NOT NULL,
    productName VARCHAR(255) NOT NULL,
    productPrice DECIMAL(10, 2) NOT NULL,
    productAmount INT NOT NULL,
    productDescription TEXT,
    productStatus BOOLEAN NOT NULL
);
EXPLAIN SELECT * FROM Products WHERE productCode = 'P001';

CREATE UNIQUE INDEX idx_productCode ON Products(productCode);
CREATE INDEX idx_productName_price ON Products(productName, productPrice);
EXPLAIN SELECT * FROM Products WHERE productName = 'Product 1' AND productPrice = 100.00;


INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES
('P001', 'Product 1', 100.00, 10, 'Description of Product 1', TRUE),
('P002', 'Product 2', 150.50, 5, 'Description of Product 2', FALSE),
('P003', 'Product 3', 200.00, 20, 'Description of Product 3', TRUE),
('P004', 'Product 4', 300.75, 15, 'Description of Product 4', TRUE);

-- View--------------------------
DELIMITER //
CREATE VIEW ProductInfo AS
SELECT productCode, productName, productPrice, productStatus
FROM Products;

DROP VIEW IF EXISTS ProductInfo;

-- Store Procedure----------------
CREATE PROCEDURE GetAllProducts()
BEGIN
    SELECT * FROM Products;
END //
DELIMITER ;

DELIMITER //

CREATE PROCEDURE AddProduct(
    IN p_code VARCHAR(50),
    IN p_name VARCHAR(255),
    IN p_price DECIMAL(10, 2),
    IN p_amount INT,
    IN p_desc TEXT,
    IN p_status BOOLEAN
)
BEGIN
    INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
    VALUES (p_code, p_name, p_price, p_amount, p_desc, p_status);
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE UpdateProduct(
    IN p_id INT,
    IN p_name VARCHAR(255),
    IN p_price DECIMAL(10, 2),
    IN p_amount INT,
    IN p_desc TEXT,
    IN p_status BOOLEAN
)
BEGIN
    UPDATE Products
    SET productName = p_name,
        productPrice = p_price,
        productAmount = p_amount,
        productDescription = p_desc,
        productStatus = p_status
    WHERE Id = p_id;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE DeleteProduct(IN p_id INT)
BEGIN
    DELETE FROM Products WHERE Id = p_id;
END //

DELIMITER ;

CALL GetAllProducts();
CALL AddProduct('P005', 'Product 5', 120.00, 8, 'Description of Product 5', TRUE);
CALL UpdateProduct(1, 'Updated Product 1', 110.00, 12, 'Updated Description', FALSE);
CALL DeleteProduct(2);

