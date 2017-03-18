#   scripst
# TO Do before
# DROP DATABASE employeeDB;

# step1
CREATE DATABASE employeeDB;
# step2
USE employeeDB;
# step3
CREATE TABLE employees (
  id        INT         NOT NULL,
  firstName VARCHAR(20) NOT NULL,
  lastName  VARCHAR(20) NOT NULL,
  age       INT         NOT NULL,
  addressId INT         NOT NULL,
  salary    DECIMAL(18, 2),
  PRIMARY KEY (ID)
);
# step4
LOAD DATA INFILE '/application/mamp/tmp/21.csv' INTO TABLE employeeDB.employees
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
