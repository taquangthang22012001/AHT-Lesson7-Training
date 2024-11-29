CREATE TABLE products (
    productCode VARCHAR(15) PRIMARY KEY,
    productName VARCHAR(70) NOT NULL,
    productScale VARCHAR(10) NOT NULL,
    productVendor VARCHAR(50) NOT NULL,
    productDescription TEXT NOT NULL,
    quantityInStock INT NOT NULL,
    buyPrice DECIMAL(10, 2) NOT NULL,
    MSRP DECIMAL(10, 2) NOT NULL,
    productLine VARCHAR(50) NOT NULL,
    FOREIGN KEY (productLine) REFERENCES productlines(productLine)
);
