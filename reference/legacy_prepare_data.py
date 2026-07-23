import pandas as pd

INPUT=r"D:\MyProjects\lending-portfolio-analytics-and-risk-monitoring\data\accepted_2007_to_2018Q4.csv"

OUTPUT=r"D:\MyProjects\lending-portfolio-analytics-and-risk-monitoring\data\loan_clean.csv"

cols=[
'loan_amnt',
'int_rate',
'annual_inc',
'loan_status',
'grade',
'purpose',
'emp_length',
'issue_d',
'dti',
'addr_state',
'term',
'installment',
'revol_util'
]

df=pd.read_csv(
INPUT,
usecols=cols,
low_memory=False
)

df.to_csv(
OUTPUT,
index=False
)

print(df.shape)