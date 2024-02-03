SELECT 
Acquiring_Institution,
COUNT(*) AS Number_of_Acquisitions,
STRING_AGG(Bank_Name, ',') AS List_of_Banks_Acquired
FROM failed_bank_list
WHERE Acquiring_Institution != 'No Acquirer'
GROUP BY Acquiring_Institution
ORDER BY Number_of_Acquisitions DESC