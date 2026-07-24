# Consumer Lending Portfolio Analytics and Risk Monitoring

## Project Plan

| Field | Value |
|---|---|
| Document ID | PP-001 |
| Version | 1.0 |
| Status | Approved |
| Project Stage | Project Planning |
| Document Owner | Project Lead |
| Prepared By | Project Lead |
| Effective Date | 24 July 2026 |
| Governing Charter | PC-001 — Project Charter v1.0 |

---

## 1. Purpose

This document defines the approved execution plan for the Consumer Lending Portfolio Analytics and Risk Monitoring project.

It establishes:

- project stages;
- work packages and tasks;
- deliverables;
- dependencies;
- phase gates;
- review requirements;
- document ownership;
- status-management rules;
- definition of done.

This document controls the planned analytical workflow. Day-to-day execution status is maintained separately in `docs/02_project_status.md`.

---

## 2. Planning Principles

The project will follow these principles:

1. Business definitions must be established before technical implementation.
2. Data understanding must precede target and population definition.
3. Descriptive analysis, risk monitoring and model development must use clearly defined analytical populations.
4. Post-origination information must not be used as an origination model predictor.
5. No downstream deliverable may rely on an unapproved material definition.
6. Each task must produce an identifiable deliverable or reviewable update.
7. Material assumptions and decisions must be documented in `docs/adr/`.
8. Existing work may be reused only after it has been reviewed against the approved project plan.
9. Previously created files are not automatically considered approved.
10. Project documentation must reflect the implemented repository state.

---

## 3. Project Stages

The project consists of ten stages:

| Stage | Name | Primary Purpose |
|---|---|---|
| 1 | Initiation | Establish business context, scope and authority |
| 2 | Project Planning | Define workflow, deliverables and controls |
| 3 | Project Foundation | Standardize repository and working conventions |
| 4 | Data Understanding | Assess source data, variables, coverage and limitations |
| 5 | Data Preparation | Define targets, populations and analytical datasets |
| 6 | Portfolio Analytics | Assess portfolio composition and historical performance |
| 7 | Risk Monitoring | Define and analyze risk trends, cohorts and vintages |
| 8 | Risk Modeling | Develop and evaluate a baseline PD model |
| 9 | Business Communication | Produce dashboard, conclusions and recommendations |
| 10 | Project Closure | Reconcile deliverables and finalize the repository |

---

## 4. Work Breakdown Structure

### Stage 1 — Initiation

| Task ID | Task | Deliverable | Owner |
|---|---|---|---|
| INI-001 | Project kick-off | Confirmed business understanding | Project Lead / Analyst |
| INI-002 | Issue Project Charter | `docs/00_project_charter.md` | Project Lead |
| INI-003 | Establish initial analytical decision | `docs/adr/ADR-001-project-analysis-date.md` | Project Lead |

#### Stage gate

Stage 1 is complete when:

- Project Charter is approved;
- the Analyst has acknowledged the Charter;
- the project analysis date is documented;
- the project is authorized to proceed to planning.

**Current result:** Passed.

---

### Stage 2 — Project Planning

| Task ID | Task | Deliverable | Owner |
|---|---|---|---|
| PLN-001 | Issue Project Plan | `docs/01_project_plan.md` | Project Lead |
| PLN-002 | Establish project status baseline | `docs/02_project_status.md` | Project Lead |
| PLN-003 | Establish review-log baseline | `docs/03_review_log.md` | Project Lead |
| PLN-004 | Reconcile existing repository with approved plan | Repository assessment | Credit Risk Analyst |

#### Stage gate

Stage 2 is complete when:

- Project Plan v1.0 is acknowledged;
- Project Status and Review Log baselines are issued;
- existing files are classified as approved, reusable, pending review or obsolete;
- no unresolved structural conflict prevents execution.

---

### Stage 3 — Project Foundation

| Task ID | Task | Primary Deliverable | Owner |
|---|---|---|---|
| FND-001 | Repository structure assessment | `docs/00_repository_structure.md` | Credit Risk Analyst |
| FND-002 | Naming and file convention | Repository convention section | Credit Risk Analyst |
| FND-003 | Notebook convention | Approved notebook template | Credit Risk Analyst |
| FND-004 | Report convention | Approved report template | Credit Risk Analyst |
| FND-005 | Code and reproducibility convention | Execution rules | Credit Risk Analyst |
| FND-006 | Repository structure implementation | Updated repository | Credit Risk Analyst |

