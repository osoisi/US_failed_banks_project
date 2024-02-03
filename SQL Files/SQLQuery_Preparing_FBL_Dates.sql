SELECT 
Cert,
Bank_Name,
YEAR(Closing_Date) AS YEAR,
MONTH(Closing_Date) AS MONTH,
CASE WHEN MONTH(Closing_Date) = 12 THEN 'December'
    WHEN MONTH(Closing_Date) = 11 THEN 'November'
    WHEN MONTH(Closing_Date) = 10 THEN 'October'
    WHEN MONTH(Closing_Date) = 9 THEN 'September'
    WHEN MONTH(Closing_Date) = 8 THEN 'Auguest'
    WHEN MONTH(Closing_Date) = 7 THEN 'July'
    WHEN MONTH(Closing_Date) = 6 THEN 'June'
    WHEN MONTH(Closing_Date) = 5 THEN 'May'
    WHEN MONTH(Closing_Date) = 4 THEN 'April'
    WHEN MONTH(Closing_Date) = 3 THEN 'March'
    WHEN MONTH(Closing_Date) = 2 THEN 'February'
    WHEN MONTH(Closing_Date) = 1 THEN 'January'
    END AS Month_Name,
DATENAME(WEEKDAY, Closing_Date) AS DAY,
CAST(Closing_Date AS DATE) AS Date
FROM failed_bank_list