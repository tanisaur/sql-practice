--JOINS--

--Combine all the data from the accounts table, 
--and all the data from the orders table

SELECT orders.*, accounts.*
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;
