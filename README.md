# Consumer Lending Portfolio Analytics and Risk Monitoring

## 1. Overview

This project simulates the end-to-end analytical workflow of a Credit Risk Analyst responsible for analyzing and monitoring a consumer lending portfolio.

Using historical Lending Club loan data (2007–2018), the project demonstrates how portfolio analytics, risk monitoring, and predictive modeling can be combined to support underwriting decisions and portfolio risk management.

Rather than focusing solely on predictive modeling, the project emphasizes a business-driven analytical process that transforms historical lending data into portfolio insights, risk indicators, and decision-support information.

The project is developed for educational and portfolio purposes and is intended to reflect a practical risk analytics workflow commonly performed in banking, digital lending, and consumer finance environments.

Project assumption:

- Role: Credit Risk Analyst
- Business domain: Consumer Lending
- Portfolio: Accepted consumer loans
- Observation date: December 2019
- Historical data available: 2007–2018

---

# 2. Business Context

Consumer lenders continuously monitor portfolio performance to understand how credit risk evolves across different borrower segments and loan vintages.

Credit Risk Analysts support this process by transforming historical lending data into business insights that help stakeholders:

- understand portfolio composition
- identify high-risk borrower segments
- monitor portfolio risk using key credit risk indicators
- support underwriting decisions
- communicate portfolio performance through business reports and dashboards

This project simulates that analytical workflow using publicly available historical lending data.

A baseline application risk model is also developed to demonstrate how historical borrower information available at loan origination can support future credit risk assessment.

---

# 3. Business Objectives

The project focuses on three business objectives.

### Portfolio Analytics

Analyze the historical lending portfolio to understand its composition, borrower characteristics, loan characteristics, and portfolio performance.

### Risk Monitoring

Monitor portfolio credit risk using key risk indicators to identify high-risk segments, historical performance patterns, and portfolio trends.

### Decision Support

Generate analytical insights that support underwriting decisions and portfolio risk management. To support these objectives, the project develops a baseline application risk prediction model using borrower information available at loan origination.

The project aims to answer the following business questions.

1. What does the lending portfolio look like?

2. Which borrower segments contribute most to portfolio exposure?

3. Which borrower characteristics are associated with higher default risk?

4. How does portfolio performance vary across loan vintages?

5. Which portfolio segments contribute most to historical losses?

6. Can historical borrower information predict future default?

7. What analytical insights can support better underwriting and portfolio monitoring?

---

# 4. Project Components

The project consists of three complementary analytical components.

## Portfolio Analytics

Analyze portfolio composition, borrower characteristics, loan characteristics, geographic distribution, exposure concentration, and historical portfolio performance.

## Risk Monitoring

Measure and monitor portfolio credit risk using key business indicators, borrower segmentation, and vintage analysis to identify changes in portfolio risk.

## Risk Modeling

Develop and evaluate a baseline application risk prediction model using borrower information available before loan origination. The model is intended to support credit risk assessment and underwriting decisions rather than replace business judgement.

---

# 5. Project Scope

This project analyzes historical consumer lending data and simulates the analytical responsibilities of a Credit Risk Analyst within a retail lending environment.

The project focuses on retrospective portfolio analysis using completed historical loan outcomes.

The project does not aim to build a production-ready lending decision engine or production scorecard.

Project deliverables include:

- Clean analytical dataset
- Data dictionary
- SQL-based portfolio analytics
- Portfolio risk monitoring
- Baseline application risk model
- Interactive dashboard
- Business recommendations

---

# 6. Dataset

### Dataset

Lending Club Accepted Loans Dataset (2007–2018)

### Description

Historical consumer lending records containing borrower characteristics, loan attributes, repayment outcomes, and portfolio performance information.

### Data Source

Original source:
Lending Club public loan dataset

Public mirror:
https://www.kaggle.com/datasets/wordsforthewise/lending-club

### Portfolio Scope

- Consumer installment loans
- Accepted loans only
- Historical originations from 2007 to 2018

### Current analytical dataset

- Rows: 2,260,701
- Database: SQL Server
- Database name: LendingRisk

### Observation Date

Portfolio observation date:

December 2019

Historical loan performance observed up to the portfolio observation date is used for retrospective portfolio analysis and model development.

