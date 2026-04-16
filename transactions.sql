USE SmartBankDB;



-- TRANSACTION 1: Basic Transfer

BEGIN TRANSACTION;

UPDATE Accounts
SET balance = balance - 5000
WHERE account_id = 1;

UPDATE Accounts
SET balance = balance + 5000
WHERE account_id = 2;

COMMIT;
GO



-- TRANSACTION 2: Safe Transfer 

BEGIN TRANSACTION;

DECLARE @balance DECIMAL(12,2);

SELECT @balance = balance
FROM Accounts
WHERE account_id = 1;

IF @balance >= 5000
BEGIN
    UPDATE Accounts
    SET balance = balance - 5000
    WHERE account_id = 1;

    UPDATE Accounts
    SET balance = balance + 5000
    WHERE account_id = 2;

    COMMIT;
END
ELSE
BEGIN
    PRINT 'Insufficient Balance';
    ROLLBACK;
END;
GO



-- TRANSACTION 3: Failure Handling

BEGIN TRANSACTION;

UPDATE Accounts
SET balance = balance - 1000
WHERE account_id = 1;


RAISERROR('Transaction Failed!', 16, 1);

ROLLBACK;
GO