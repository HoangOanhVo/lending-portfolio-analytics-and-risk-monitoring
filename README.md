# Consumer Lending Portfolio Analytics and Risk Monitoring

## Overview

This project analyzes the performance and credit risk of a consumer lending portfolio using historical loan data from Lending Club (2007–2018).

The objective is to simulate an end-to-end credit risk analytics workflow similar to those used in digital lending, banking, and fintech environments. The project combines SQL-based portfolio analysis, exploratory data analysis, predictive modeling, and dashboard reporting to transform raw lending data into actionable business insights.

* Project assumption:
    - Role: Credit Risk Analyst
    - Time: End of 2019
    - Data available: Lending Club Accepted Loans 2007–2018

---

## Business Understanding

The project focuses on 3 business objectives:

1.  Evaluate portfolio performance using key credit risk indicators and borrower segmentation.
2.  Identify borrower and loan characteristics associated with higher default probability.
3.  Develop a baseline credit risk prediction model to support portfolio monitoring and underwriting decisions.

This project aims to answer the following questions:

1. What is the current portfolio risk profile?
2. Which borrower characteristics are associated with higher probability of default?
3. Which segments drive portfolio exposure and losses?
4. How does portfolio performance vary across vintages?
5. Can historical borrower information predict future default?
6. Which insights can improve underwriting and portfolio monitoring?

---

## Project Scope

The analysis is performed on historical consumer loan records and is intended for educational and portfolio purposes only. The project does not aim to build a production lending decision engine.

* Expected outputs:

1. Clean analytical dataset
2. SQL portfolio monitoring queries
3. Credit risk model
4. Interactive dashboard
5. Business insights and recommendations

* Success criteria

1. Portfolio analytics: Generate monitoring KPIs

2. Risk model:
 - Outperform random baseline.
 - Model evaluation
    + Primary:
        - ROC-AUC
        - KS
    + Secondary:
        - Recall
        - PR-AUC
 - Maintain stable model performance across validation periods.

3. Business: Produce actionable underwriting insights

---

## Dataset

* Dataset:
 - Lending Club Accepted Loans Dataset (2007–2018)
 - Description: 
 Historical consumer lending records including borrower characteristics, loan attributes, repayment outcomes, and portfolio performance information.

* Data Source:
 - Kaggle: Lending Club Loan Data https://www.kaggle.com/datasets/wordsforthewise/lending-club
 - Original source: Lending Club public loan dataset
 - Current imported dataset:
    + Rows: 2,260,701
    + Columns: Selected analytical variables
    + Database: SQL Server (LendingRisk)

* Observation Date:
 - Portfolio observation date: December 2019
 - Historical data available: 2007–2018
 - Purpose: Use historical portfolio performance to generate insights and support future underwriting decisions.

---

## Target Definition

* Objective:
Predict whether a loan defaults within an observed performance period using information available at or before loan origination.

* Performance period:
Observed until portfolio observation date (December 2019).

* Target variable: 
target

| loan_status        | target |
| ------------------ | -----: |
| Fully Paid         |      0 |
| Charged Off        |      1 |
| Default            |      1 |
| Current            |   NULL |
| In Grace Period    |   NULL |
| Late (16–30 days)  |   NULL |
| Late (31–120 days) |   NULL |

* Note: 
    + As this project aims to build an application risk model (origination model), the target needs to reflect the final observed outcome rather than the current repayment state.
    + Loans with unresolved outcomes are excluded from model development to avoid target contamination and label uncertainty.

---

## Modeling Principles

- Time-based validation
- No target leakage
- Use only pre-origination features
- Exclude unresolved loans

---

## Project Workflow

1. Data understanding
=> Review dataset structure and define business meaning.

2. Data preparation
=> Clean raw data and prepare analytical tables.

3. Exploratory data analysis
=> Understand portfolio composition and risk patterns.

4. Portfolio analytics
=> Calculate portfolio KPIs using SQL.

5. Feature engineering
=> Create model-ready variables.

6. Credit risk modeling
=> Build baseline default prediction model.

7. Insight generation
=> Translate findings into business recommendations.

8. Dashboard development
=> Build monitoring dashboard for business users.

---

## Key Risk KPIs

* Portfolio metrics
    1. Portfolio size
    2. Total exposure
    3. Portfolio growth
    4. Average loan amount
    5. Average interest rate

* Credit risk metrics
    1. Default count
    2. Default rate
    3. Charge-off rate
    4. Delinquency rate
    5. Loss rate
    6. Exposure at default (EAD)

* Segment monitoring
    1. Grade default rate
    2. DTI distribution
    3. Loan purpose distribution
    4. State-level default rate
    5. Vintage performance

Detailed KPI definitions and formulas are documented in:
report/02_eda_summary.md

---

## Project Structure

```
lending-portfolio-analytics-and-risk-monitoring\
│   README.md
│   
├───dashboard
├───data
│   │   archive.zip
│   │   
│   ├───processed
│   │       loan_clean.csv
│   │       
│   └───raw
│           accepted_2007_to_2018Q4.csv
│           rejected_2007_to_2018Q4.csv
│           
├───notebooks
│       01_data_cleaning.ipynb
│       02_eda.ipynb
│       03_feature_engineering.ipynb
│       04_modeling.ipynb
│       prepare_data.py
│       
├───report
│       01_data_dictionary.md
│       02_eda_summary.md
│       03_portfolio_monitoring.md
│       04_modeling.md
│       05_business_recommendation.md
│       
└───sql
        portfolio_kpi.sql
        schema.sql
```

---

## Dashboard Preview

(Coming soon)
---

## Results

(Under development)
---



## Key Business Insights

(Coming soon)
---

## How To Run

## How To Run

1. Clone repository

2. Load raw dataset into SQL Server

3. Run SQL scripts

4. Execute notebooks in order

5. Open dashboard

---