---

# 7. Target Definition

## Objective

Predict whether a loan will ultimately default using only borrower and loan information available at or before loan origination.

The target is designed for an application risk model, where lending decisions must rely exclusively on information known before the loan is approved.

Performance outcomes are observed until the portfolio observation date (December 2019).

### Target Variable

| loan_status | target |
|-------------|-------:|
| Fully Paid | 0 |
| Charged Off | 1 |
| Default | 1 |
| Current | NULL |
| In Grace Period | NULL |
| Late (16–30 days) | NULL |
| Late (31–120 days) | NULL |

Loans without a final observed outcome are excluded from model development to avoid target ambiguity and target leakage.

---

# 8. Population Definition

The analytical population is selected according to predefined business rules to ensure that model development and portfolio analysis are based on reliable historical observations.

Population selection principles include:

- loans originated between 2007 and 2018
- accepted consumer loans only
- completed loan outcomes available by the observation date
- target availability
- sufficient data quality for analysis

Loans with unresolved repayment outcomes are retained for portfolio monitoring where appropriate but excluded from supervised model development.

---

# 9. Data Quality Principles

Before portfolio analysis and model development, the dataset is assessed to ensure analytical quality and business consistency.

The data quality assessment includes:

- variable classification
- data type verification
- missing value assessment
- duplicate detection
- unique value assessment
- distribution analysis
- business rule validation
- variable documentation through a data dictionary

The objective is to create a clean and reproducible analytical dataset suitable for both portfolio analytics and predictive modeling.

---

# 10. Modeling Principles

The baseline risk model follows several business-oriented modeling principles commonly applied in application risk analytics.

- Business-driven target definition
- Time-based validation
- No target leakage
- Pre-origination variables only
- Reproducible feature engineering
- Model interpretability
- Consistent validation methodology

The model is intended to provide decision-support information for underwriting and portfolio monitoring rather than automated credit approval.

---

# 11. Project Workflow

The project follows an end-to-end analytical workflow that reflects the typical responsibilities of a Credit Risk Analyst working with a historical consumer lending portfolio.

### Phase 1 – Business Understanding

- Define the business context
- Identify business objectives
- Formulate key business questions

### Phase 2 – Data Understanding

- Review raw dataset
- Understand portfolio structure
- Review available variables
- Assess business meaning of each variable

### Phase 3 – Data Preparation

- Data profiling
- Data quality assessment
- Data cleaning
- Data dictionary
- Target definition
- Population definition

### Phase 4 – Portfolio Analytics

- Exploratory data analysis
- Portfolio composition analysis
- Borrower segmentation
- Loan segmentation
- Geographic analysis
- Vintage analysis

### Phase 5 – Risk Monitoring

Generate and analyze portfolio monitoring indicators including:

- Portfolio metrics
- Credit risk metrics
- Segment-level monitoring
- Vintage performance

### Phase 6 – Risk Modeling

- Feature engineering
- Model development
- Model evaluation

### Phase 7 – Business Communication

- Business interpretation
- Dashboard development
- Business recommendations

---

# 12. Portfolio Analytics

Portfolio Analytics focuses on understanding the historical lending portfolio from multiple business perspectives.

The analysis includes:

### Portfolio Composition

- Portfolio size
- Loan amount distribution
- Interest rate distribution
- Loan term distribution

### Borrower Analysis

- Grade distribution
- Employment length
- Home ownership
- Annual income
- Debt-to-income ratio

### Loan Analysis

- Loan purpose
- Loan status
- Interest rate
- Installment amount

### Geographic Analysis

- State-level portfolio distribution
- State-level default rate

### Vintage Analysis

- Loan originations by year
- Historical portfolio performance across vintages

The objective is to understand how the lending portfolio is structured before evaluating portfolio risk.

---

# 13. Risk Monitoring

Risk Monitoring evaluates historical portfolio performance using key credit risk indicators.

The monitoring process focuses on identifying historical risk patterns across different portfolio segments rather than monitoring a live production portfolio.

Key monitoring metrics include:

### Portfolio Metrics

- Portfolio size
- Total funded amount
- Average loan amount
- Average interest rate

### Credit Risk Metrics

- Default count
- Default rate
- Charge-off rate
- Delinquency rate
- Historical loss rate

