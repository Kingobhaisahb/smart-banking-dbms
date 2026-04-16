use SmartBankDB;

create procedure DepositMoney
	@account_id int,
	@amount decimal(12,2)
AS
BEGIN
	update Accounts
	SET balance = balance + @amount
	where account_id = @account_id
	INSERT INTO Transactions (account_id, transaction_type, amount, account_status)
    VALUES (@account_id, 'deposit', @amount, 'success');
END;

EXEC DepositMoney 1, 5000;


-- making WithdrawMoney procedure

CREATE PROCEDURE WithdrawMoney
    @account_id INT,
    @amount DECIMAL(12,2)
AS
BEGIN
    DECLARE @balance DECIMAL(12,2);

    SELECT @balance = balance
    FROM Accounts
    WHERE account_id = @account_id;

    IF @balance < @amount
    BEGIN

        INSERT INTO Transactions (account_id, transaction_type, amount, account_status)
        VALUES (@account_id, 'withdraw', @amount, 'failed');
    END
    ELSE
    BEGIN

        UPDATE Accounts
        SET balance = balance - @amount
        WHERE account_id = @account_id;


        INSERT INTO Transactions (account_id, transaction_type, amount, account_status)
        VALUES (@account_id, 'withdraw', @amount, 'success');
    END
END;

EXEC WithdrawMoney 1, 500;