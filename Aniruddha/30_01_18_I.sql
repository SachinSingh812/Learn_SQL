/* 
   The "GROUP BY" clause will arrange/aggregate
   similar/identical data in groups.
*/

SELECT
   COUNT(CustomerID) AS Quantity,
   Country
FROM Customers
GROUP BY Country;

/* 
   The "GROUP BY" clause precedes "ORDER BY" clause and will arrange data in ascending order by default.
   To arrange in descending order "ASC" operator along with "ORDER BY" clause can be used.
   And since "WHERE" clause can't be used with aggregate functions, "HAVING" clause is used.
   Like this below.
*/

SELECT
   COUNT(CustomerID) AS Quantity,
   Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID)>5 ORDER BY COUNT(CustomerID);
