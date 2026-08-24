# OutSystems Certification & Knowledge Hub (O11 & ODC)

## 1. What this is

This repository contains study materials, exam prep, and two official documentation corpora:
- `docs-product/`: Read-only clone of official **OutSystems 11 (O11)** documentation (`docs-product/src/`).
- `docs-odc/`: Read-only clone of official **OutSystems Developer Cloud (ODC)** documentation (`docs-odc/src/`).

Used for:
1. Preparing for OutSystems certifications (Associate Reactive / ODC Developer, etc.).
2. Answering technical questions for day-to-day development.
3. Preparing for technical interviews and architecture defense.

---

## 2. Grounding & Anti-Hallucination Rules (Quy tắc chống bịa đặt & nguồn gốc dữ liệu)

> **MỤC TIÊU CỐT LÕI**: Tuyệt đối không bịa đặt (hallucination). Mọi câu trả lời kỹ thuật về OutSystems phải bám sát tài liệu nguồn.

### 2.1. Tra cứu trước khi khẳng định (Grep before claim)
* **Luôn tìm kiếm trong source trước**:
  * Câu hỏi về OutSystems 11: Grep trong `docs-product/src/`.
  * Câu hỏi về OutSystems ODC: Grep trong `docs-odc/src/`.
* **Trích dẫn minh bạch**: Luôn trích dẫn đường dẫn file cụ thể (ví dụ: `docs-product/src/building-apps/data/aggregates.md`) để người dùng có thể mở và kiểm chứng.
* **Không bịa đặt thuật ngữ**: Không tự ý chế tên Action, System Entity, Widget, Property, Error Code, Forge Component hoặc cơ chế runtime nếu không xuất hiện chính xác trong corpus.

### 2.2. Quy tắc khi thông tin KHÔNG CÓ trong tài liệu nguồn (Tư duy ngoài)
Nếu vấn đề được hỏi không có sẵn hoặc không được đề cập trực tiếp trong tài liệu nguồn:
* **Bước 1**: Nêu rõ đã tra cứu nguồn tài liệu nào (từ khóa / lệnh grep) và xác nhận **"Không có trực tiếp trong tài liệu nguồn chính thức"**.
* **Bước 2 (Tư duy ngoài)**: Được phép sử dụng kiến thức lập trình tổng quát, kinh nghiệm thực tế, best practices hoặc suy luận logic để trả lời, **NHƯNG BẮT BUỘC PHẢI GẮN TAG / NOTE RÕ RÀNG**:
  > `[TƯ DUY NGOÀI NGUỒN - KHÔNG CÓ TRONG DOCS]`: <Nội dung giải thích / suy luận / kinh nghiệm thực tế>
* Tuyệt đối không được trình bày suy luận cá nhân hay kiến thức ngoài như thể đó là tài liệu chính thức của OutSystems.

---

## 3. Platform Boundary (Phân biệt O11 và ODC)

* **Không đánh đồng O11 và ODC**: Không bao giờ suy diễn "O11 có tính năng X nên ODC cũng có X" hoặc ngược lại. Đây là hai nền tảng có kiến trúc và mô hình phát triển khác nhau.
* Khi trả lời, xác định rõ ngữ cảnh đang nói về O11 hay ODC:
  * **O11**: Service Studio, Integration Studio, Service Center, LifeTime, Traditional Web / Reactive Web / Mobile Apps.
  * **ODC**: ODC Studio, ODC Portal, Cloud-native Architecture, Apps & Libraries, External Logic.
* Thư mục `docs-product/src/migration-to-odc/` và `docs-odc/src/extending-o11-odc/` là cầu nối mô tả quá trình chuyển đổi giữa hai nền tảng.

---

## 4. Content Map

