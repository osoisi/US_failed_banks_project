CREATE VIEW view_economic_data_bank_shutdown AS
SELECT
fbl.Year, 
COUNT(fbl.Bank_Name) AS ShutDowns,
COUNT(fbl.Acquiring_Bank_ID) Acquisitions,
rel.Real_Estate_Loans_Percent_Change, 
llbc.Consumer_Loans_In_Billions AS Consumer_Loans_In_Billions_Bank_Credit,
clcc.Consumer_Card_Loans_Percent_Change,
clb.Consumer_Loans_In_Billions,
b.Percentage_Change AS Borrowings_Percentage_Change,
bc.Bank_credit_Percent_Change,
wi.Inflation_GDP_Percentage
FROM prepared_failed_banks as fbl
INNER JOIN prepared_real_estate_loans as rel 
ON fbl.YEAR=rel.YEAR
INNER JOIN prepared_loans_leases_bank_credit as llbc
ON fbl.YEAR=llbc.Year
INNER JOIN prepared_consumer_loans_credit_card as clcc
ON fbl.YEAR=clcc.YEAR
INNER JOIN prepared_consumer_loans_billions as clb 
ON fbl.YEAR=clb.YEAR
INNER JOIN prepared_borrowings AS b 
ON fbl.YEAR=b.date
INNER JOIN prepared_bank_credit AS bc 
ON fbl.YEAR=bc.YEAR
INNER JOIN prepared_worldbank_inflationdata_US AS wi 
ON fbl.YEAR=wi.year

GROUP BY 
fbl.Year, 
rel.Real_Estate_Loans_Percent_Change, 
llbc.Consumer_Loans_In_Billions, 
clcc.Consumer_Card_Loans_Percent_Change, clb.Consumer_Loans_In_Billions, 
b.Percentage_Change, bc.Bank_credit_Percent_Change,
wi.Inflation_GDP_Percentage