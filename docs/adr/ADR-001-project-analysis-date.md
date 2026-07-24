# ADR-001 — Project Analysis Date

| Field          | Value              |
| -------------- | ------------------ |
| ADR ID         | ADR-001            |
| Status         | Accepted           |
| Decision Owner | Project Lead       |
| Decision Date  | 24 July 2026       |
| Effective From | Project initiation |

---

## 1. Context

The available Lending Club dataset contains loans issued through 2018.

The project requires a consistent analytical context for interpreting historical portfolio performance, defining observation periods and communicating results.

The dataset coverage alone does not establish the actual date on which the source file was extracted. Treating the latest origination date as the analysis date would therefore be unsupported.

A project analysis date must be established before detailed portfolio, monitoring and modeling rules are designed.

---

## 2. Decision

The project will assume an analysis date of:

> **31 December 2019**

This date will be used as the simulated business reference date for project planning and interpretation.

The date is a project assumption. It must not be described as the verified source-data extraction date.

---

## 3. Rationale

The selected date:

1. provides a clear historical business context after the final origination year contained in the dataset;
2. allows additional time for at least some 2018 loans to develop observable performance;
3. supports consistent communication of portfolio findings;
4. separates the project’s analytical reference date from the current calendar date;
5. prevents the historical dataset from being described as representing a current live portfolio.

---

## 4. Consequences

### Positive consequences

* Portfolio findings can be communicated relative to a defined reference date.
* Historical and current real-world conditions are less likely to be confused.
* Performance-window and maturity assessments can be designed against a common project context.
* Dashboard titles and reports can use consistent time references.

### Limitations

* The assumed date does not prove that all performance information contained in the dataset was available by 31 December 2019.
* Individual loan records may contain fields updated after origination.
* The actual extract date and field-level information availability must still be investigated.
* Loans originated near the end of 2018 may remain insufficiently mature for certain outcome definitions.

---

## 5. Implementation Rules

1. Reports must describe the dataset as a historical portfolio analyzed under an assumed reference date.
2. Reports must not describe project results as the current condition of Lending Club.
3. The analysis date must not automatically be used as the observation date for every modeling record.
4. Outcome maturity must be assessed separately during target and population definition.
5. Post-origination variables must be assessed using their information timing rather than assumed available merely because the project analysis date is later.
6. If dataset evidence conflicts with this assumption, the issue must be raised to the Project Lead and documented in a superseding ADR.

---

## 6. Alternatives Considered

### Alternative A — Use 31 December 2018

Rejected because loans originated late in 2018 would have almost no additional performance period under the simulated context.

### Alternative B — Use the current calendar date

Rejected because the dataset does not contain current portfolio information and such framing would materially misrepresent the analysis.

### Alternative C — Leave the analysis date undefined

Rejected because it would create ambiguity in portfolio interpretation, outcome maturity and reporting.

### Alternative D — Treat the dataset extraction date as the analysis date

Not selected because the extraction date has not yet been verified.

---

## 7. Review Trigger

This decision must be reviewed if:

* the actual data extraction date is verified;
* field-level update dates reveal material incompatibility with the assumed date;
* the approved performance-window design requires a different analytical reference date;
* the project scope changes from historical simulation to another analytical use case.
