create database SmartBankDB;

use SmartBankDB;

-- Making Customer table

create table Customer(
customer_id int identity(1,1) primary key,
name varchar(100) not null,
phoneNo varchar(15) unique not null,
email varchar(100) unique,
address varchar(100),
created_at DATETIME default getdate()
);

select * from Customer;

-- Making Branch table

create table branch(
branch_id int identity(1,1) primary key,
branch_name varchar(100) not null,
city varchar(50),
pin_code varchar(20) not null,
IFSC_code varchar(15) UNIQUE
)

-- Making Accounts Table

create table Accounts(
account_id int identity(1,1) primary key,
customer_id int not null,
branch_id INT NOT NULL,
account_type VARCHAR(20),
balance DECIMAL(12,2) CHECK (balance >= 0),
created_at DATETIME DEFAULT GETDATE(),

foreign key (customer_id) references Customer(customer_id),
foreign key (branch_id) references branch(branch_id)
)

select * from Accounts;

-- making transaction table 

create table Transactions(
transaction_id int IDENTITY(1,1) primary key,
account_id int not null,
transaction_type varchar(20) not null,
amount decimal(12,2) CHECK (amount > 0 ),
transaction_date DATETIME default getdate(),
account_status varchar(50),

foreign key(account_id) references Accounts(account_id)
)

-- making loan table

CREATE TABLE Loan (
loan_id INT IDENTITY(1,1) PRIMARY KEY,
customer_id INT NOT NULL,
loan_amount DECIMAL(12,2) CHECK (loan_amount > 0),
interest_rate DECIMAL(5,2),
loan_status VARCHAR(20) DEFAULT 'Active',
start_date DATE DEFAULT GETDATE(),

FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- making Employee table

create table Employee(
employee_id INT IDENTITY(1,1) PRIMARY KEY,
branch_id INT NOT NULL,
name VARCHAR(100),
position VARCHAR(50),
salary DECIMAL(10,2),
hire_date DATE DEFAULT GETDATE(),

FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
)

