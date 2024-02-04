SELECT
Year,
ROUND(AVG(Deposits_Billions), 2) AS AVG_deposits_for_Year
INTO prepared_AVG_deposits_for_Year
FROM Prepared_Monthly_Deposits_Commercial_Banks
GROUP BY Year