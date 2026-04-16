💳 Smart Banking DBMS (SQL Server)
📌 Overview

This project is a Smart Banking Database Management System built using SQL Server.
It simulates real-world banking operations such as account management, transactions, loans, and employee handling.

The project focuses on core DBMS concepts like:

Relational schema design
SQL queries and joins
Stored procedures
Triggers
Transactions (ACID properties)
Views and indexing
🚀 Features
🧑‍💼 Customer and Account Management
💰 Deposit, Withdraw, and Transfer Operations
📊 Advanced SQL Queries (joins, aggregation, filtering)
⚡ Stored Procedures for banking logic
🔒 Transactions ensuring data consistency
🔁 Triggers for automatic validation
👁️ Views for simplified data access
📈 Indexing for performance optimization
🗂️ Project Structure
smart-banking-dbms/
│
├── schema.sql        -- Database and table creation
├── data.sql          -- Sample data insertion
├── queries.sql       -- SQL queries (basic to advanced)
├── procedures.sql    -- Stored procedures (Deposit, Withdraw, Transfer)
├── transactions.sql  -- Transaction handling (BEGIN, COMMIT, ROLLBACK)
├── triggers.sql      -- Triggers for validation and automation
├── views.sql         -- Predefined views
└── README.md         -- Project documentation
🧠 Database Design
Main Tables:
Customer
Accounts
Branch
Transactions
Loan
Employee
Relationships:
Customer → Accounts (1)
Accounts → Transactions (1)
Accounts → Branch (N:1)
Customer → Loan (1)
Branch → Employee (1)
🔥 Key Concepts Implemented
✅ Joins

Used to combine data across multiple tables:

SELECT c.name, a.balance
FROM Customer c
JOIN Accounts a ON c.customer_id = a.customer_id;
✅ Aggregation
SELECT branch_id, SUM(balance)
FROM Accounts
GROUP BY branch_id;
✅ Stored Procedures

Encapsulated business logic:

EXEC DepositMoney 1, 5000;
✅ Transactions (ACID)

Ensures safe multi-step operations:

BEGIN TRANSACTION;
-- operations
COMMIT;
-- or ROLLBACK
✅ Triggers

Automatic validation:

Prevent negative account balance
✅ Views

Reusable query abstraction:

SELECT * FROM CustomerBalanceView;
✅ Indexing

Improves performance of queries:

CREATE INDEX idx_customer_id ON Accounts(customer_id);
▶️ How to Run
Open SQL Server Management Studio (SSMS)
Execute files in this order:
schema.sql
data.sql
procedures.sql
triggers.sql
views.sql
transactions.sql
queries.sql
Run queries or procedures to test functionality.
📊 Example Use Cases
Find richest customers
Detect failed transactions
Analyze branch-wise balances
Identify inactive accounts
🎯 Learning Outcomes
Strong understanding of DBMS concepts
Hands-on experience with SQL Server
Ability to design and manage relational databases
Implementation of real-world system logic


Shivansh Gupta


Resume projects
