CREATE VIEW City_bank_shitdowns_acquisitions AS 
SELECT
fbl.state,
COUNT(fbl.state) AS Count_of_Shutdowns,
COUNT(fbl.Acquiring_Bank_ID) AS Acquisitions_per_state,
COUNT(fbl.state)-COUNT(fbl.Acquiring_Bank_ID) AS Not_acquired_per_state,
STRING_AGG(fbl.city, ',') AS Cities_of_shutdowns_per_state
FROM prepared_failed_bank_list as fbl
LEFT JOIN prepared_list_acquiring_institutions as lai 
ON fbl.Acquiring_Bank_ID=lai.Acquiring_Bank_ID 
--WHERE fbl.Acquiring_Bank_ID IS NULL
GROUP BY fbl.state