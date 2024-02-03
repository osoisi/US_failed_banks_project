SELECT 
Bank_Name AS Failed_Banks_Not_Acquired, Cert
INTO prepared_failed_banks_not_acquired
FROM failed_bank_list
WHERE Acquiring_Institution = 'No Acquirer'