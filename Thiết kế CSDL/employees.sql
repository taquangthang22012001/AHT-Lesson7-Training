CREATE TABLE employees (
    employeeNumber INT PRIMARY KEY,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    jobTitle VARCHAR(50) NOT NULL,
    reportsTo INT,
    officeCode VARCHAR(10) NOT NULL,
    FOREIGN KEY (reportsTo) REFERENCES employees(employeeNumber),
    FOREIGN KEY (officeCode) REFERENCES offices(officeCode)
);
