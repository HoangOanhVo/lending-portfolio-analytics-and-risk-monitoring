# Question 1. Dataset review có nghĩa là gì?

## Status
Resolved

## Research 
Sau khi hỏi ChatGPT thì được trả lời như sau:
Dataset review phải trả lời theo góc nhìn nghiệp vụ:
    - Dataset này đại diện cho cái gì?
    - Một dòng dữ liệu là gì?
    - Phạm vi thời gian thế nào?
    - Dữ liệu chứa thông tin tại thời điểm nào?
    - Có thể dùng cho các bài toán nghiệp vụ nào?
    - Có những hạn chế gì?
    - Điều gì chưa thể kết luận ở giai đoạn này?

Hỏi sâu thêm thì được giải thích rằng 7 nội dung trên là suy luận dựa kiểu "một cách hiện thực hóa (operationalize) các mục tiêu của giai đoạn Data Understanding thành một checklist rõ ràng, dễ review và phù hợp với một dự án Credit Risk Analytics." theo hướng dẫn của CRISP trong CRISP-DM User Guide

## Evidence
https://s2.smu.edu/~mhd/8331f03/crisp.pdf
=> file này đã lưu về trong reference/

## Conclusion
Dùng 7 câu hỏi trên để viết notebook và viết report liên quan

# Question 2. CRISP-DM là gì?

## Status
Resolved

## Research 

Sau khi hỏi ChatGPT và tìm hiểu thì em được biết rằng CRISP-DM (viết tắt của Cross-Industry Standard Process for Data Mining) là một quy trình khai phá dữ liệu được đề xuất trong dự án cùng tên, công bố bởi tác giả Wirth, R. and Hipp, J. (2000) CRISP-DM: Towards a Standard Process Model for Data Mining. Proceedings of the 4th International Conference on the Practical Applications of Knowledge Discovery and Data Mining, Manchester, 11-13 April 2000, 29-40.

## Evidence

Chi tiết về CRSP-DM dược trình bày trong tài liệu của IBM SPSS https://www.ibm.com/docs/en/spss-modeler/19.0.0?topic=guide-introduction-crisp-dm 

Cụ thể, CRISP-DM gồm sáu giai đoạn: 1. Business Understanding -> 2. Data Understanding -> 3. Data Preparation -> 4. Modeling -> 5. Evaluation -> 6. Deployment

1. Business Understanding
    Xác định:
        vấn đề kinh doanh là gì;
        ai cần kết quả;
        quyết định nào cần được hỗ trợ;
        tiêu chí thành công là gì;
        giới hạn của dự án là gì.
2. Data Understanding
    Tìm hiểu dữ liệu hiện có:
        nguồn dữ liệu;
        đơn vị quan sát;
        biến có sẵn;
        phạm vi thời gian;
        chất lượng dữ liệu;
        quan hệ ban đầu giữa các biến;
        dữ liệu có đủ để giải quyết business objective không.
3. Data Preparation
    Biến dữ liệu thô thành dữ liệu có thể phân tích hoặc mô hình hóa:
        lựa chọn population;
        loại record không hợp lệ;
        xử lý kiểu dữ liệu;
        xử lý missing;
        loại duplicate;
        tạo target;
        chọn biến;
        tạo feature;
        chia tập train, validation và out-of-time.
4. Modeling
    Lựa chọn và xây dựng phương pháp phân tích hoặc mô hình:
        logistic regression;
        decision tree;
        gradient boosting;
        scorecard;
        clustering;
        time-series model;
        hoặc các phương pháp khác.
5. Evaluation
    Đánh giá xem kết quả có thật sự đáp ứng business objective hay không.
        Không chỉ hỏi: ROC-AUC là bao nhiêu?
        Mà còn phải hỏi:
        model có leakage không;
        performance có ổn định theo thời gian không;
        kết quả có giải thích được không;
        có phù hợp với population mục tiêu không;
        có giúp nhận diện phân khúc rủi ro không;
        có thể dùng để ra quyết định không;
        có rủi ro sử dụng sai không.
6. Deployment
    Đưa kết quả vào sử dụng.
        Deployment không nhất thiết phải là triển khai API hoặc model production. Nó có thể là:
        dashboard;
        báo cáo quản trị;
        monitoring framework;
        SQL scripts;
        recommendation;
        scoring file;
        quy trình định kỳ;
        tài liệu hướng dẫn người sử dụng.

## Conclusion
Dự án đang làm dựa trên CRISP-DM, cụ thể như sau:

| CRISP-DM               | Project của em                                                          |
| ---------------------- | ----------------------------------------------------------------------- |
| Business Understanding | Business context, objectives, scope                                     |
| Data Understanding     | Dataset review, profiling, dictionary, target availability              |
| Data Preparation       | Cleaning, population, target, feature preparation                       |
| Modeling               | Baseline risk model                                                     |
| Evaluation             | Model evaluation, stability, business interpretation                    |
| Deployment             | SQL outputs, dashboard, report, recommendations                         |
| Phần mở rộng của dự án | Portfolio analytics và risk monitoring được tách thành workstream riêng |

=> Đã bổ sung vào README.md

# Question 1:
Default khác Charge Off?

## Status
Resolved

## Research
...

## Evidence
Lending Club Data Dictionary

## Conclusion
...

---

# Question 2:
Issue Date khác Loan Origination Date không?

## Status
Open

## Research
...

## Evidence
Lending Club Data Dictionary

## Conclusion
...