drop database if exists sales;
create database sales;
use sales;
CREATE TABLE Customers (
  customerNumber INTEGER NOT NULL,
  customerName VARCHAR(50) NOT NULL,
  contactLastName VARCHAR(50) NOT NULL,
  contactFirstName VARCHAR(50) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  addressLine1 VARCHAR(50) NOT NULL,
  addressLine2 VARCHAR(50) NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(50) NULL,
  postalCode VARCHAR(15) NULL,
  country VARCHAR(50) NOT NULL,
  salesRepEmployeeNumber INTEGER NULL,
  creditLimit DOUBLE NULL,
  PRIMARY KEY (customerNumber)
);
ALTER TABLE Customers CONVERT TO CHARACTER SET utf8;

CREATE TABLE Employees (
  employeeNumber INTEGER NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  firstName VARCHAR(50) NOT NULL,
  extension VARCHAR(10) NOT NULL,
  email VARCHAR(100) NOT NULL,
  officeCode VARCHAR(10) NOT NULL,
  reportsTo INTEGER NULL,
  jobTitle VARCHAR(50) NOT NULL,
  PRIMARY KEY (employeeNumber)
);

CREATE TABLE Offices (
  officeCode VARCHAR(10) NOT NULL,
  city VARCHAR(50) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  addressLine1 VARCHAR(50) NOT NULL,
  addressLine2 VARCHAR(50) NULL,
  state VARCHAR(50) NULL,
  country VARCHAR(50) NOT NULL,
  postalCode VARCHAR(15) NOT NULL,
  territory VARCHAR(10) NOT NULL,
  PRIMARY KEY (officeCode)
);

CREATE TABLE OrderDetails (
  orderNumber INTEGER NOT NULL,
  productCode VARCHAR(15) NOT NULL,
  quantityOrdered INTEGER NOT NULL,
  priceEach DOUBLE NOT NULL,
  orderLineNumber SMALLINT NOT NULL,
  PRIMARY KEY (orderNumber, productCode)
);

CREATE TABLE Orders (
  orderNumber INTEGER NOT NULL,
  orderDate DATETIME NOT NULL,
  requiredDate DATETIME NOT NULL,
  shippedDate DATETIME NULL,
  status VARCHAR(15) NOT NULL,
  comments TEXT NULL,
  customerNumber INTEGER NOT NULL,
  PRIMARY KEY (orderNumber)
);

CREATE TABLE Payments (
  customerNumber INTEGER NOT NULL,  
  checkNumber VARCHAR(50) NOT NULL,
  paymentDate DATETIME NOT NULL,
  amount DOUBLE NOT NULL,
  PRIMARY KEY (customerNumber, checkNumber)
);

CREATE TABLE Products (
  productCode VARCHAR(15) NOT NULL,
  productName VARCHAR(70) NOT NULL,
  productLine VARCHAR(50) NOT NULL,
  productScale VARCHAR(10) NOT NULL,
  productVendor VARCHAR(50) NOT NULL,
  productDescription TEXT NOT NULL,
  quantityInStock SMALLINT NOT NULL,
  buyPrice DOUBLE NOT NULL,
  MSRP DOUBLE NOT NULL,
  PRIMARY KEY (productCode)
);

CREATE TABLE ProductLines(
  productLine VARCHAR(50) NOT NULL,
  textDescription VARCHAR(4000) NULL,
  htmlDescription MEDIUMTEXT NULL,
  image MEDIUMBLOB NULL,
  PRIMARY KEY (productLine)
);
/* If the data loading throws and error 
-- Database >> Manage connections>>.Select Local  >> Advanced >>Others Box >> add this line OPT_LOCAL_INFILE=1
-- And use the below command
-- SET GLOBAL local_infile=1;
*/

SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE 'D:\\Google Drive\\Training\\Datasets\\Sql\\Sales_DB\\customers.txt' INTO TABLE Customers
         CHARACTER SET  latin1  FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';


LOAD DATA LOCAL INFILE 'D:\\Google Drive\\Training\\Datasets\\Sql\\Sales_DB\\employees.txt' INTO TABLE Employees
          CHARACTER SET  latin1 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';

SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'D:\\Google Drive\\Training\\Datasets\\Sql\\Sales_DB\\offices.txt' INTO TABLE Offices
          CHARACTER SET  latin1 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';

SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'D:\\Google Drive\\Training\\Datasets\\Sql\\Sales_DB\\orderdetails.txt' INTO TABLE OrderDetails
          CHARACTER SET  latin1 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';

SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'D:\\Google Drive\\Training\\Datasets\\Sql\\Sales_DB\\orders.txt' INTO TABLE Orders
          CHARACTER SET  latin1 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';

SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'D:\\Google Drive\\Training\\Datasets\\Sql\\Sales_DB\\payments.txt' INTO TABLE Payments
          CHARACTER SET  latin1 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';

SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'D:\\Google Drive\\Training\\Datasets\\Sql\\Sales_DB\\products.txt' INTO TABLE Products
         CHARACTER SET  latin1  FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';

SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'D:\\Google Drive\\Training\\Datasets\\Sql\\Sales_DB\\ProductLines.txt' INTO TABLE ProductLines 
          CHARACTER SET  latin1 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' 
          (productLine , textDescription);
		  
SHOW WARNINGS LIMIT 10;