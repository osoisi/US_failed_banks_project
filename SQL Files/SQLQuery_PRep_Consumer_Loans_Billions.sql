SELECT
YEAR(TimeStamp) AS YEAR,
CAST(ConsumerLoansInBillions AS float) AS Consumer_Loans_In_Billions
INTO prepared_consumer_loans_billions
FROM Consumer_Loans_Billions