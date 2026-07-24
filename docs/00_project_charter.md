# Consumer Lending Portfolio Analytics and Risk Monitoring

## Project Charter

| Field          | Value                                   |
| -------------- | --------------------------------------- |
| Document ID    | PC-001                                  |
| Version        | 1.0                                     |
| Status         | Approved                                |
| Project Stage  | Initiation                              |
| Document Owner | Project Lead                            |
| Prepared By    | Project Lead                            |
| Effective Date | 24 July 2026                            |
| Project Type   | Simulated Credit Risk Analytics Project |

---

## 1. Project Background

The Credit Risk function requires a structured analytical view of a historical consumer lending portfolio.

The available Lending Club dataset contains loan origination, borrower, credit history, repayment and loan performance information for loans issued between 2007 and 2018.

The project will use this public dataset to simulate an end-to-end credit risk analytics assignment covering portfolio performance, risk monitoring and baseline risk modeling.

The project is intended to reproduce the analytical reasoning, documentation and review process expected from a Credit Risk Analyst. It does not represent employment experience or analysis conducted for Lending Club.

---

## 2. Business Problem

Management requires evidence-based answers to the following questions:

1. How has the historical lending portfolio performed?
2. Which borrower, loan and portfolio segments exhibit higher credit risk?
3. How has portfolio quality changed across origination periods?
4. Which indicators should management monitor to identify deterioration?
5. Can a baseline model provide meaningful borrower-level risk differentiation?
6. What actions may be considered to improve portfolio quality and risk control?

The project must prioritize business interpretation and decision support over model complexity.

---

## 3. Project Objectives

### 3.1 Primary Objective

Assess the performance and credit risk of the historical consumer lending portfolio and translate the findings into management-relevant information.

### 3.2 Supporting Objectives

The project will:

1. Evaluate portfolio composition and historical loan performance.
2. Define and calculate relevant portfolio and credit risk indicators.
3. Compare risk across borrower, loan and origination segments.
4. Conduct cohort and vintage-based analysis where supported by the data.
5. Identify variables associated with adverse loan outcomes.
6. Develop and evaluate a baseline probability-of-default model.
7. Create a management dashboard summarizing major portfolio and risk findings.
8. Produce evidence-based business recommendations.

---

## 4. Intended Stakeholders

The simulated stakeholders are:

| Stakeholder            | Primary Interest                                                       |
| ---------------------- | ---------------------------------------------------------------------- |
| Head of Credit Risk    | Overall portfolio quality and major risk drivers                       |
| Portfolio Risk Manager | Portfolio trends, segments and early risk indicators                   |
| Credit Policy Team     | Borrower and loan characteristics associated with adverse outcomes     |
| Risk Modeling Team     | Target definition, population selection and baseline model performance |
| Senior Management      | Concise findings, implications and recommended actions                 |

---

## 5. Project Scope

### 5.1 In Scope

The project includes:

* business and data understanding;
* dataset review and variable classification;
* data quality assessment;
* data cleaning and analytical dataset construction;
* target and performance outcome definition;
* analytical population definition;
* portfolio composition analysis;
* portfolio performance analysis;
* risk segmentation;
* cohort and vintage analysis;
* risk monitoring indicator design;
* baseline feature engineering;
* baseline probability-of-default modeling;
* model discrimination and calibration assessment;
* out-of-time evaluation where feasible;
* dashboard development;
* business interpretation and recommendations;
* technical and management documentation.

### 5.2 Out of Scope

The following items are excluded:

* production model deployment;
* real-time scoring;
* application programming interfaces;
* model monitoring in a live production environment;
* automated decision engines;
* MLOps implementation;
* deep learning;
* extensive model optimization;
* large-scale hyperparameter search;
* IFRS 9 expected credit loss calculation;
* Basel regulatory capital calculation;
* economic capital modeling;
* collection strategy optimization;
* fraud detection;
* causal inference;
* lending policy implementation;
* analysis using confidential Lending Club information;
* conclusions about Lending Club’s current portfolio or current business condition.

