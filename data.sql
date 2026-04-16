use SmartBankDB;
-- inserting data into Customer table

insert into Customer (name , phoneNo , email , address) values 
('Shivansh Gupta' , '9717334577' , 'shivansh.gamelab@gmail.com' , 'Delhi NCR'),
('Shriansh Vikram' , '9834289384' , 'omshriansh@gmail.com' , 'Noida'),
('Rahul Sharma', '9123456780', 'rahul@gmail.com', 'Noida'),
('Amit Verma', '9988776655', 'amit@gmail.com', 'Gurgaon'),
('Neha Singh', '9090909090', 'neha@gmail.com', 'Delhi');

-- inserting into Branch table

insert into branch(branch_name , city , pin_code , IFSC_code) values 
('Main Branch', 'Delhi', '110001', 'SBIN0001'),
('Second Branch', 'Noida', '101010', 'SBIN0002'),
('City Branch', 'Greater Noida', '201301', 'SBIN0003'),
('Tech Branch', 'Gurgaon', '122001', 'SBIN0004');

-- inserting into Accounts table

insert into Accounts (customer_id , branch_id , account_type , balance ) values 
(1, 1, 'Savings', 500000),  -- rich
(2, 2, 'Savings', 2000),    -- normal
(3, 3, 'Current', 100),     -- low balance
(4, 1, 'Savings', 0),       -- inactive
(5, 3, 'Current', 4000);    -- normal

-- inserting into Transactions table 

INSERT INTO Transactions (account_id, transaction_type, amount, account_status) VALUES
(1, 'deposit', 10000, 'success'),
(1, 'withdraw', 5000, 'success'),
(2, 'withdraw', 3000, 'failed'),  -- insufficient balance case
(3, 'deposit', 200, 'success'),
(5, 'deposit', 1000, 'success');  -- new account with activity

-- insert into loan table

INSERT INTO Loan (customer_id, loan_amount, interest_rate) VALUES
(1, 500000, 7.5),
(2, 100000, 8.2);

-- insert into employee table

INSERT INTO Employee (branch_id, name, position, salary) VALUES
(1, 'Raj Mehta', 'Manager', 80000),
(2, 'Anjali Kapoor', 'Clerk', 40000),
(3, 'Vikas Yadav', 'Cashier', 35000),
(4, 'Vicky Singh', 'Cashier', 37000);