#### Stage gate

Stage 3 is complete when:

- the repository structure is approved;
- naming conventions are consistent;
- planned and completed files are distinguishable;
- raw data is excluded from version control;
- notebook and report standards are established;
- the README matches the approved repository design.

---

### Stage 4 — Data Understanding

| Task ID | Task | Primary Deliverable |
|---|---|---|
| DU-001 | Dataset source and file review | Dataset review report |
| DU-002 | Unit-of-observation assessment | Dataset review report |
| DU-003 | Dataset dimensions and date coverage | Dataset review report |
| DU-004 | Loan-status and performance-data review | Dataset review report |
| DU-005 | Identifier and duplicate assessment | Dataset review report |
| DU-006 | Variable inventory | Variable inventory |
| DU-007 | Business variable classification | Variable classification |
| DU-008 | Technical data profiling | Profiling output |
| DU-009 | Business data profiling | Data-understanding report |
| DU-010 | Initial data-quality assessment | Data-quality findings |
| DU-011 | Draft data dictionary | Draft data dictionary |

#### Expected outputs

```text
report/00_dataset_review.md
report/01_data_understanding.md
data/processed/data_profile.csv
data/processed/variable_categories.csv
reference/data_dictionary.xlsx
``` 

File names may be refined during Stage 3 but the business purpose of the deliverables must not change without approval.

#### Stage gate

Stage 4 is complete when:
- data source and limitations are documented;
- unit of observation is confirmed;
- origination and performance coverage are known;
- loan-status values are understood sufficiently for later target work;
- identifiers and duplicates are assessed;
- relevant variables have business and technical classifications;
- major data-quality risks are documented;
- no target or modeling population has been prematurely finalized.

---

### Stage 5 — Data Preparation

| Task ID | Task                                        | Primary Deliverable             |
| ------- | ------------------------------------------- | ------------------------------- |
| DP-001  | Define analytical use cases and populations | Population design               |
| DP-002  | Define observation point                    | ADR or preparation report       |
| DP-003  | Define performance window                   | ADR or preparation report       |
| DP-004  | Assess outcome maturity                     | Maturity assessment             |
| DP-005  | Define bad, good and indeterminate outcomes | Target definition               |
| DP-006  | Assess feature timing and leakage           | Feature-eligibility matrix      |
| DP-007  | Define cleaning rules                       | Data-preparation report         |
| DP-008  | Implement data cleaning                     | Reproducible notebook or script |
| DP-009  | Construct analytical datasets               | Approved analytical datasets    |
| DP-010  | Finalize data dictionary                    | Final data dictionary           |

#### Required analytical populations

At minimum, the project must separately assess:
- Origination population
Used to describe booked-loan composition and origination characteristics.
- Performance-monitoring population
Used to analyze historical repayment and risk outcomes with appropriate exposure or maturity.
- Model-development population
Used to develop and validate an origination risk model under approved target and information-timing rules.These populations may overlap but must not be assumed identical.

#### Stage gate

Stage 5 is complete when:
- observation point and performance window are approved;
- outcome maturity is addressed;
- target definition is documented;
- analytical populations are reproducible;
- leakage variables are excluded from model predictors;
- cleaning rules are traceable;
- analytical datasets can be regenerated from source data;
- material exclusions and their impacts are reported.

---

### Stage 6 — Portfolio Analytics

| Task ID | Task                                                    | Primary Deliverable        |
| ------- | ------------------------------------------------------- | -------------------------- |
| PA-001  | Portfolio volume and composition                        | Portfolio analytics report |
| PA-002  | Borrower and loan segmentation                          | Portfolio analytics report |
| PA-003  | Historical repayment-performance analysis               | Portfolio analytics report |
| PA-004  | Risk analysis by product and borrower segment           | Portfolio analytics report |
| PA-005  | Interest, payment and recovery analysis where supported | Portfolio analytics report |
| PA-006  | SQL portfolio queries                                   | SQL scripts                |
| PA-007  | Portfolio findings and limitations                      | Portfolio analytics report |

#### Minimum analytical requirements

