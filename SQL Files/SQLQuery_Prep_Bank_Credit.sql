SELECT
YEAR(DATE) AS Year,
CAST(Bank_credit_Percent_Change AS float) AS Bank_credit_Percent_Change
INTO prepared_bank_credit
FROM Bank_Credit