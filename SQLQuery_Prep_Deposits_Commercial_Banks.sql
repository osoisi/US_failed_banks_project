SELECT
YEAR(DATE) AS Year,
ROUND(AVG(Deposits_Billions),2) AS Avg_Deposit_in_Billions
INTO Prepared_Avg_Deposit_in_Billions
FROM Deposits_Commercial_Banks
GROUP BY YEAR(DATE)