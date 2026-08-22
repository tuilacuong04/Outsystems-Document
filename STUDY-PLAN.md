# Lộ trình học OutSystems 11

## Cảnh báo về nguồn

OutSystems **không công bố exam objectives chi tiết**. Trang chính thức chỉ nói
Associate Developer "focuses on the fundamentals of OutSystems 11 web and mobile
application development" (120 phút, $200 US).

Lộ trình dưới đây suy ra từ cấu trúc corpus `docs-product/src/`, không phải
objectives chính thức. Dùng nó làm bản đồ đọc tài liệu, không phải checklist thi.
Nguồn đề chính thức vẫn là OutSystems Training guided paths.

## Track chứng chỉ O11

Thứ tự đề xuất, Associate Developer là bắt buộc trước:

1. **Associate Developer (O11)** — mục tiêu trước mắt
2. **Web Developer Specialist (O11)**
3. **Front-end Developer Specialist (O11 và ODC)**
4. **Mobile Developer Specialist (O11 và ODC)**
5. **Security Specialist (O11 và ODC)**
6. **Architecture Specialist (O11)** — cần kinh nghiệm thực tế, để cuối

## Nguyên tắc đọc corpus

Corpus có 1663 file. Không đọc tuyến tính.

* `src/ref/lang/auto/` (200 file) là reference tự sinh cho từng property của từng widget. Đây là tài liệu **tra cứu**, không phải tài liệu đọc. Bỏ qua khi học, quay lại khi cần tra một property cụ thể.
* `src/ref/` (655 file) nói **cái gì**. `src/building-apps/` (429 file) nói **làm thế nào và tại sao**. Khi học khái niệm mới, đọc `building-apps/` trước, `ref/` sau.
* Ưu tiên hiểu mô hình trước click path. Đề thi và phỏng vấn hỏi "tại sao", không hỏi thứ tự bấm nút.

## Associate Developer (O11)

### Giai đoạn 0 — Định hướng

Đọc trước khi động vào bất cứ thứ gì khác.

* `src/onboarding/intro.md`
* `src/onboarding/os-language-concepts.md` — mô hình ngôn ngữ OutSystems
* `src/onboarding/dev-cheat-sheet.md`
* `src/getting-started/right-app.md` — chọn Reactive Web, Mobile hay Traditional
* `src/getting-started/service-studio.md`

### Giai đoạn 1 — Data model

Nền tảng của mọi câu hỏi khác. Sai ở đây thì sai dây chuyền.

* `src/building-apps/data/` (62 file) — Entities, attributes, relationships, indexes, static entities
* `src/ref/data/` (20 file) — reference về data types và database
* Trọng tâm: Entity vs Structure, Static Entity, referential integrity, Aggregate vs SQL query

### Giai đoạn 2 — UI và Screens

Mảng lớn nhất của cert này.

* `src/building-apps/ui/` (229 file) — Screens, Blocks, widgets, lists, forms, validation, layouts
* `src/ref/interfaces/` (6 file) — reference về interface elements
* Trọng tâm: Screen vs Block, input parameters, lifecycle events, form validation, OutSystems UI patterns

### Giai đoạn 3 — Logic

* `src/building-apps/logic/` (11 file)
* `src/ref/logic/` (8 file)
* Trọng tâm: Server Action vs Client Action, khi nào chạy ở đâu, flow elements, expressions, scope của variables

### Giai đoạn 4 — Exceptions và debugging

Hay bị bỏ qua nhưng thi có hỏi.

* `src/building-apps/handling-exceptions/` (4 file)
* `src/debugging-apps/` (8 file)
* Trọng tâm: exception handler scope, All Exceptions vs specific, rollback behavior

### Giai đoạn 5 — Integration cơ bản

Associate chỉ cần mức consume, không cần sâu.

* `src/integration-with-systems/rest/` — consume REST API
* Bỏ qua SAP, SOAP, external database ở giai đoạn này

### Giai đoạn 6 — Reuse, publish, security cơ bản

* `src/building-apps/reuse-and-refactor/` (9 file) — Public elements, producer/consumer
* `src/deploying-apps/` — 1-Click Publish, môi trường
* `src/security/` — roles, built-in security, cơ bản về OWASP

## Các cert sau

Chỉ ghi đường dẫn, chưa lập kế hoạch chi tiết. Lập khi tới lượt.

| Cert | Corpus chính |
|---|---|
| Web Developer Specialist | `src/building-apps/ui/`, `src/building-apps/processes/`, `src/building-apps/timers/`, `src/integration-with-systems/` |
| Front-end Developer Specialist | `src/building-apps/ui/`, `src/ref/ui-patterns/`, `src/building-apps/seo/` |
| Mobile Developer Specialist | `src/building-apps/mobile-best-practices/`, `src/integration-with-systems/mobile-plugins/`, `src/getting-started/create-mobile.md` |
| Security Specialist | `src/security/` (34 file), `src/user-management/` (24 file) |
| Architecture Specialist | `src/app-architecture/design-architecture/` (4-layer canvas), `src/manage-platform-app-lifecycle/` |
