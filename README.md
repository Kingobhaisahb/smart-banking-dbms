# 💳 Smart Banking DBMS (SQL Server)

## 📌 Description

A **Smart Banking Database Management System** built using **Microsoft SQL Server**, designed to simulate real-world banking operations such as account management, transactions, loans, and employee handling.

This project demonstrates core **DBMS concepts** including relational schema design, SQL queries, stored procedures, triggers, transactions (ACID properties), views, and indexing.

---

## 🚀 Features

* 🧑‍💼 Customer & Account Management
* 💰 Deposit, Withdraw, and Fund Transfer Operations
* 📊 Advanced SQL Queries (Joins, Aggregation, Filtering)
* ⚙️ Stored Procedures for business logic
* 🔒 Transactions ensuring data consistency (ACID)
* 🔁 Triggers for automatic validation
* 👁️ Views for simplified data access
* ⚡ Indexing for performance optimization

---

## 🗂️ Project Structure

```
smart-banking-dbms/
│
├── schema.sql        # Table creation & relationships
├── data.sql          # Sample data insertion
├── queries.sql       # SQL queries (basic → advanced)
├── procedures.sql    # Stored procedures (Deposit, Withdraw, Transfer)
├── transactions.sql  # Transaction handling (BEGIN, COMMIT, ROLLBACK)
├── triggers.sql      # Triggers for validation
├── views.sql         # Predefined views
└── README.md         # Documentation
```

---

## 🧠 Database Design

### Tables:

* **Customer**
* **Accounts**
* **Branch**
* **Transactions**
* **Loan**
* **Employee**

### Relationships:

* Customer → Accounts (1:N)
* Accounts → Transactions (1:N)
* Accounts → Branch (N:1)
* Customer → Loan (1:N)
* Branch → Employee (1:N)

---

## 🔥 Key Concepts Implemented

### ✅ Joins

```sql
SELECT c.name, a.balance
FROM Customer c
JOIN Accounts a ON c.customer_id = a.customer_id;
```

---

### ✅ Aggregation

```sql
SELECT branch_id, SUM(balance)
FROM Accounts
GROUP BY branch_id;
```

---

### ✅ Stored Procedures

Encapsulated reusable logic:

```sql
EXEC DepositMoney 1, 5000;
```

---

### ✅ Transactions (ACID)

Ensures safe execution of multi-step operations:

```sql
BEGIN TRANSACTION;
-- operations
COMMIT;
-- or ROLLBACK;
```

---

### ✅ Triggers

Automatic database-level validation:

* Prevent negative balance
* Detect high-value transactions

---

### ✅ Views

Reusable query abstraction:

```sql
SELECT * FROM CustomerBalanceView;
```

---

### ✅ Indexing

Improves query performance:

```sql
CREATE INDEX idx_customer_id ON Accounts(customer_id);
```

---

## ▶️ How to Run

1. Open **SQL Server Management Studio (SSMS)**
2. Execute files in the following order:

```
schema.sql
data.sql
procedures.sql
triggers.sql
views.sql
transactions.sql
queries.sql
```

3. Run queries or stored procedures to test the system.

---

## 📊 Example Use Cases

* Identify richest customers
* Detect failed transactions
* Analyze branch-wise balances
* Find inactive accounts

---

## 🎯 Learning Outcomes

* Strong understanding of **DBMS fundamentals**
* Hands-on experience with **SQL Server**
* Implementation of **real-world database logic**
* Understanding of **data integrity and consistency**

---

## 👨‍💻 Author

**Shivansh Gupta**

---

## ⭐ Final Note

This project represents a **complete DBMS lifecycle**, from schema design to advanced SQL features, making it suitable for:

* Academic submission
* Resume projects
* Technical interviews

---
