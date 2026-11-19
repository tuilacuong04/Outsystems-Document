# Chỉ mục đề thi

Phân loại đã đối chiếu corpus. **Đọc file này trước khi dùng bất kỳ đề nào.**

## Mục tiêu hiện tại & Phân loại Track

Mục tiêu trọng tâm hiện tại (Dự kiến thi **Tháng 01/2027**): **Associate Traditional Web Developer (O11)**.

* **Đúng trọng tâm Associate Traditional Web (O11)**:
  * `PhuVNSummary-of-Associate-Web-Developer-CertificationO11_20200328.xlsx`: Tổng hợp kiến thức + câu hỏi theo đúng **14 tiểu mục (50 câu / 70% pass)** của kỳ thi Associate Traditional Web Developer (O11).
  * `OutSystems_Exam.xlsx`: 3 đề thi thử đầy đủ (`Đề số 1`, `Đề số 2`, `Đề số 3`) + sheet `Đáp án` thuộc track Traditional Web.
* **Mức nâng cao cùng track Traditional Web (Professional)**:
  * `Professional Traditional Web Developer Certification Detail Sheet - EN.pdf`, `Sample Exam - EN.pdf`, `OutSystems_Exam_Traditionall_Pro.*` (dùng để tham khảo nâng cao hoặc khi học lên Pro).
* **Khác track (Reactive Web - O11)**:
  * `Exam_50_questions_w_answer.pdf` (và bản text `exam-50-reactive.md`): Thuộc track **Associate Reactive Developer (O11)**. Chỉ dùng các câu hỏi chung nền tảng (Data Modeling, Aggregates, SQL, Exception Handling, Security Roles, REST); **không dùng** các câu hỏi đặc thù Reactive (`Client Variables`, `Client Actions`, `OnInitialize`/`OnReady`/`OnRender`/`OnDestroy`, `Data Actions`) khi ôn thi Traditional Web.

Bằng chứng phân biệt trong corpus (`docs-product/src/`):

* `docs-product/src/building-apps/data/session/session.md:23` — `"Applies only to Traditional Web Apps."` (`Session Variables` là trọng tâm của Traditional Web, trong khi Reactive dùng `Client Variables`).
* `docs-product/src/building-apps/logic/action-web.md:32` — `"Applies only to Traditional Web Apps."` (`Preparation`, `Screen Actions` là cốt lõi của Traditional Web).
* `RichWidgets` (`List_Navigation`, `List_SortColumn`, `Popup_Editor`), `Web Blocks`, `Ajax Submit` & `Ajax Refresh`, `Viewstate`, `Personal/Public Area`: đều là kiến thức bắt buộc trong kỳ thi **Associate Traditional Web Developer (O11)**.

## Bảng đối chiếu chuyển đổi giữa Traditional Web và Reactive Web

| Chủ đề | Dùng chung giữa Traditional Web & Reactive? |
|---|---|
| Data Modeling, Entities, Static Entities, Referential Integrity (`Protect`, `Delete`, `Ignore`) | **Có**, gần như nguyên vẹn |
| Aggregates và SQL Queries | **Có** |
| Exception Handling & Transaction Rollback | **Có** |
| Timers, BPT, Server Actions, Service Actions | **Có** |
| Web Services (REST, SOAP), Integration Studio | **Có** |
| Security, Roles (`Anonymous`, `Registered`, `Check<Role>Role`) | **Có** (phần lớn) |
| **Session Variables** | **Chỉ có ở Traditional Web** (Reactive dùng `Client Variables`) |
| **Preparation, Screen Action, Submit vs Ajax Submit, Ajax Refresh, Viewstate** | **Chỉ có ở Traditional Web** (Reactive dùng `OnInitialize`/`OnReady`/`OnRender`, `Client Action`, `Data Action`) |
| **Web Blocks, RichWidgets (`List_Navigation`, `List_SortColumn`), Table Records, List Records, Edit Record** | **Chỉ có ở Traditional Web** (Reactive dùng `Block`, `Table`, `List`, OutSystems UI) |
| **Thứ tự ưu tiên CSS (`Web Block` -> `Theme` -> `Web Screen`)** | **Đặc thù Traditional Web** |
| **Personal/Public Area debugging (`F6`)** | **Chỉ có ở Traditional Web** |

## Danh sách file

| File | Track | Nội dung | Đọc được? |
|---|---|---|---|
| `PhuVNSummary-of-Associate-Web-Developer-CertificationO11_20200328.xlsx` | **Traditional (Associate Web)** | **Tài liệu trọng tâm số 1**: 17 sheet theo đúng cấu trúc 50 câu (Overview + 14 chủ đề + Quiz.Refer) | **Được** |
| `OutSystems_Exam.xlsx` | **Traditional (Associate Web)** | **Tài liệu trọng tâm số 2**: 4 sheet (`Đáp án`, `Đề số 1`, `Đề số 2`, `Đề số 3`) | **Được** |
| `Exam_50_questions_w_answer.pdf` (`exam-50-reactive.md`) | Reactive (Associate) | 50 câu kèm đáp án đúng và Explanation (chỉ lọc phần Data/Aggregates/Logic/Exceptions/Security chung) | Được (`exam-50-reactive.md` & `Exam_50_pages/page01..50.jpg`) |
| `OutSystems_Exam_Traditionall_Pro.xlsx` | Traditional Pro | Đề luyện tập mức Professional Traditional Web | Được |
| `OutSystems_Exam_Traditionall_Pro(1).xlsx` | Traditional Pro | Bản sao gần trùng với file trên | Được |
| `OutSystems_Exam_Traditionall_Pro.pdf` | Traditional Pro | 11 trang đề Traditional Pro | Được |
| `Professional Traditional Web Developer Certification Detail Sheet - EN.pdf` | Traditional Pro | Objectives chính thức kèm trọng số của bậc Professional | Được |
| `Professional Traditional Web Developer Sample Exam - EN.pdf` | Traditional Pro | 15 câu mẫu bậc Professional, đáp án ở trang cuối | Được |

## Thông số kỳ thi chuẩn

* **Associate Traditional Web Developer (O11)** *(Mục tiêu Tháng 01/2027)*: **50 câu**, điểm đậu **70% (35/50)**, thời gian **120 phút (2 giờ)**. Nguồn: `PhuVNSummary-of-Associate-Web-Developer-CertificationO11_20200328.xlsx` (Sheet `Overview`).
* **Professional Traditional Web Developer (O11)**: **40 câu**, điểm đậu **70% (28/40)**, thời gian **120 phút (2 giờ)**. Nguồn: Detail Sheet, trang 1.
* **Associate Reactive Developer (O11)**: Thời gian **120 phút** (50 câu trong `exam-50-reactive.md`).

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
