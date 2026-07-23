USE LendingRisk;
GO

SELECT COUNT(*)
FROM loan_raw;

SELECT
COUNT(*) total,

COUNT(dti) not_null

FROM loan_raw;


SELECT TOP 20
dti

FROM loan_raw

ORDER BY dti DESC;


SELECT TOP 20
dti

FROM loan_raw

ORDER BY dti ASC;


SELECT
COLUMN_NAME,
DATA_TYPE

FROM INFORMATION_SCHEMA.COLUMNS

WHERE TABLE_NAME='loan_raw'

AND COLUMN_NAME IN (

'loan_amnt',
'int_rate',
'annual_inc',
'dti',
'loan_status',
'grade'

);


SELECT TOP 5 *
FROM loan_raw;