SELECT
YEAR(DATE) AS YEAR,
CAST(Consumer_Loans_Percent_Change AS float) AS Consumer_Card_Loans_Percent_Change
INTO prepared_consumer_loans_credit_card
FROM Consumer_Loans_Credit_card