SELECT 
Bank_Name,
City,
State,
Cert,
Acquiring_Institution,
Fund,
CAST(Closing_date AS Date) AS Shutdown_Date
FROM failed_bank_list