Portfolio metrics must specify:
- business definition;
- numerator;
- denominator;
- population;
- exclusions;
- time basis;
- interpretation limitations.

Economic profit must not be claimed unless all material revenue and cost components are available and defined.

#### Stage gate

Stage 6 is complete when:
- portfolio composition is clearly explained;
- major segment differences are quantified;
- performance metrics are reproducible;
- volume metrics are not presented as risk metrics;
- unsupported profitability conclusions are avoided;
- findings are tied to evidence.

---

### Stage 7 — Risk Monitoring

| Task ID | Task                                              | Primary Deliverable    |
| ------- | ------------------------------------------------- | ---------------------- |
| RM-001  | Define risk-monitoring indicators                 | Risk-monitoring report |
| RM-002  | Analyze portfolio risk trends                     | Risk-monitoring report |
| RM-003  | Cohort analysis                                   | Risk-monitoring report |
| RM-004  | Vintage and months-on-book analysis               | Risk-monitoring report |
| RM-005  | Segment deterioration analysis                    | Risk-monitoring report |
| RM-006  | Monitoring SQL implementation                     | SQL scripts            |
| RM-007  | Monitoring findings and escalation considerations | Risk-monitoring report |

#### Vintage requirements

Where supported by the data, vintage analysis should include:
- origination cohort;
- months on book;
- comparable maturity;
- cumulative adverse-outcome measures;
- explicit treatment of incomplete vintages;
- limitation disclosure.

#### Stage gate

Stage 7 is complete when:
- monitoring indicators are operationally defined;
- cohorts are compared at appropriate maturity;
- incomplete observations are not treated as fully matured;
- major deterioration patterns are documented;
- monitoring recommendations are evidence-based.

---

### Stage 8 — Risk Modeling

| Task ID | Task                                                   | Primary Deliverable       |
| ------- | ------------------------------------------------------ | ------------------------- |
| MOD-001 | Confirm modeling objective and population              | Model report              |
| MOD-002 | Create development, validation and out-of-time samples | Modeling dataset          |
| MOD-003 | Establish benchmark model                              | Model report              |
| MOD-004 | Engineer eligible features                             | Modeling notebook         |
| MOD-005 | Develop baseline PD model                              | Model artifact and report |
| MOD-006 | Evaluate discrimination                                | Model report              |
| MOD-007 | Evaluate calibration                                   | Model report              |
| MOD-008 | Analyze score bands, lift and gains                    | Model report              |
| MOD-009 | Perform out-of-time assessment                         | Model report              |
| MOD-010 | Interpret model and limitations                        | Model report              |

#### Minimum model evaluation

The model assessment must consider, where technically applicable:
- benchmark comparison;
- ROC-AUC;
- KS;
- PR-AUC;
- recall and precision at stated thresholds;
- calibration;
- score bands or risk bands;
- lift or gains;
- out-of-time stability;
- business interpretation.

No single metric is sufficient to approve the model.

#### Stage gate

Stage 8 is complete when:
- the target and population are approved;
- predictors are available at the approved observation point;
- data leakage is controlled;
- validation design is appropriate;
- discrimination and calibration are evaluated;
- limitations are disclosed;
- model results are not overstated as production-ready.

---

### Stage 9 — Business Communication

| Task ID | Task                                           | Primary Deliverable      |
| ------- | ---------------------------------------------- | ------------------------ |
| BC-001  | Define management information requirements     | Dashboard design         |
| BC-002  | Build portfolio and risk dashboard             | Dashboard                |
| BC-003  | Consolidate major findings                     | Final analytical summary |
| BC-004  | Develop business recommendations               | Recommendation report    |
| BC-005  | Assess recommendation strength and limitations | Recommendation report    |
| BC-006  | Prepare management presentation narrative      | Executive summary        |

#### Stage gate

Stage 9 is complete when:
- the dashboard presents approved metrics;
- historical findings are not described as current real-world conditions;
- recommendations trace back to analysis;
- assumptions and limitations are visible;
- technical detail is separated from management communication;
- no proposed action is presented as implemented.

---

### Stage 10 — Project Closure

