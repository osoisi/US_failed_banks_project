SELECT 
Bank_Name AS Failed_Banks_Not_Acquired, Cert
FROM failed_bank_list
WHERE Acquiring_Institution = 'No Acquirer'