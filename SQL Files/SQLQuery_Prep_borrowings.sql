SELECT
YEAR(DATE) AS DATE,
CAST(Borrowings_Percent_Change AS float) AS Percentage_Change
INTO prepared_borrowings
FROM borrowings