| Task ID | Task                                   | Primary Deliverable |
| ------- | -------------------------------------- | ------------------- |
| CLS-001 | Reconcile repository and documentation | Final repository    |
| CLS-002 | Confirm reproducibility                | Reproduction check  |
| CLS-003 | Resolve open review findings           | Closed review log   |
| CLS-004 | Finalize README                        | Final README        |
| CLS-005 | Final project review                   | Closure decision    |
| CLS-006 | Record lessons learned                 | Closure note        |

#### Closure gate

The project is closed only when:
- all required deliverables are approved;
- repository documentation matches implemented work;
- material findings are reproducible;
- open issues are closed or formally accepted;
- unfinished work is clearly labeled;
- the final README does not overstate project results or experience.

---

## 5. Deliverable Review Process

The standard workflow is:

Task Assigned
      ↓
Work in Progress
      ↓
Submitted for Review
      ↓
Project Lead Review
      ↓
Approved / Minor Revision / Rework Required
      ↓
Closed

### Review decisions

#### Approved
The deliverable meets the acceptance criteria and requires no further correction.

#### Approved with Minor Revisions
The deliverable is substantively acceptable. Limited corrections are required but do not prevent downstream work unless stated by the Project Lead.

#### Rejected — Rework Required
Material issues prevent acceptance. The deliverable must be revised and resubmitted.

---

## 6. Status Ownership

### Project Lead

The Project Lead owns:
- approval decisions;
- review findings;
- scope changes;
- analytical decisions;
- stage-gate decisions;
- Project Plan content.

### Credit Risk Analyst

The Credit Risk Analyst owns:
- execution updates;
- submission dates;
- task progress;
- blockers;
- revision completion;
- reproducible implementation.

The Analyst must not assign an approval decision to their own work.

---

## 7. Documentation Structure

The approved documentation architecture is expected to include:
```
docs/
├── 00_project_charter.md
├── 01_project_plan.md
├── 02_project_status.md
├── 03_review_log.md
└── adr/
    └── ADR-001-project-analysis-date.md
``` 
Additional governance documents will be introduced only when justified.

The repository must not add documentation solely to imitate enterprise complexity. Each maintained document must have a clear operational purpose.

---

## 8. Existing Work Treatment

The repository contains files created before the current project baseline.

Those files will be classified as follows:

| Classification             | Meaning                                                                                     |
| -------------------------- | ------------------------------------------------------------------------------------------- |
| Approved                   | Reviewed and accepted under the current project framework                                   |
| Reusable — Pending Review  | Potentially useful but not yet approved                                                     |
| Requires Revision          | Relevant but inconsistent with the approved framework                                       |
| Obsolete                   | Superseded and not intended for further use                                                 |
| Planned                    | Placeholder for future work                                                                 |
| Completed Outside Baseline | Previously produced work retained for reference but not approved under the current workflow |

No file will be deleted solely because it predates the baseline.

Deletion, renaming or replacement will be determined during repository reconciliation.

--- 

## 9. Change Control

A formal change assessment is required when a proposed change affects:
- objectives;
- scope;
- stage structure;
- major deliverables;
- target definition;
- observation point;
- performance window;
- analytical populations;
- repository architecture after approval;
- previously approved conclusions.

Minor formatting corrections do not require a formal change decision.

Material analytical decisions must be recorded in ```docs/adr/``` .

---

## 10. Definition of Done

A task is considered done only when:
1. The assigned output exists.
2. The output is complete for the approved scope.
3. The method is reproducible where applicable.
4. Assumptions and exclusions are documented.
5. The deliverable has been submitted for review.
6. Required revisions have been completed.
7. The Project Lead has issued a closure decision.
8. Repository status reflects the actual implementation.

A file existing in the repository does not, by itself, mean that the task is complete.

---

## 11. Initial Execution Sequence

The initial approved sequence is:
```
PLN-001 — Issue Project Plan
PLN-002 — Establish Project Status baseline
PLN-003 — Establish Review Log baseline
PLN-004 — Reconcile existing repository
FND-001 — Repository structure assessment
```
The Project Lead may authorize limited parallel work where dependencies permit.

---

## 12. Approval

This Project Plan authorizes execution according to the workflow and controls defined above.

| Role                | Decision                | Date         |
| ------------------- | ----------------------- | ------------ |
| Project Lead        | Approved                | 24 July 2026 |
| Credit Risk Analyst | Acknowledged            | 24 July 2026 |



---
