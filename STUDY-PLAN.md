# Lộ trình học OutSystems (O11 & ODC)

## Cảnh báo về nguồn

OutSystems **không công bố exam objectives chi tiết công khai từng câu**. Trang chính thức chỉ đưa ra khung tổng quát về kỳ thi chứng chỉ.

Lộ trình dưới đây được xây dựng trực tiếp dựa trên cấu trúc của 2 bộ corpus tài liệu chính thức:
- **OutSystems 11**: `docs-product/src/` (1663 Markdown files)
- **OutSystems Developer Cloud (ODC)**: `docs-odc/src/eap/` (Hơn 3000 files & tài liệu cloud-native)

Dùng tài liệu này làm bản đồ đọc học thuật và tra cứu có hệ thống.

---

## 1. Track chứng chỉ tổng quát

### OutSystems 11 (O11 Track)
1. **Associate Reactive Developer (O11)** — Chứng chỉ nền tảng bắt buộc
2. **Web Developer Specialist (O11)** — Chuyên sâu Web truyền thống & Reactive
3. **Mobile Developer Specialist (O11)** — Offline data, plugins, mobile lifecycle
4. **Security Specialist (O11)** — Bảo mật, phân quyền, OWASP
5. **Architecture Specialist (O11)** — 4-Layer Canvas, module refactoring, governance

### OutSystems Developer Cloud (ODC Track)
1. **Associate ODC Developer** — Chứng chỉ nền tảng cho kiến trúc Cloud-Native OutSystems
2. **ODC Readiness / Migration Specialist** — Chuyển đổi từ O11 sang ODC
3. **ODC Security & Governance** — Identity, External IdPs, ODC Portal & Pipeline deployment

---

## 2. Nguyên tắc đọc Corpus hiệu quả

* **Không đọc tuyến tính**: Không đọc từ A-Z. Hãy đi theo luồng: **Kiến trúc -> Dữ liệu -> Logic -> UI -> Tích hợp -> Bảo mật & Vận hành**.
* **Đọc `building-apps/` trước, `ref/` sau**: `building-apps/` giải thích **tại sao & mô hình hoạt động**, `ref/` chỉ liệt kê danh mục thuộc tính.
* **Tư duy kiến trúc (Why > How)**: Tập trung hiểu bản chất (underlying model, lifecycle, transactions, rollback) thay vì học vẹt các bước click chuột.

---

## 3. Lộ trình chi tiết: Associate Reactive Developer (O11)

### Giai đoạn 0 — Định hướng & Khái niệm nền tảng
* `docs-product/src/onboarding/intro.md`
* `docs-product/src/onboarding/os-language-concepts.md` — Mô hình ngôn ngữ OutSystems
* `docs-product/src/getting-started/right-app.md` — Phân biệt Reactive Web, Mobile, Traditional Web
* `docs-product/src/getting-started/service-studio.md`

### Giai đoạn 1 — Data Model (Mô hình dữ liệu)
Nền tảng của toàn bộ ứng dụng. Sai ở đây sẽ dẫn đến sai logic và UI.
* `docs-product/src/building-apps/data/` — Entities, Attributes, Relationships (1-1, 1-N, N-N), Indexes, Static Entities
* `docs-product/src/ref/data/` — Data types, Database reference
* **Trọng tâm**: Entity vs Structure, Static Entity (Identifier/Is_Active), Referential Integrity (Protect, Delete, Ignore), Aggregate vs SQL Query, Record vs Record List.

### Giai đoạn 2 — UI & Reactive Screen Lifecycle
Mảng chiếm tỷ trọng điểm lớn nhất trong kỳ thi Reactive.
* `docs-product/src/building-apps/ui/` — Screens, Blocks, Widgets (Form, Table, List, Input, Dropdown), Validation, Layouts
* `docs-product/src/ref/interfaces/` — Reference về Interface elements
* **Trọng tâm**: Screen Lifecycle Events (`Initialize`, `Ready`, `Render`, `Destroy`), Data Fetching (`At start` vs `Only on demand`), Screen vs Block, Input/Output Parameters, Events kích hoạt từ Block lên Screen cha, OutSystems UI Patterns.