Any addition to the approved scope requires a documented change decision.

---

## 6. Project Deliverables

The expected deliverables are:

| Deliverable                    | Description                                                         |
| ------------------------------ | ------------------------------------------------------------------- |
| Project documentation          | Charter, plan, status records, review records and decision records  |
| Dataset review                 | Assessment of source, structure, coverage and limitations           |
| Data dictionary                | Technical and business definitions of relevant variables            |
| Data quality report            | Missingness, validity, consistency and usability findings           |
| Analytical dataset             | Reproducible dataset constructed for approved analytical purposes   |
| Portfolio analytics report     | Portfolio composition, performance and segmentation analysis        |
| Risk monitoring report         | Defined indicators, trends, cohorts and vintage analysis            |
| Baseline model report          | Target, population, methodology, validation and interpretation      |
| Dashboard                      | Management-oriented summary of portfolio and risk findings          |
| Business recommendation report | Findings, implications, limitations and proposed actions            |
| Reproducible code              | Notebooks, SQL and supporting scripts required to reproduce results |

The exact file structure and naming conventions will be established in the Project Plan.

---

## 7. Success Criteria

The project will be considered successful when:

1. The analytical workflow is documented and reproducible.
2. The raw dataset remains unchanged.
3. Data transformations can be traced from source data to analytical outputs.
4. Target and population definitions are explicitly documented.
5. Portfolio and risk metrics include clear business definitions and calculation rules.
6. Analysis distinguishes between descriptive portfolio analysis, performance monitoring and model-development populations.
7. Material analytical decisions are documented.
8. Findings are supported by observable data.
9. Limitations and uncertainties are disclosed.
10. The baseline model is evaluated using appropriate discrimination and calibration measures.
11. The dashboard communicates the most important findings to non-technical stakeholders.
12. Business recommendations follow from analytical evidence.
13. No incomplete output is presented as completed.
14. Repository documentation accurately reflects the implemented work.

No predetermined model-performance threshold is required for project success.

---

## 8. Project Assumptions

The initial project assumptions are:

1. The Lending Club accepted-loan dataset is suitable for simulating a historical consumer credit risk portfolio.
2. Each valid record represents a loan-level observation unless the dataset review identifies otherwise.
3. The project is conducted from the perspective of a Credit Risk Analyst.
4. The assumed project analysis date is 31 December 2019.
5. The assumed analysis date is a project convention and is not presented as the verified extraction date of the source dataset.
6. Historical loan performance will only be used where the applicable observation and performance periods support the intended analysis.
7. Loan outcome maturity will be assessed before defining model-development populations.
8. Variables containing post-origination information will not be used as origination model predictors.
9. Publicly available information will be used when clarification of variables or dataset context is required.
10. Assumptions may be revised when contradicted by documented evidence.

Any material revision must be recorded through the project decision process.

---

## 9. Project Constraints

The project is subject to the following constraints:

* only public data may be used;
* no confidential business information is available;
* source data coverage ends in 2018;
* data availability may not support all desired monitoring indicators;
* the actual dataset extraction date may not be verifiable;
* some variable definitions may be incomplete or unavailable from an original source;
* no live production portfolio is available;
* no actual internal credit policy, risk appetite or profitability framework is available;
* conclusions must remain within the evidence supported by the dataset;
* simulated business context must be clearly distinguished from verified fact;
* project outputs must not imply that recommendations were implemented;
* computational resources may constrain repeated processing of the full dataset.

---

## 10. Key Analytical Principles

The project will follow these principles:

1. Business questions must be defined before analytical methods are selected.
2. Raw data must not be modified.
3. Descriptive, monitoring and modeling use cases must be distinguished.
4. Variables must be assessed for timing and information leakage.
5. Target definition must include outcome maturity and performance-window considerations.
6. Metrics must have documented numerators, denominators and exclusions.
7. Comparisons must use populations with appropriate and comparable exposure.
8. Model complexity must be justified by incremental business value.
9. Data limitations must not be hidden through imputation or exclusion.
10. Reproducibility is required for all material analytical outputs.
11. Conclusions must distinguish evidence, assumption and interpretation.
12. Recommendations must be proportional to the strength of the evidence.

