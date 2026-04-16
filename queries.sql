use SmartBankDB
-- ================================
-- SMART BANK DBMS - QUERY 
-- ================================

-- Q1: Get all customers

select * from Customer;
select * from Accounts;
select * from branch;
select * from Transactions

-- Q2: Get customers from Delhi

select * from Customer
where address = 'Delhi'

-- Q3: Get all accounts with balance > 5000

select * 
from Accounts a
INNER JOIN Customer c
ON a.customer_id = c.customer_id
Where balance > 5000;


-- Q4: Get customer name with their account balance

select c.name , a.balance 
from Accounts a
INNER JOIN Customer c
ON a.customer_id = c.customer_id


-- Q5: Show accounts with their branch name

select a.account_id , a.account_type , a.balance , a.created_at , b.branch_name
from Accounts a
INNER JOIN branch b
ON a.branch_id = b.branch_id;

-- Q6: Show customer + account + branch (3-table join)

select * 
from Customer c
JOIN Accounts a
ON c.customer_id = a.customer_id
JOIN branch b
ON a.branch_id = b.branch_id;

-- Q7: Find total balance of all accounts

select SUM(balance) as Total_Balance
from Accounts;

-- Q8: Find average balance

select AVG(balance) as Average_Balance
from Accounts;

-- Q9: Find total balance per branch

select branch_id , SUM(balance) as total_balance
from Accounts
GROUP BY branch_id

select b.branch_id , b.branch_name , SUM(a.balance) as Total_balance
from Accounts a
JOIN branch b
ON a.branch_id = b.branch_id
GROUP BY b.branch_name , b.branch_id


-- Q10: Count number of accounts per customer

select customer_id , count(*) as total_accounts
from Accounts
group by customer_id

-- Q11: Find accounts with NO transactions

select a.account_id
from Accounts a
INNER JOIN Transactions t
ON a.account_id = t.account_id
where t.account_id is NULL;

-- Q12: Find failed transactions

select transaction_id
from Transactions
where account_status = 'failed'

-- Q13: Find top 2 richest accounts

select top 2*
from Accounts
order by balance desc;


-- Q14: Find customers with balance > 10000

select * 
from Accounts
where balance > 1000

-- Q15: Total transaction amount per account

SELECT account_id, SUM(amount) AS total_transaction
FROM Transactions
GROUP BY account_id;

-- ================================
-- CHALLENGE QUESTIONS
-- ================================

-- Q16: Find the richest customer

SELECT TOP 1 c.name, a.balance
FROM Customer c
JOIN Accounts a ON c.customer_id = a.customer_id
ORDER BY a.balance DESC;

-- Q17: Find customers who have loans

SELECT DISTINCT c.name
FROM Customer c
JOIN Loan l ON c.customer_id = l.customer_id;

-- Q18: Find accounts with failed transactions

SELECT DISTINCT a.account_id
FROM Accounts a
JOIN Transactions t 
ON a.account_id = t.account_id
WHERE t.account_status = 'failed';

-- Q19: Find total salary per branch

SELECT branch_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY branch_id;

-- Q20: Find customers with NO loans

SELECT c.name
FROM Customer c
LEFT JOIN Loan l 
ON c.customer_id = l.customer_id
WHERE l.customer_id IS NULL;