### Giai đoạn 3 — Logic & Flow Elements
* `docs-product/src/building-apps/logic/`
* `docs-product/src/ref/logic/`
* **Trọng tâm**: Server Actions vs Client Actions (khi nào chạy ở đâu, bảo mật dữ liệu trên client), Input/Output Parameters, Variables scope, For Each loop, Switch, Run Server Action.

### Giai đoạn 4 — Exception Handling & Debugging
* `docs-product/src/building-apps/handling-exceptions/`
* `docs-product/src/debugging-apps/`
* **Trọng tâm**: Exception Handler Hierarchy, All Exceptions vs User Exceptions vs Database Exceptions, Scope xử lý Exception (Action level vs Screen level vs Global), Transaction rollback behavior khi xảy ra lỗi.

### Giai đoạn 5 — Integration cơ bản (Consume REST)
* `docs-product/src/integration-with-systems/rest/` — Consume REST API, HTTP Methods (GET, POST), Headers, URL Parameters, JSON Serialization/Deserialization.

### Giai đoạn 6 — Reuse, Security & Deployment cơ bản
* `docs-product/src/building-apps/reuse-and-refactor/` — Public elements, Producer/Consumer modules, Dependencies
* `docs-product/src/security/` — Roles (CheckRole, GrantRole, RevokeRole), Screen Security, OWASP basics
* `docs-product/src/deploying-apps/` — 1-Click Publish, Service Center, Solution Pack

---

## 4. Lộ trình chi tiết: Associate ODC Developer (ODC)

ODC là nền tảng Cloud-native hiện đại của OutSystems, chạy trên Kubernetes/AWS Lambda với kiến trúc Microservices và phân tách Domain độc lập.

```
+-------------------------------------------------------------+
|                      ODC Portal                             |
|  - User Management & IdPs     - Deployments & Pipelines     |
|  - External Logic Config      - Monitoring & Logs           |
+-------------------------------------------------------------+
                              |
+-------------------------------------------------------------+
|                      ODC Studio                             |
|  +--------------------+             +--------------------+  |
|  |     ODC Apps       | --(Service)->|    ODC Libraries   |  |
|  | - UI & Screens     |    Actions   | - Stateless Logic  |  |
|  | - Workflows        |             | - UI Blocks        |  |
|  | - Domain Entities  |             | - Core Functions   |  |
|  +--------------------+             +--------------------+  |
|            |                                                |
|      External Logic (C# .NET on AWS Lambda)                 |
+-------------------------------------------------------------+
```

### Giai đoạn 0 — Tư duy Cloud-Native & Mô hình ODC
* `docs-odc/src/eap/onboarding/`
* `docs-odc/src/eap/getting-started/`
* `docs-odc/src/eap/app-architecture/recommended-architecture.md`
* **Trọng tâm**: 
  - Phân biệt ODC vs O11: Loại bỏ khái niệm Module/eSpace và 4-Layer Canvas cũ, thay bằng **Apps** (Domain-driven) và **Libraries** (Stateless, Reusable).
  - Không share database trực tiếp giữa các Apps (Database Isolation).

### Giai đoạn 1 — Data Model trong ODC
* `docs-odc/src/eap/building-apps/data/`
* **Trọng tâm**:
  - Entities trong ODC App: Public Read-only entities.
  - Cách chia sẻ dữ liệu giữa các Apps: Bắt buộc dùng **Service Actions** hoặc REST APIs thay vì Public Entity Read/Write trực tiếp như O11.
  - Tối ưu Aggregates và chỉ mục (Indexes) trên môi trường Cloud.

### Giai đoạn 2 — UI, Screens & Client Architecture (ODC)
* `docs-odc/src/eap/building-apps/ui/`
* **Trọng tâm**:
  - Screen Templates, Responsive Layouts trong ODC Studio.
  - Blocks và Events kích hoạt giữa các thành phần UI.
  - Xử lý trạng thái Client (Client Variables) và Data Fetching tự động.

### Giai đoạn 3 — Logic, Libraries & Service Actions
* `docs-odc/src/eap/building-apps/logic/`
* `docs-odc/src/eap/building-apps/libraries/`
* `docs-odc/src/eap/app-architecture/service-actions.md`
* `docs-odc/src/eap/app-architecture/reuse-elements.md`
* **Trọng tâm**:
  - **Libraries**: Chứa Stateless Logic, UI Patterns dùng chung. Không chứa Entities riêng.
  - **Service Actions**: Giao tiếp Loose-coupling giữa các Apps (chạy qua REST ngầm, độc lập vòng đời deploy).
  - Phân biệt rõ khi nào tạo Library và khi nào tạo App.