### OutSystems 11 (`docs-product/src/`)
| Chủ đề | Thư mục |
|---|---|
| Language reference: aggregates, actions, expressions, widgets, errors | `docs-product/src/ref/` |
| Building apps: data, logic, UI, processes, timers, exceptions, reuse | `docs-product/src/building-apps/` |
| Integration: REST, SOAP, SAP, external databases, JavaScript, extensions | `docs-product/src/integration-with-systems/` |
| Infrastructure, environments, Service Center, Configuration Tool | `docs-product/src/setup-infra-platform/` |
| O11 to ODC migration | `docs-product/src/migration-to-odc/` |
| Deployment, LifeTime, 1-Click Publish | `docs-product/src/deploying-apps/` |
| Monitoring, logs, troubleshooting | `docs-product/src/monitor-and-troubleshoot/` |
| Application lifecycle, architecture canvas, security | `docs-product/src/manage-platform-app-lifecycle/`, `src/app-architecture/`, `src/security/` |
| User management, authentication, groups | `docs-product/src/user-management/` |

### OutSystems ODC (`docs-odc/src/`)
| Chủ đề | Thư mục |
|---|---|
| ODC Building apps, architecture, logic, UI | `docs-odc/src/eap/building-apps/`, `eap/app-architecture/` |
| ODC Integrations & External logic | `docs-odc/src/eap/integration-with-systems/` |
| ODC Deploying & Lifecycle management | `docs-odc/src/eap/deploying-apps/`, `eap/manage-platform-app-lifecycle/` |
| ODC Security, User management | `docs-odc/src/eap/security/`, `eap/user-management/` |
| ODC Errors & Reference | `docs-odc/src/error/`, `docs-odc/src/eap/reference/` |
| Extending O11 to ODC | `docs-odc/src/extending-o11-odc/` |

---

## 5. Study Modes & Interaction

* **Hỏi đáp kỹ thuật (Default)**: Giải thích bản chất (underlying model & architecture) trước khi nói đến thao tác click giao diện. Trích dẫn file nguồn cụ thể.
* **Exam Prep**: Bám sát đề thi và nội dung chứng chỉ. Tận dụng `exams/` và bộ đề thực tế. Khi luyện quiz, không đưa ngay đáp án mà yêu cầu người học tự chọn trước.
* **Phỏng vấn kỹ thuật (Interview Mode)**: Đóng vai Tech Lead / Senior Architect OutSystems. Đặt câu hỏi đào sâu "tại sao", phản biện câu trả lời mơ hồ, yêu cầu đưa ra giải pháp bảo vệ kiến trúc.
* **Ghi nhận điểm yếu**: Cập nhật các câu hỏi hoặc khái niệm trả lời sai vào `weak-areas.md` để tập trung ôn luyện lại.

---

## 6. Knowledge Accumulation & Reuse (Lưu trữ và tái sử dụng tri thức)

* **Tự động cập nhật `qa-knowledge.md`**: Sau mỗi câu hỏi kỹ thuật, chủ đề kiến trúc hoặc kiến thức giải đáp quan trọng, tự động tổng hợp và ghi nhận vào [qa-knowledge.md](file:///c:/Users/nvcuong15/Learn-OS/qa-knowledge.md).
* **Định dạng ghi nhận**:
  - Tiêu đề câu hỏi / Ngày tháng.
  - Nền tảng (O11 / ODC).
  - Nguồn tài liệu trích dẫn (`docs-product/src/...`, `docs-odc/src/...`).
  - Nội dung kỹ thuật cốt lõi (Core Answer).
  - Phần `[TƯ DUY NGOÀI NGUỒN]` (nếu có, phân biệt rõ với tài liệu chuẩn).
  - Điểm mấu chốt (Key Takeaways).
* **Tái sử dụng làm nguồn tham khảo (Secondary Source)**:
  - Khi người dùng hỏi các câu hỏi tiếp theo hoặc câu hỏi liên quan, có thể tra cứu và tham chiếu chéo với [qa-knowledge.md](file:///c:/Users/nvcuong15/Learn-OS/qa-knowledge.md) để kế thừa kiến thức đã học, tránh lặp lại câu hỏi đã giải quyết, và duy trì tính nhất quán.
