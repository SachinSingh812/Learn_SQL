/* 
   "SELECT INTO" statement copies data from one table into a new table.
*/
 
SELECT
   *
INTO Customers_Backup
FROM Customers;

/* 
   The above query will create a new table Customers_Backup,
   and copy all the columns from Customers to this table.
   If we want to copy this in another database
   we use the below query.
*/

SELECT
   *
INTO Customers_BackUp IN 'BackUp.mdb'
FROM Customers;

/* 
   Where ".mdb" is a extension for Microsoft Database.
   Other extensions like ".dbf" for oracle database can
   also be used in accordance to convenience.
*/

/* 
   "SELECT INTO" statement can also be used to make a new
   empty table where the "WHERE" clause will return no data.
*/

SELECT
   *
INTO Customers_BackUp
FROM OldTable WHERE 1 = 0;

/* 
   "INSERT INTO SELECT" statement copies data from one table and inserts it into another table.
   One difference of this cluase from "SELECT INTO" is that, "SELECT INTO" will make a table 
   if it is was not present in advance.
*/

INSERT INTO Customers (CustomerName, City, Country)
SELECT
   SupplierName,
   City,
   Country
FROM Suppliers;

/* 
   The above query will insert data from table "Suppliers"
   to "Customers" at the bottom.
*/
