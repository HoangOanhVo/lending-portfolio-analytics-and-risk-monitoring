USE LendingRisk;
GO

SELECT
*,

CASE

WHEN loan_status IN (
'Charged Off',
'Default'
)

THEN 1

WHEN loan_status='Fully Paid'

THEN 0

ELSE NULL

END

AS target

INTO loan_risk

FROM loan_raw;


SELECT
target,
COUNT(*)

FROM loan_risk

GROUP BY target


-- Portfolio Size --
SELECT
COUNT(*) total_loan

FROM loan_risk

WHERE target IS NOT NULL;


-- Default rate --
SELECT

ROUND(
AVG(
CAST(
target AS FLOAT
)
)*100,
2
)

AS default_rate

FROM loan_risk

WHERE target IS NOT NULL;


-- Exposure --
SELECT

ROUND(
SUM(
loan_amnt
)/1000000,
2
)

AS exposure_million

FROM loan_risk

WHERE target IS NOT NULL;


-- Average loan --
SELECT

ROUND(
AVG(
loan_amnt
),
2
)

avg_loan

FROM loan_risk

WHERE target IS NOT NULL;


SELECT
MIN(loan_amnt),
MAX(loan_amnt),
AVG(loan_amnt)

FROM loan_risk

WHERE target IS NOT NULL;


SELECT TOP 20
loan_amnt

FROM loan_risk

SELECT
COLUMN_NAME,
DATA_TYPE

FROM INFORMATION_SCHEMA.COLUMNS

WHERE TABLE_NAME='loan_risk'