SELECT
YEAR(column1) AS Year,
CAST(column2 AS float) AS Consumer_Loans_In_Billions
INTO prepared_loans_leases_bank_credit
FROM Loans_Leases_Bank_Credit