### Giai đoạn 4 — Workflows (Quy trình nghiệp vụ ODC)
ODC thay thế cơ chế BPT (Business Process Technology) của O11 bằng **Workflows**.
* `docs-odc/src/eap/building-apps/workflows/`
* **Trọng tâm**:
  - BPMN notation, Start/End Workflow, Decisions, Parallel execution.
  - **Human Activities**: Giao việc cho người dùng, trạng thái công việc, SLA & Timeout.
  - **Automatic Activities**: Xử lý ngầm tự động.
  - System Entities liên quan đến Workflow và theo dõi trạng thái.

### Giai đoạn 5 — Integration & External Logic (.NET C# trên Serverless)
ODC thay thế Integration Studio bằng cơ chế **External Logic** chạy trên AWS Lambda.
* `docs-odc/src/eap/integration-with-systems/consume_rest/` — Consume REST APIs
* `docs-odc/src/eap/integration-with-systems/external-databases/` — Kết nối DB ngoài
* `docs-odc/src/eap/building-apps/external-logic/`
* **Trọng tâm**:
  - Viết mã C# (.NET 8 / Standard), đóng gói thành NuGet package và tải lên ODC Portal.
  - Sử dụng External Logic trong ODC Studio như một Server Action chuẩn.

### Giai đoạn 6 — Security, User Management & ODC Portal Deployment
* `docs-odc/src/eap/security/`
* `docs-odc/src/eap/user-management/`
* `docs-odc/src/eap/deploying-apps/`
* `docs-odc/src/eap/manage-platform-app-lifecycle/`
* **Trọng tâm**:
  - ODC Identity: Phân biệt **End Users** (người dùng ứng dụng) và **IT Users** (Developer, Architect, Admin).
  - Tích hợp External Identity Providers (OpenID Connect, SAML 2.0, Azure AD).
  - **Deployment Pipelines** trong ODC Portal: 1-Click Publish lên Development, chuyển giao ứng dụng qua các Stages (Test, QA, Production) không làm gián đoạn hệ thống (Zero-downtime deployment).

---

## 5. Lộ trình chuyển đổi: O11 to ODC Migration Track

Dành cho Developer/Architect muốn nắm vững chiến lược di chuyển hệ thống từ O11 lên ODC:

* `docs-product/src/migration-to-odc/` — Hướng dẫn di chuyển từ phía O11
* `docs-odc/src/extending-o11-odc/` — Kết nối và mở rộng O11 song song với ODC
* **Các chủ đề cốt lõi**:
  1. Đánh giá kiến trúc hiện tại (Architecture Assessment & Code Readiness).
  2. Tái cấu trúc 4-Layer Canvas sang Apps & Libraries.
  3. Chuyển đổi Extensions (Integration Studio) sang External Logic (AWS Lambda).
  4. Chuyển đổi BPT sang ODC Workflows.
  5. Chiến lược di chuyển dữ liệu (Data Migration & Coexistence).

---

## 6. Bảng tổng hợp các Chứng chỉ Chuyên sâu (Specialist Tracks)

| Chứng chỉ | Nền tảng | Thư mục tài liệu chính |
|---|---|---|
| **Web Developer Specialist** | O11 | `docs-product/src/building-apps/ui/`, `src/building-apps/processes/`, `src/building-apps/timers/` |
| **Mobile Developer Specialist** | O11 & ODC | `docs-product/src/building-apps/mobile-best-practices/`, `docs-odc/src/eap/building-apps/mobile/` |
| **Security Specialist** | O11 & ODC | `docs-product/src/security/`, `docs-odc/src/eap/security/`, `src/user-management/` |
| **Architecture Specialist** | O11 | `docs-product/src/app-architecture/`, `src/manage-platform-app-lifecycle/` |
| **ODC Migration Specialist** | Cả hai | `docs-product/src/migration-to-odc/`, `docs-odc/src/extending-o11-odc/` |