---

## 11. High-Level Project Stages

The project will proceed through the following stages:

1. Initiation
2. Project Planning
3. Project Foundation and Repository Setup
4. Data Understanding
5. Data Preparation
6. Portfolio Analytics
7. Risk Monitoring
8. Risk Modeling
9. Business Communication
10. Project Closure

Detailed tasks, dependencies, phase gates and acceptance criteria will be defined in the Project Plan.

---

## 12. Governance and Responsibilities

### 12.1 Project Lead

The Project Lead is responsible for:

* establishing project scope and priorities;
* issuing the Project Charter and Project Plan;
* assigning tasks;
* reviewing deliverables;
* approving, rejecting or requesting revisions;
* approving material changes;
* issuing formal analytical decisions;
* determining whether the project may progress to the next stage.

### 12.2 Credit Risk Analyst

The Credit Risk Analyst is responsible for:

* completing assigned tasks within the approved scope;
* documenting methods, findings and limitations;
* maintaining reproducible analytical work;
* updating task and project status;
* reporting blockers and data issues;
* submitting deliverables for review;
* implementing required corrections;
* explaining and defending analytical choices;
* refraining from marking work as approved without Project Lead confirmation.

---

## 13. Review Framework

Each submitted deliverable will receive one of the following decisions:

* **Approved**
  The deliverable satisfies the acceptance criteria and may be treated as complete.

* **Approved with Minor Revisions**
  The deliverable is substantively acceptable but requires limited corrections that do not alter the principal conclusion or methodology.

* **Rejected — Rework Required**
  The deliverable contains material deficiencies and must be revised and resubmitted.

A downstream task may not rely on an unapproved deliverable unless the Project Lead explicitly authorizes parallel work.

---

## 14. Change and Decision Control

Material changes include:

* changes to project objectives;
* changes to scope;
* changes to analytical populations;
* changes to target definition;
* changes to the assumed analysis date;
* changes to major deliverables;
* changes to the approved repository architecture;
* changes that invalidate previously approved results.

Material analytical decisions will be documented as Architecture Decision Records within:

```text
docs/adr/
```

Project discussions and informal working notes are not treated as approved decisions unless formally documented.

---

## 15. Initial Risks

| Risk                                | Potential Impact                                | Initial Response                                                           |
| ----------------------------------- | ----------------------------------------------- | -------------------------------------------------------------------------- |
| Incomplete source documentation     | Incorrect interpretation of variables           | Validate definitions and record uncertainty                                |
| Outcome maturity bias               | Misleading default comparisons or model target  | Define performance and maturity rules before population selection          |
| Information leakage                 | Inflated model performance                      | Assess variable availability at the observation point                      |
| Population selection bias           | Non-representative findings                     | Separate analytical populations by use case                                |
| Large dataset size                  | Slow or failed processing                       | Use efficient data types, staged processing and reproducible extracts      |
| Historical data limitation          | Findings may not generalize to current lending  | Restrict conclusions to the simulated historical context                   |
| Ambiguous profitability information | Inability to measure economic profit accurately | Separate observable cash-flow metrics from unverified profitability claims |
| Excessive project scope             | Incomplete or superficial deliverables          | Enforce approved scope and phase gates                                     |

The risk register may be expanded during Project Planning.

---

## 16. Approval

This Project Charter authorizes the project to proceed from Initiation to Project Planning.

Approval of this Charter does not approve any analytical target, model population, metric definition or business conclusion. Those items require separate review during execution.

| Role                | Decision                | Date         |
| ------------------- | ----------------------- | ------------ |
| Project Lead        | Approved                | 24 July 2026 |
| Credit Risk Analyst | Acknowledged            | 24 July 2026 |
