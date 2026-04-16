use SmartBankDB;

-- creating smart view balance table

CREATE VIEW CustomerBalanceView AS
SELECT c.name, a.balance
FROM Customer c
JOIN Accounts a ON c.customer_id = a.customer_id;


SELECT * FROM CustomerBalanceView;

-- creating Branch Total Balance view

CREATE VIEW BranchTotalBalance AS
SELECT b.branch_name, SUM(a.balance) AS total_balance
FROM Accounts a
JOIN branch b ON a.branch_id = b.branch_id
GROUP BY b.branch_name;

SELECT * FROM BranchTotalBalance;

