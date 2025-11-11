-- Database: ShopMan
DROP DATABASE IF EXISTS ShopMan;
CREATE DATABASE ShopMan;
USE ShopMan;

-- =======================
-- 1. USER
-- =======================
CREATE TABLE User (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    dob DATE,
    address VARCHAR(255),
    tel VARCHAR(255),
    email VARCHAR(255),
    role VARCHAR(50) NOT NULL,
    note VARCHAR(255)
);

-- =======================
-- 2. CUSTOMER
-- =======================
CREATE TABLE Customer (
    Userid INT(10) PRIMARY KEY,
    FOREIGN KEY (Userid) REFERENCES User(id) ON DELETE CASCADE
);

-- =======================
-- 3. STAFF
-- =======================
CREATE TABLE Staff (
    Userid INT(10) PRIMARY KEY,
    position VARCHAR(255),
    FOREIGN KEY (Userid) REFERENCES User(id) ON DELETE CASCADE
);

-- =======================
-- 4. MANAGER (kế thừa Staff)
-- =======================
CREATE TABLE Manager (
    Staffid INT(10) PRIMARY KEY,
    FOREIGN KEY (Staffid) REFERENCES Staff(Userid) ON DELETE CASCADE
);

-- =======================
-- 5. SALES (kế thừa Staff)
-- =======================
CREATE TABLE Sales (
    Staffid INT(10) PRIMARY KEY,
    FOREIGN KEY (Staffid) REFERENCES Staff(Userid) ON DELETE CASCADE
);

-- =======================
-- 6. DELIVERY (kế thừa Staff)
-- =======================
CREATE TABLE Delivery (
    Staffid INT(10) PRIMARY KEY,
    FOREIGN KEY (Staffid) REFERENCES Staff(Userid) ON DELETE CASCADE
);

-- =======================
-- 7. SUPPLIER
-- =======================
CREATE TABLE Supplier (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    tel VARCHAR(255),
    email VARCHAR(255),
    note VARCHAR(255)
);

-- =======================
-- 8. PRODUCT
-- =======================
CREATE TABLE Product (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price FLOAT(10) NOT NULL,
    stock INT(10) DEFAULT 0,
    `describe` VARCHAR(255),
    INDEX idx_product_name (name)
);

-- =======================
-- 9. PRODUCT RECEIPT (phiếu nhập hàng)
-- =======================
CREATE TABLE ProductReceipt (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    importDate DATE NOT NULL,
    status VARCHAR(255),
    Supplierid INT(10) NOT NULL,
    Managerid INT(10) NOT NULL,
    FOREIGN KEY (Supplierid) REFERENCES Supplier(id),
    FOREIGN KEY (Managerid) REFERENCES Manager(Staffid)
);

-- =======================
-- 10. RECEIPT DETAILS
-- =======================
CREATE TABLE ReceiptDetails (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    price FLOAT(10) NOT NULL,
    quantity INT(10) NOT NULL,
    ProductReceiptid INT(10) NOT NULL,
    Productid INT(10) NOT NULL,
    FOREIGN KEY (ProductReceiptid) REFERENCES ProductReceipt(id) ON DELETE CASCADE,
    FOREIGN KEY (Productid) REFERENCES Product(id)
);

-- =======================
-- 11. INVOICE (phiếu xuất hàng)
-- =======================
CREATE TABLE Invoice (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    status VARCHAR(255),
    Customerid INT(10) NOT NULL,
    Salesid INT(10) NOT NULL,
    Deliveryid INT(10) NOT NULL,
    FOREIGN KEY (Customerid) REFERENCES Customer(Userid),
    FOREIGN KEY (Salesid) REFERENCES Sales(Staffid),
    FOREIGN KEY (Deliveryid) REFERENCES Delivery(Staffid),
    INDEX idx_invoice_date (date),
    INDEX idx_invoice_status (status)
);

-- =======================
-- 12. INVOICE DETAILS
-- =======================
CREATE TABLE InvoiceDetails (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    price FLOAT(10) NOT NULL,
    quantity INT(10) NOT NULL,
    Invoiceid INT(10) NOT NULL,
    Productid INT(10) NOT NULL,
    FOREIGN KEY (Invoiceid) REFERENCES Invoice(id) ON DELETE CASCADE,
    FOREIGN KEY (Productid) REFERENCES Product(id)
);