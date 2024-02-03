SELECT
MONTH(DATE) AS Month_Number,
CASE WHEN MONTH(DATE) = 12 THEN 'December'
    WHEN MONTH(DATE) = 11 THEN 'November'
    WHEN MONTH(DATE) = 10 THEN 'October'
    WHEN MONTH(DATE) = 9 THEN 'September'
    WHEN MONTH(DATE) = 8 THEN 'Auguest'
    WHEN MONTH(DATE) = 7 THEN 'July'
    WHEN MONTH(DATE) = 6 THEN 'June'
    WHEN MONTH(DATE) = 5 THEN 'May'
    WHEN MONTH(DATE) = 4 THEN 'April'
    WHEN MONTH(DATE) = 3 THEN 'March'
    WHEN MONTH(DATE) = 2 THEN 'February'
    WHEN MONTH(DATE) = 1 THEN 'January'
    END AS Month_Name,
YEAR(DATE) AS Year,
ROUND(Deposits_Billions, 2) AS Deposits_Billions
INTO Prepared_Monthly_Deposits_Commercial_Banks
FROM Deposits_Commercial_Banks
