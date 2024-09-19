--JOINS--

--Combine all the data from the accounts table, 
--and all the data from the orders table

SELECT orders.*, accounts.*
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;

--Combine standard_qty, gloss_qty, and poster_qty from the orders table, 
--and the website and the primary_poc from the accounts table.
SELECT orders.standard_qty, orders.gloss_qty, orders.poster_qty, accounts.website, accounts.primary_poc
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;

--Provide a table for all web_events associated with account name of Walmart. There should be three columns. 
--Be sure to include the primary_poc, time of the event, and the channel for each event. 
--Additionally, you might choose to add a fourth column to assure only Walmart events were chosen. 
SELECT accounts.name, accounts.primary_poc, web_events.occurred_at, web_events.channel
FROM accounts
JOIN web_events
ON accounts.id = web_events.account_id
WHERE accounts.name = 'Walmart'

--Provide a table that provides the region for each sales_rep along with their associated accounts. 
--Your final table should include three columns: the region name, the sales rep name, and the account name. 
--Sort the accounts alphabetically (A-Z) according to account name. 


