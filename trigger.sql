use SmartBankDB;

-- negative balance trigger

CREATE TRIGGER PreventNegativeBalance
ON Accounts
AFTER UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT * FROM inserted WHERE balance < 0
    )
    BEGIN
        PRINT 'Balance cannot be negative';
        ROLLBACK TRANSACTION;
    END
END;

-- high transaction trigger

CREATE TRIGGER HighTransactionAlert
ON Transactions
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT * FROM inserted WHERE amount > 50000
    )
    BEGIN
        PRINT 'High value transaction detected';
    END
END;