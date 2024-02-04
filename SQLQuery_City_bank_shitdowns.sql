CREATE VIEW City_bank_shitdowns AS 
SELECT
fbl.state,
COUNT(fbl.state) AS Count_of_Shutdowns,
STRING_AGG(fbl.city, ',') AS Cities_of_shutdowns_per_state,
STRING_AGG(lai.Acquiring_Institution, ',') AS Acquiring_Banks_list_per_city
FROM prepared_failed_bank_list as fbl
INNER JOIN prepared_list_acquiring_institutions as lai 
ON fbl.Acquiring_Bank_ID=lai.Acquiring_Bank_ID 
GROUP BY fbl.state