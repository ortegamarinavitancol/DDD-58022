CREATE DATABASE Customer;
CREATE TABLE tblcustomer (CustomerID INT NOT NULL, CustomerName text(40) not null, Municipality TEXT(24) NOT NULL, City TEXT(24) NOT NULL, Salary INT NOT NULL, PRIMARY KEY (CustomerID));
INSERT INTO tblcustomer (CustomerID, CustomerName, Municipality , City , Salary )
VALUES (1, 'Gina de Leon', 'Apalit','Pampanga',5000),
(2,'Amara Luna','Mexico','Pampanga',6000),
(3,'Lucila Maulon','Angat','Bulacan',1000),
(4,'Rafael Santos','Lumban','Laguna',4500),
(5,'Maricel Moran','Calumpit','Bulacan',12000),
(6,'Anotonio Moreno', 'Santa Maria','Bulacan',8500),
(7,'Hanna Moos','Alaminos','Laguna',6000),
(8,'Fred Gregorio','Lumban','Laguna',5000),
(9,'Maria Andres','Porac','Pampanga',1800),
(10,'Liza Ramos','Alaminos','Laguna',14000);

-- show table name tblcustomer and its data
SELECT*FROM tblcustomer;

-- Select City Column
SELECT City FROM tblcustomer;

-- Select All Records from Pampanga
SELECT * FROM tblcustomer WHERE City = 'Pampanga';

-- Select only Municipality of Porac and Pampanga
SELECT * FROM tblcustomer WHERE Municipality = 'Porac' AND City = 'Pampanga';

-- Show OR implementation
SELECT * FROM tblcustomer WHERE Municipality = 'Apalit' OR Municipality = 'Angat';

-- Show All Records that are not from Pampanga
SELECT * FROM tblcustomer WHERE NOT City='Pampanga';

-- The customer paid with lowest salary in Laguna
SELECT MIN(Salary)
FROM tblcustomer
WHERE City = 'Laguna';

-- Customer with highest salary
SELECT MAX(Salary)
FROM tblcustomer;

-- Sort out City Order
SELECT * FROM tblcustomer
ORDER by City;

-- Sort out City Order_Descending
SELECT * FROM tblcustomer
ORDER by City DESC;

-- Sort out City and Name Order
SELECT * FROM tblcustomer
ORDER by City, CustomerName;