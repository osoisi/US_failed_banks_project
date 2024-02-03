SELECT
p.Bank_Name,
p.City,
p.State,
p.Cert,
lai.Acquiring_Bank_ID,
p.Fund,
p.Shutdown_Date
INTO prepared_indexedlist_acquiring_institutions
  FROM prepared_failed_bank_list as p
  LEFT JOIN prepared_list_acquiring_institutions lai
  ON p.Acquiring_Institution = lai.Acquiring_Institution