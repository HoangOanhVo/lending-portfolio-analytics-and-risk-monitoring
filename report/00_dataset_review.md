# Dataset Review
Task 2.1-Dataset review-phải trả lời theo góc nhìn nghiệp vụ:

- Dataset này đại diện cho cái gì?
- Một dòng dữ liệu là gì?
- Phạm vi thời gian thế nào?
- Dữ liệu chứa thông tin tại thời điểm nào?
- Có thể dùng cho các bài toán nghiệp vụ nào?
- Có những hạn chế gì?
- Điều gì chưa thể kết luận ở giai đoạn này?

## 1. Review Objective

## 2. Dataset Overview

## 3. Business Entity

## 4. Observation Unit

## 5. Time Coverage and Observation Date

## 6. Available Information

## 7. Potential Business Use Cases

## 8. Initial Data Limitations

## 9. Open Questions and Items Requiring Validation

## 10. Conclusion



# 1. Project Information

## Objective

The objective of this notebook is to perform an initial assessment of the Lending Club dataset before any data cleaning or analytical modeling.

The analysis focuses on:

- Understanding dataset structure
- Reviewing variable data types
- Assessing data completeness
- Identifying potential data quality issues
- Evaluating target availability
- Providing recommendations for subsequent data cleaning

## Dataset
Dataset:
Lending Club Accepted Loans (2007–2018)

Observation Date:
December 2019

Role:
Credit Risk Analyst

Business Context:
Portfolio monitoring and application risk modeling
---

# 2. Load Dataset

The raw dataset is loaded in to the dataframe named df.
---

# 3. Dataset Overview

Rows    : 2,260,701
Columns : 151
dtypes: float64(113), str(38)
memory usage: 3.1 GB

The dataset contains over two million historical consumer loan records, providing sufficient observations for portfolio analytics and predictive modeling. The large sample size enables stable estimation across borrower segments and loan vintages.

---

# 4. Variable Categorization

## 4.1 Business Domain Categories

| Category                        | Ý nghĩa                                 |
| ------------------------------- | --------------------------------------- |
| 1. Identifiers                  | Các biến định danh                      |
| 2. Loan Origination             | Thông tin khoản vay khi cấp tín dụng    |
| 3. Borrower Profile             | Hồ sơ khách hàng                        |
| 4. Credit History               | Lịch sử tín dụng                        |
| 5. Revolving & Utilization      | Dư nợ quay vòng và mức sử dụng tín dụng |
| 6. Account Structure            | Cấu trúc các tài khoản tín dụng         |
| 7. Delinquency & Public Records | Quá hạn và hồ sơ tiêu cực               |
| 8. Joint Application            | Đồng vay                                |
| 9. Loan Performance             | Kết quả khoản vay                       |
| 10. Payment & Cash Flow         | Thanh toán                              |
| 11. Collection & Recovery       | Thu hồi nợ                              |
| 12. Hardship Program            | Chương trình hỗ trợ khách hàng          |
| 13. Debt Settlement             | Thỏa thuận tất toán                     |
| 14. Policy & Operational        | Biến vận hành                           |


## 4.2 Data Type Categories


| Category                        | Ý nghĩa                                 |
| ------------------------------- | --------------------------------------- |
| 1. Date                         | Các biến định dạng ngày tháng           |
| 2. Numeric                      | Các biến định dạng số                   |
| 3. Categorical                  | Các biến định dạng nhóm phân loại       |
| 4. Text                         | Các biến định dạng văn bản              |


---

# 5. Schema Review and Data Type Assessment



--- 
# 6. Missing Value Analysis


# 7. Duplicate Analysis


# 8. Cardinality Analysis


# 9. Numerical Variable Profiling


# 10. Categorical Variable Profiling


# 11. Date & Text Variable Review


# 12. Target Availability Review


# 13. Initial Data Quality Findings


# 14. Summary