### Segment Monitoring

- Grade default rate
- Loan purpose default rate
- State-level default rate
- DTI distribution
- Vintage performance

Portfolio monitoring results are documented in:

```
report/03_portfolio_monitoring.md
```

---

# 14. Risk Modeling

To support underwriting analysis, the project develops a baseline application risk prediction model using borrower information available before loan origination.

The objective is to demonstrate how historical borrower characteristics can be used to estimate default risk.

The modeling process includes:

- Feature engineering
- Model training
- Model validation
- Performance evaluation

The model is evaluated using several commonly used discrimination metrics.

Primary metrics:

- ROC-AUC
- KS Statistic

Supporting metrics:

- PR-AUC
- Recall

The project emphasizes model interpretability and reproducibility rather than maximizing predictive performance.

Detailed methodology and evaluation results are documented in:

```
report/04_modeling.md
```

---

# 15. Project Deliverables

The project produces the following deliverables.

### Data

- Clean analytical dataset
- Data dictionary

### SQL

- Portfolio analytics queries
- Portfolio monitoring queries

### Analytics

- Exploratory data analysis
- Portfolio analytics report
- Portfolio monitoring report

### Modeling

- Baseline application risk model
- Model evaluation report

### Business

- Business recommendations
- Interactive dashboard

---

# 16. Project Structure

```
lending-portfolio-analytics-and-risk-monitoring
│
├── README.md
│
├── docs
│   ├── 01_project_plan.md
│   └── 02_project_status.md
│   └── 03_review_log.md    
│
├── dashboard
│
├── data
│   ├── raw
│   └── processed
│
├── notebooks
│   ├── 01_data_profiling.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_population_definition.ipynb
│   ├── 04_portfolio_analytics.ipynb
│   ├── 05_feature_engineering.ipynb
│   ├── 06_risk_modeling.ipynb
│   └── prepare_data.py
│
├── report
│   ├── 00_dataset_review.md
│   ├── 01_data_preparation.md
│   ├── 02_portfolio_analytics.md
│   ├── 03_risk_monitoring.md
│   ├── 04_model_development.md
│   └── 05_business_recommendation.md
│
├── sql
│   ├── 01_create_schema.sql
│   ├── 02_portfolio_composition.sql
│   ├── 03_portfolio_performance.sql
│   ├── 04_segment_monitoring.sql
│   └── 05_vintage_analysis.sql
││
└── reference
    ├── 01_dataset_notes.md  
    ├── 02_variable_notes.md
    ├── 03_business_notes.md
    └── 04_questions.md
```
01_create_schema.sql


0

---

# 17. Dashboard

The interactive dashboard summarizes portfolio performance and historical credit risk using business-oriented visualizations.

The dashboard is designed to support business users in reviewing:

- Portfolio overview
- Portfolio composition
- Credit risk indicators
- Borrower segmentation
- Geographic distribution
- Vintage performance
- Historical default patterns

Dashboard preview:

*Coming soon*

---

# 18. Results

Project implementation is currently in progress.

Completed outputs will include:

- Portfolio analytics
- Portfolio monitoring
- Baseline risk model
- Dashboard
- Business recommendations

Model performance metrics and analytical findings will be documented after project completion.

---

# 19. Key Business Insights

The final project will summarize key findings from three perspectives.

### Portfolio Analytics

Understand how the portfolio is distributed across borrower segments and loan characteristics.

### Risk Monitoring

Identify historical risk patterns, high-risk segments, and portfolio performance trends.

### Decision Support

Translate analytical findings into practical recommendations that support underwriting and portfolio risk management.

Business recommendations will be documented in:

```
report/05_business_recommendation.md
```

---

# 20. How To Run

1. Clone the repository.

2. Import the raw Lending Club dataset into SQL Server.

3. Create the project database using the SQL scripts.

4. Execute the SQL scripts for portfolio analytics and portfolio monitoring.

5. Run the notebooks sequentially:

```
01_data_profiling

↓

02_data_cleaning

↓

03_population_definition

↓

04_eda

↓

05_feature_engineering

↓

06_modeling
```

6. Review analytical reports in the `report` folder.

7. Open the dashboard to explore portfolio analytics and risk monitoring results.

---