# Chỉ mục đề thi

Phân loại đã đối chiếu corpus. **Đọc file này trước khi dùng bất kỳ đề nào.**

## Cảnh báo track

Mục tiêu của tôi là **Associate Developer (O11)**, track Reactive.
**7 trong 8 file thuộc track Traditional Web**, một track song song và đã cũ.
Ngoại lệ duy nhất là `Exam_50_questions_w_answer.pdf`: đã xác minh là **track
Reactive**, đúng đích. Đó là tài liệu ôn giá trị nhất hiện có.

Bằng chứng trong corpus:

* `docs-product/src/building-apps/data/session/session.md:23` — "Applies only to Traditional Web Apps." Session Variables xuất hiện dày đặc trong các đề này nhưng **không tồn tại trong Reactive** (Reactive dùng Client Variables).
* `docs-product/src/ref/apis/auto/httprequesthandler-api.final.md:34` — "Applies to Traditional Web apps only."
* RichWidgets, Web Blocks, Personal/Public Area, Themes and Styles: đều là khái niệm Traditional Web.

Detail Sheet còn xác nhận Traditional có nhánh Associate riêng: "To take the
Professional Traditional Web Developer Certification exam you must have obtained
the **Associate Traditional Web Developer** Certification."

## Phần nào dùng được

| Chủ đề | Chuyển sang Reactive được? |
|---|---|
| Data Modeling, Entities, Referential Integrity | Được, gần như nguyên vẹn |
| Aggregates và Advanced SQL | Được |
| Exception Handling | Được |
| Timers, BPT, Service Actions | Được |
| Web Services, Integration Studio | Được |
| Security, Roles | Phần lớn |
| CSS và HTML | Một phần |
| **Session Variables** | **Không.** Reactive dùng Client Variables |
| **Web Blocks, RichWidgets** | **Không.** Reactive dùng Blocks và OutSystems UI |
| **Screen Lifecycle** | **Không.** Cơ chế khác hẳn |
| **Themes, Styles, Templates** | **Không** |
| **Personal/Public Area debugging** | **Không** |

## Danh sách file

| File | Track | Nội dung | Đọc được? |
|---|---|---|---|
| `Exam_50_questions_w_answer.pdf` | **Reactive** | 50 câu kèm đáp án đúng và Explanation, trích từ một khoá học có Lecture | **Được.** Ảnh JPEG đã rút ra `Exam_50_pages/page01..50.jpg`, đọc trực tiếp |
| `OutSystems_Exam.xlsx` | Traditional | 4 sheet: Đáp án, Đề số 1/2/3 | Được |
| `OutSystems_Exam_Traditionall_Pro.xlsx` | Traditional Pro | cùng cấu trúc, gần trùng file trên | Được |
| `OutSystems_Exam_Traditionall_Pro(1).xlsx` | Traditional Pro | gần trùng bản không có `(1)` | Được |
| `OutSystems_Exam_Traditionall_Pro.pdf` | Traditional Pro | 11 trang | Được |
| `PhuVNSummary-of-Associate-Web-Developer-CertificationO11_20200328.xlsx` | Traditional (Associate Web) | 17 sheet theo chủ đề, ghi chú tổng hợp. Đề ngày 2020-03-28 | Được |
| `Professional Traditional Web Developer Certification Detail Sheet - EN.pdf` | Traditional Pro | **Objectives chính thức kèm trọng số** | Được |
| `Professional Traditional Web Developer Sample Exam - EN.pdf` | Traditional Pro | 15 câu mẫu, đáp án ở trang cuối | Được |

## Thứ đang thiếu và cần nhất

Detail Sheet cho Traditional Pro chứng minh OutSystems **có phát hành
"Certification Detail Sheet" riêng cho từng chứng chỉ**, kèm số câu, điểm đậu và
trọng số từng chủ đề.

Cần tìm bản **Associate Developer (O11) Certification Detail Sheet**. Đó là tài
liệu giá trị nhất cho mục tiêu hiện tại và hiện chưa có trong thư mục này.

## Con số

* Professional Traditional Web: 40 câu, đậu 70% (28/40), 2 giờ. Nguồn: Detail Sheet, trang 1.
* Associate Web Developer (Traditional, 2020): 50 câu, đậu 70% (35/50), 2 giờ. Nguồn: `PhuVNSummary...xlsx`.
* Associate Developer (O11, Reactive): 120 phút theo trang chính thức. **Số câu và điểm đậu chưa có nguồn.** Con số 50/70% ở trên là của kỳ thi Traditional, đừng mặc định áp sang.

## Cách đọc Exam_50_questions_w_answer.pdf

Mỗi trang là một ảnh JPEG nhúng sẵn (DCTDecode), không phải scan cần OCR. Đã rút
ra `Exam_50_pages/page01.jpg` đến `page50.jpg` bằng stdlib Python, không cài thêm
gì. Đọc thẳng file ảnh.

Bằng chứng thuộc track Reactive:

* `page25.jpg` dẫn "Lecture 3: Client Variable and Site Property".
* `docs-product/src/ref/lang/auto/class-client-variable.md:8` — "O11 supports Client Variables in Mobile and Reactive Web apps". Traditional Web dùng Session Variables, không có Client Variables.

Ảnh có sẵn đáp án đúng và phần Explanation. Khi dùng làm quiz phải che đáp án.

**Đã chép toàn bộ 50 câu sang `exam-50-reactive.md`.** Dùng file text đó, grep
được và cite được. Chỉ mở ảnh khi cần đối chiếu chi tiết hình mà mô tả chữ có thể
đã làm mất.
