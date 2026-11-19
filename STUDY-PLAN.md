# Lộ trình Ôn thi & Học tập OutSystems (O11 & ODC)

> **MỤC TIÊU TRỌNG TÂM HIỆN TẠI**: **Associate Traditional Web Developer (OutSystems 11)**
> - **Thời gian dự kiến thi**: **Tháng 01/2027** (Lộ trình 8 tuần: Từ giữa tháng 11/2026 đến tháng 01/2027)
> - **Cấu trúc bài thi**: 50 câu trắc nghiệm (Multiple Choice) | Thời gian: 120 phút | Điểm đạt (Passing Score): **70% (35/50 câu)**
> - **Kho tài liệu nguồn**:
>   - Tài liệu chính thức O11: `docs-product/src/`
>   - Tổng hợp kiến thức & phân bổ câu hỏi Traditional Web: `exams/PhuVNSummary-of-Associate-Web-Developer-CertificationO11_20200328.xlsx`
>   - Bộ đề luyện tập Traditional Web (3 đề x 50 câu + Đáp án): `exams/OutSystems_Exam.xlsx`

---

## 1. Cấu trúc đề thi & Tỷ trọng câu hỏi (Associate Traditional Web Developer - O11)

Dựa trên bảng phân bổ chuẩn trong `exams/PhuVNSummary-of-Associate-Web-Developer-CertificationO11_20200328.xlsx` (Sheet `Overview`), đề thi gồm **50 câu** chia thành **5 nhóm chủ đề chính (14 tiểu mục)**:

| Nhóm chủ đề (Category) | Tiểu mục (Sub-topic) | Số câu | Tỷ trọng | Mức ưu tiên |
|---|---|---:|---:|---|
| **1. UI Design** *(13 câu — 26%)* | Screens and Widgets | 6 | 12% | Rất cao |
| | Web Blocks and Events | 3 | 6% | Cao |
| | RichWidgets (`List_Navigation`, `List_SortColumn`, Popup) | 2 | 4% | Trung bình |
| | Themes, Styles and Templates (Thứ tự ưu tiên CSS) | 2 | 4% | Trung bình |
| **2. Web Development in OutSystems** *(11 câu — 22%)* | General Development (Data Types, Modules, Dependencies) | 4 | 8% | Cao |
| | Screen Lifecycle (`Preparation`, `Submit`, `Ajax Submit`, `Navigate`, Viewstate) | 4 | 8% | Rất cao |
| | Security (Roles `Anonymous`/`Registered`, `Check<Role>Role`) | 3 | 6% | Cao |
| **3. Logic and Integrations** *(11 câu — 22%)* | Actions (`Preparation`, `Screen Action`, `Server Action`, `Function`) & Exceptions | 7 | 14% | Rất cao |
| | Input Validations (`Built-in` vs `Custom`, `Client & Server` vs `Server`, `Form.Valid`) | 3 | 6% | Cao |
| | Web Services (REST & SOAP, Callbacks `OnBeforeRequest`/`OnAfterResponse`) | 1 | 2% | Trung bình |
| **4. Aggregates & SQL Queries** *(8 câu — 16%)* | Designing Aggregates & SQL Queries (Joins, Filters, Sorting, Group By, Dynamic Sort) | 6 | 12% | Rất cao |
| | General Capabilities (`List`, `Count`, `Current`, `CurrentRowNumber`, `Empty`, `Length`) | 2 | 4% | Cao |
| **5. Data Modeling** *(7 câu — 14%)* | Entities, Static Entities & Data Types | 4 | 8% | Cao |
| | Data Relationships (1-1, 1-N, N-N) & Referential Integrity (`Protect`, `Delete`, `Ignore`) | 3 | 6% | Cao |
| **TỔNG CỘNG** | **14 Tiểu mục** | **50** | **100%** | **Mục tiêu: ≥ 40/50 (80%)** |

---

## 2. Kế hoạch 8 tuần tiến tới kỳ thi Tháng 01/2027

Lộ trình được chia theo từng tuần từ **18/11/2026** đến **Tháng 01/2027**, đi từ nền tảng Dữ liệu -> Truy vấn -> Logic/Exception -> Giao diện Traditional Web -> Vòng đời trang (Lifecycle/Ajax) -> Bảo mật & Tích hợp -> Giải đề thực chiến.

| Tuần | Thời gian | Giai đoạn & Chủ đề trọng tâm | Mục tiêu đầu ra (Milestone) |
|---|---|---|---|
| **Tuần 1** | 18/11 – 24/11/2026 | **Giai đoạn 1**: General Development & Data Modeling (11 câu - 22%) | Nắm chắc Data Types, Entity vs Static Entity vs Structure, 1-1 / 1-N / N-N, Delete Rules (`Protect`, `Delete`, `Ignore`). Hoàn thành quiz sheet `General Development` & `Data Modeling`. |
| **Tuần 2** | 25/11 – 01/12/2026 | **Giai đoạn 2**: Aggregates & SQL Queries (8 câu - 16%) | Nắm chắc 3 loại Join (`Only With`, `With or Without`, `With`), `Group By`, Calculated Attributes, `Count` vs `Length`, `SQL` node (`Expand Inline`, Output Entities/Structures). Hoàn thành quiz sheet `Aggregate&SQL`. |
| **Tuần 3** | 02/12 – 08/12/2026 | **Giai đoạn 3**: Actions, Exceptions, Session & Site Properties (7 câu - 14%) | Phân biệt `Preparation`, `Screen Action`, `Server Action`, `Function`. Cơ chế bubbling của Exception & Transaction Rollback. `Session Variable` vs `Site Property`. Hoàn thành quiz sheet `Action` & `Exception`. |
| **Tuần 4** | 09/12 – 15/12/2026 | **Giai đoạn 4**: Traditional Web Screen Lifecycle & Ajax (4 câu - 8%) | Nắm bản chất HTTP `GET` (`Navigate`) vs HTTP `POST` (`Submit`) vs `Ajax Submit` (`Ajax Refresh`). Hiểu rõ `Viewstate`, thứ tự chạy `Preparation` của Screen và Web Block. Hoàn thành quiz sheet `Screen Lifecycle`. |
| **Tuần 5** | 16/12 – 22/12/2026 | **Giai đoạn 5**: UI Design — Screens, Widgets & Input Validations (9 câu - 18%) | Thành thạo `Table Records`, `List Records`, `Form`, `Edit Record`, `Show Record`, `Combo Box`, `Button`/`Link`. Cơ chế `Client & Server` vs `Server` validation, `Form.Valid`. Hoàn thành quiz sheet `Screens and Widgets` & `Input Validations`. |
| **Tuần 6** | 23/12 – 29/12/2026 | **Giai đoạn 6**: Web Blocks, RichWidgets & Themes/CSS (7 câu - 14%) | Cơ chế giao tiếp `Web Block` -> Parent qua Event/Notify, quy tắc khởi tạo lại `Preparation` khi `Ajax Refresh`. Cách dùng `List_Navigation`, `List_SortColumn`, `Popup_Editor`. Thứ tự ưu tiên CSS (`Web Block` -> `Theme` -> `Screen`). Hoàn thành quiz sheet `Web Blocks`, `RichWidgets`, `Themes, Styles and Templates`. |
| **Tuần 7** | 30/12/2026 – 05/01/2027 | **Giai đoạn 7**: Security, Web Services (REST/SOAP) & Debugging (4 câu - 8%) + **Thi thử Đề 1 & Đề 2** | Nắm chắc `Anonymous` vs `Registered`, `Check<Role>Role`, REST/SOAP (`OnBeforeRequest`/`OnAfterResponse`), `Public Area` vs `Personal Area`. Giải `Đề số 1` và `Đề số 2` trong `exams/OutSystems_Exam.xlsx` (mục tiêu ≥ 38/50). |
| **Tuần 8** | 06/01/2027 – Ngày thi | **Giai đoạn 8**: Tổng ôn `weak-areas.md`, Giải **Đề số 3** & Chốt kiến thức trước ngày thi | Rà soát toàn bộ lỗi sai trong `weak-areas.md`, giải `Đề số 3` trong điều kiện bấm giờ 90–120 phút (mục tiêu ≥ 42/50), ôn nhanh các bảng so sánh bẫy đề thi. |

---

## 3. Lộ trình học chi tiết: Associate Traditional Web Developer (O11)

### Giai đoạn 1 — General Development & Data Modeling (11 câu — 22%)

#### Tài liệu nguồn (`docs-product/src/`)
* **Khái niệm nền tảng & Modules**:
  * `docs-product/src/onboarding/os-language-concepts.md`
  * `docs-product/src/getting-started/service-studio.md`
  * `docs-product/src/building-apps/reuse-and-refactor/expose-and-reuse.md` — Producer vs Consumer module, thuộc tính `Public`, `Expose Read Only`
* **Data Types & Structures**:
  * `docs-product/src/ref/data/data-types/available-data-types.md` — Basic data types, Default values (`0`, `""`, `False`, `#1900-01-01#`, `NullIdentifier()`)
  * `docs-product/src/ref/data/data-types/list.md` — `List`, `Record`
  * `docs-product/src/building-apps/data/structure-create-use.md` — `Structure` (lưu trong bộ nhớ, thuộc tính có thể là Basic, Compound, hoặc `List`)
* **Entities, Static Entities & Indexes**:
  * `docs-product/src/building-apps/data/modeling/entity.md`
  * `docs-product/src/building-apps/data/modeling/entity-create.md` — 6 Entity Actions tự động (`Create<Entity>`, `CreateOrUpdate<Entity>`, `Update<Entity>`, `Get<Entity>`, `Get<Entity>ForUpdate`, `Delete<Entity>`)
  * `docs-product/src/building-apps/data/modeling/entity-static.md` — `Static Entity` (chỉ có 1 Entity Action duy nhất là `Get<StaticEntity>`, 4 thuộc tính mặc định: `Id`, `Label`, `Order`, `Is_Active`)
  * `docs-product/src/building-apps/data/modeling/index-create.md` & `docs-product/src/ref/data/database/database-indexes.md`
* **Relationships & Delete Rules**:
  * `docs-product/src/building-apps/data/modeling/relationship/relationship-one-to-one.md` — 1-to-1 (Id của Entity phụ có kiểu là `<MasterEntity> Identifier`)
  * `docs-product/src/building-apps/data/modeling/relationship/relationship-one-to-many.md` — 1-to-Many (Reference attribute đặt ở phía Many)
  * `docs-product/src/building-apps/data/modeling/relationship/relationship-many-to-many.md` — Many-to-Many (Junction Entity trung gian)
  * `docs-product/src/building-apps/data/modeling/relationship/delete-rules.md` — `Protect`, `Delete`, `Ignore`

#### Trọng tâm & Bẫy đề thi (Exam Traps)
1. **Entity vs Structure**: Thuộc tính (Attribute) của `Entity` **bắt buộc** là Basic Data Type (hoặc `<Entity> Identifier`), không thể chứa `Structure` hay `List`. Ngược lại, thuộc tính của `Structure` có thể có kiểu là Basic, `Entity`, `Structure` khác, hoặc `List`.
2. **Primary Key (`Id`)**: OutSystems **không hỗ trợ Composite Primary Key** (khóa chính gồm nhiều cột). Mỗi Entity chỉ có duy nhất 1 khóa chính (`Id`), mặc định là `Long Integer` và `Is AutoNumber = Yes`.
3. **Delete Rule (`Protect` vs `Delete` vs `Ignore`)**:
   - `Protect`: Ngăn không cho xóa bản ghi cha nếu đang có bản ghi con tham chiếu tới (ném ra `Database Exception`).
   - `Delete`: Tự động xóa dây chuyền (Cascade Delete) các bản ghi con khi xóa bản ghi cha.
   - `Ignore`: Cho phép xóa bản ghi cha mà không xóa bản ghi con, nhưng **không tự động xóa constraint trên DB nếu cột khóa ngoại chưa đổi** — làm mất toàn vẹn tham chiếu (Referential Integrity) ở mức DB.

---

### Giai đoạn 2 — Aggregates & SQL Queries (8 câu — 16%)

#### Tài liệu nguồn (`docs-product/src/`)
* `docs-product/src/building-apps/data/operations/intro.md`
* `docs-product/src/building-apps/data/operations/fetch-display.md`
* `docs-product/src/building-apps/data/operations/filter-results.md`
* `docs-product/src/building-apps/data/operations/sort-aggregate.md`
* `docs-product/src/building-apps/data/operations/group-calculate.md`
* `docs-product/src/building-apps/data/operations/calculated-attribute-create.md`
* `docs-product/src/building-apps/data/operations/sql.md`
* `docs-product/src/building-apps/data/operations/expand-inline-parameters.md`
* `docs-product/src/ref/data/handling-data/queries/supported-join-types.md`
* `docs-product/src/ref/lang/auto/class-aggregate.md`
* `docs-product/src/ref/lang/auto/class-sql.md`

#### Trọng tâm & Bẫy đề thi (Exam Traps)
1. **3 loại Join trong Aggregate**:
   - `Only With` (`INNER JOIN`): Chỉ lấy các bản ghi tồn tại ở cả 2 bảng.
   - `With or Without` (`LEFT JOIN`): Lấy toàn bộ bảng bên trái, kể cả khi bảng bên phải không có dữ liệu khớp.
   - `With` (`FULL OUTER JOIN`): Lấy toàn bộ bản ghi của cả 2 bảng.
2. **Output của Aggregate**:
   - `List`: Danh sách các bản ghi trả về (bị giới hạn bởi thuộc tính `Max. Records` và tối ưu hóa các cột thực sự được sử dụng).
   - `Count`: Tổng số bản ghi trong DB thỏa mãn điều kiện Filter (**không** bị giới hạn bởi `Max. Records`).
   - `List.Length`: Số phần tử thực tế đang nằm trong `List` ở bộ nhớ.
   - `List.Current` và `List.CurrentRowNumber` (bắt đầu từ `0` đến `Length - 1`).
3. **Khi nào dùng `Group By` trong Aggregate**: Khi đã `Group By` hoặc dùng hàm tổng hợp (`Sum`, `Count`, `Max`, `Min`, `Average`), **chỉ các thuộc tính được Group hoặc Aggregated mới xuất hiện trong Output** của Aggregate (các cột khác bị ẩn đi).
4. **Aggregate vs SQL Tool**:
   - Luôn ưu tiên dùng **Aggregate** vì OutSystems tự động tối ưu câu truy vấn (chỉ lấy các cột thực tế được dùng trên UI/Logic).
   - Dùng **SQL** khi cần: câu lệnh `UPDATE`/`DELETE` hàng loạt (Bulk operations), Subqueries, `UNION`, từ khóa `IN` phức tạp, hoặc đặc thù theo hệ quản trị CSDL.
   - Trong `SQL` node: bắt buộc phải khai báo `Output Entities / Structures` khớp chính xác thứ tự và kiểu dữ liệu với mệnh đề `SELECT`.

---

### Giai đoạn 3 — Logic, Actions, Exceptions, Session & Site Properties (7+ câu)

#### Tài liệu nguồn (`docs-product/src/`)
* **Actions trong Traditional Web**:
  * `docs-product/src/building-apps/logic/action-web.md` — `Preparation`, `Screen Action`, `Server Action`
  * `docs-product/src/building-apps/logic/actions.md`
  * `docs-product/src/building-apps/logic/list-iterate.md` — `For Each`
  * `docs-product/src/ref/lang/auto/class-screen-action.md`
  * `docs-product/src/ref/lang/auto/class-server-action.md`
* **Session Variables & Site Properties**:
  * `docs-product/src/building-apps/data/session/session.md` — *Applies only to Traditional Web Apps*
  * `docs-product/src/building-apps/data/session/avoid-large-session-variables.md`
  * `docs-product/src/building-apps/data/site/site.md`
  * `docs-product/src/building-apps/data/site/avoid-site-property-updates.md`
  * `docs-product/src/ref/lang/auto/class-session-variable.md`
  * `docs-product/src/ref/lang/auto/class-site-property.md`
  * `docs-product/src/ref/lang/auto/class-on-session-start.md` & `docs-product/src/ref/lang/auto/class-on-begin-web-request.md`
* **Exception Handling**:
  * `docs-product/src/building-apps/handling-exceptions/intro.md`
  * `docs-product/src/building-apps/handling-exceptions/handling-mechanism.md`
  * `docs-product/src/ref/lang/auto/class-exception-handler.md`
  * `docs-product/src/ref/lang/auto/class-raise-exception.md`

#### Trọng tâm & Bẫy đề thi (Exam Traps)
1. **So sánh 3 loại Action trong Traditional Web**:
   - `Preparation`: Không có Input Parameter, không có Output Parameter, không có Local Variable riêng (dùng Local Variables và Input Parameters của Screen/Web Block). Chạy tự động trước khi render Screen/Web Block.
   - `Screen Action`: Có thể có **Input Parameters** và **Local Variables**, nhưng **không có Output Parameters**. Kết thúc bằng `End`, `Destination`, hoặc `Download`.
   - `Server Action`: Có Input Parameters, Local Variables, và **Output Parameters**. Nếu đặt thuộc tính `Function = Yes` thì chỉ được có **duy nhất 1 Output Parameter** và có thể gọi trực tiếp trong Expression.
2. **Session Variable vs Site Property**:
   - `Session Variable`: Lưu trạng thái theo từng phiên người dùng (per User Session), khởi tạo khi bắt đầu session (trước `OnSessionStart`), hủy khi logout hoặc hết hạn timeout.
   - `Site Property`: Biến toàn cục cấp Module/Tenant (dùng chung cho mọi user), có thể thay đổi giá trị lúc runtime trong **Service Center** mà không cần publish lại module. Không nên cập nhật bằng code thường xuyên vì gây cache invalidation.
3. **Cơ chế Exception Handling & `Abort Transaction`**:
   - Khi một Exception xảy ra, OutSystems tìm Handler **cụ thể nhất (most specific)** trong cùng Action trước (`Database Exception` / `Security Exception` / `User Exception` cụ thể ưu tiên hơn `All Exceptions`).
   - Nếu trong Action hiện tại không có Handler khớp, Exception sẽ **bubble up** lên Action gọi nó (ví dụ từ `Server Action` -> `Screen Action` -> `Global Exception Handler` của UI Flow -> `OnException` của Module).
   - Một Action flow có thể có nhiều nhánh `Exception Handler`, nhưng **không được có 2 Handler bắt cùng một loại Exception** trong cùng một Action.
   - Thuộc tính `Abort Transaction` trên `Exception Handler` mặc định là `Yes` (rollback mọi thay đổi DB trong request đó).

---

### Giai đoạn 4 — Traditional Web Screen Lifecycle, Request Methods & Viewstate (4 câu — 8%)

#### Tài liệu nguồn (`docs-product/src/`)
* `docs-product/src/building-apps/logic/action-web.md`
* `docs-product/src/building-apps/logic/screen-partial-refresh.md` — `Ajax Submit` và `Ajax Refresh`
* `docs-product/src/building-apps/ui/screens/scope-information.md` — Viewstate và Scope
* `docs-product/src/building-apps/data/download-file-browser.md` — `Download` node
* `docs-product/src/ref/lang/auto/class-ajax-refresh.md`
* `docs-product/src/ref/lang/auto/class-end.md`
* `docs-product/src/ref/lang/auto/class-go-to-destination.md`
* `docs-product/src/ref/lang/auto/class-download.md`
* `docs-product/src/ref/lang/auto/class-entry.md`

#### Trọng tâm & Bẫy đề thi (Exam Traps)
1. **3 thuộc tính `Method` của `Button` / `Link` trong Traditional Web**:
   - `Navigate` (HTTP `GET`): Chỉ dùng để chuyển sang một `Destination` là **Web Screen** (hoặc `External Site`). Không gửi dữ liệu Form (`POST`), không gọi được `Screen Action`.
   - `Submit` (HTTP `POST`): Gửi toàn bộ dữ liệu Form và Viewstate lên Server. Có thể trỏ tới một `Screen Action` hoặc một `Web Screen`.
     - Nếu `Screen Action` kết thúc bằng node `End`: **Preparation của màn hình hiện tại KHÔNG chạy lại**, nhưng toàn bộ cây Widget của màn hình được xây dựng và render lại từ Viewstate + giá trị biến mới.
     - Nếu `Screen Action` kết thúc bằng node `Destination` (kể cả trỏ về chính màn hình hiện tại): **Preparation của màn hình đích SẼ chạy lại**, các Local Variable của màn hình được reset về Default Value.
   - `Ajax Submit` (Asynchronous HTTP Request): Chỉ dùng khi `Destination` là một **Screen Action**.
     - Khi kết thúc bằng node `End`: Màn hình **không tự động cập nhật giao diện**, trừ những Widget (đã đặt tên `Name`) được chỉ định tường minh qua node **`Ajax Refresh`** trong `Screen Action`.
2. **Node `Download`**:
   - Dùng ở cuối nhánh của `Screen Action` (hoặc `Preparation`) để trả file về trình duyệt.
   - **Bắt buộc** nút gọi `Screen Action` chứa node `Download` phải dùng `Method = Submit` (nếu dùng `Ajax Submit` sẽ không tải được file).
3. **Viewstate**:
   - Viewstate lưu các Local Variables, Input Parameters và dữ liệu từ `Preparation` được tham chiếu trong các `Screen Actions`, gửi qua lại giữa Browser và Server trong mỗi request.

---

### Giai đoạn 5 — UI Design: Screens, Widgets & Input Validations (9 câu — 18%)

#### Tài liệu nguồn (`docs-product/src/`)
* **Traditional Web Screens & Widgets**:
  * `docs-product/src/ref/traditional-web/web-interfaces/designing-screens/intro.md`
  * `docs-product/src/ref/lang/auto/class-web-screen.md`
  * `docs-product/src/ref/lang/auto/class-table-records-widget.md` — `Table Records`
  * `docs-product/src/ref/lang/auto/class-list-records-widget.md` — `List Records`
  * `docs-product/src/ref/lang/auto/servicestudio-plugin-widgets-form.md` — `Form`
  * `docs-product/src/ref/lang/auto/class-edit-record-widget.md` — `Edit Record`
  * `docs-product/src/ref/lang/auto/class-show-record-widget.md` — `Show Record`
  * `docs-product/src/ref/lang/auto/class-combo-box-widget.md` — `Combo Box` (`Source Record List`, `Source Entity`, `Special List`, `Variable`)
  * `docs-product/src/ref/lang/auto/class-input-widget.md`, `class-input-password-widget.md`, `class-check-box-widget.md`, `class-radio-button-widget.md`, `class-expression-widget.md`, `class-container-widget.md`, `servicestudio-plugin-widgets-label.md`, `class-button-widget.md`, `class-link-widget.md`
* **Forms & Input Validations**:
  * `docs-product/src/building-apps/ui/forms/form-use.md`
  * `docs-product/src/building-apps/ui/forms/form-validate.md`
  * `docs-product/src/building-apps/ui/inputs/dropdown-combo.md`

#### Trọng tâm & Bẫy đề thi (Exam Traps)
1. **Cách hoạt động của `Form` Widget trong Traditional Web**:
   - `Form` có thuộc tính `Source Record` và tạo ra một biến `Form.Record` riêng chứa bản sao dữ liệu.
   - `Form.Record` **chỉ tự động copy dữ liệu từ `Source Record` trong lần đầu tải trang (trong `Preparation`)**. Nếu dùng `Ajax Refresh` lên `Form`, phải gán lại `Form.Record = <NewRecord>` trước khi gọi `Ajax Refresh`.
2. **Input Validations (`Validation` property của `Button`/`Link`)**:
   - **`None`**: Không thực hiện cả Built-in Validation (Mandatory, Data Type) lẫn Custom Validation.
   - **`Server`**: Gửi request lên Server; Server tự động chạy Built-in Validation trước khi vào `Screen Action` (nếu sai sẽ gán `Input.Valid = False` và `Form.Valid = False`), sau đó chạy tiếp code trong `Screen Action` (nơi lập trình viên viết Custom Validation và kiểm tra `Form.Valid`).
   - **`Client & Server`**: Chạy Built-in Validation **ngay tại trình duyệt (Client)** trước. Nếu không hợp lệ (ví dụ bỏ trống ô Mandatory hoặc nhập chữ vào ô Integer), trình duyệt chặn lại ngay và **KHÔNG gửi request lên Server**. Nếu hợp lệ ở Client thì mới gửi lên Server và Server chạy lại Built-in Validation + `Screen Action`.
3. **Thuộc tính `Escape Content` của `Expression` Widget**:
   - Mặc định `Escape Content = Yes` (mã hóa các ký tự HTML đặc biệt để chống XSS).
   - Nếu đặt `Escape Content = No`, nội dung chuỗi sẽ được trình duyệt render trực tiếp như mã HTML/JavaScript.

---

### Giai đoạn 6 — Web Blocks, RichWidgets & Themes/CSS (7 câu — 14%)

#### Tài liệu nguồn (`docs-product/src/`)
* **Web Blocks**:
  * `docs-product/src/ref/lang/auto/class-web-block.md`
  * `docs-product/src/ref/lang/auto/class-web-block-widget.md`
  * `docs-product/src/building-apps/ui/reuse/block-create-reuse.md`
  * `docs-product/src/building-apps/ui/reuse/block-communicate.md`
* **RichWidgets (Phân trang, Sắp xếp, Popup trong Traditional Web)**:
  * `docs-product/src/building-apps/ui/table/pagination-sorting.md`
  * `docs-product/src/building-apps/ui/inputs/popup.md`
  * `docs-product/src/building-apps/ui/patterns/web/layout/layout-popup.md`
  * `exams/PhuVNSummary-of-Associate-Web-Developer-CertificationO11_20200328.xlsx` (Sheet `RichWidgets` & `Web Blocks`)
* **Themes, Styles & Templates**:
  * `docs-product/src/building-apps/ui/look-feel/themes.md`
  * `docs-product/src/building-apps/ui/look-feel/css.md`
  * `docs-product/src/building-apps/ui/look-feel/styles-editor.md`
  * `docs-product/src/ref/lang/auto/class-theme.md`

#### Trọng tâm & Bẫy đề thi (Exam Traps)
1. **Quy tắc của `Web Block`**:
   - `Web Block` có thể có: `Input Parameters`, `Local Variables`, `Preparation`, `Screen Actions`, `Placeholders`, `Events` (hoặc cơ chế `Notify` trong O11 Traditional). **Không có Output Parameters**.
   - `Web Block` có thể đặt bên trong `Web Screen` hoặc `Web Block` khác, nhưng **không được tự chứa chính nó (no recursion)**.
   - Khi một `Web Block` trên màn hình được làm mới bằng **`Ajax Refresh`**, **`Preparation` của `Web Block` đó SẼ CHẠY LẠI**!
   - Khi `Web Block` kích hoạt một Event (hoặc `Notify`), Screen/Block cha bắt sự kiện đó bằng một **`Screen Action` của cha**.
2. **RichWidgets (`List_Navigation` & `List_SortColumn`)**:
   - Để phân trang cho `Table Records`: thuộc tính `Start Index` của `Table Records` đặt bằng `List_Navigation_GetStartIndex(<TableRecords>.Id, ...)` và thuộc tính `MaxRecordCount` của `List_Navigation` đặt bằng `<Aggregate>.Count` (không phải `.List.Length`).
   - Để sắp xếp động: dùng `List_SortColumn` trong Header Cell của `Table Records`, thêm **Dynamic Sort** trong Aggregate bằng hàm `List_SortColumn_GetOrderBy(<TableRecords>.Id, DefaultOrder: "...")`.
3. **Thứ tự tải và độ ưu tiên CSS (Style Sheet Precedence)** trong Traditional Web:
   - Thứ tự load file CSS từ thấp đến cao:
     1. **`Web Block` Style Sheet** (ưu tiên thấp nhất)
     2. **`Theme` Style Sheet** (bao gồm `Base Theme` trước rồi đến `Theme` hiện tại, cộng với `Grid`)
     3. **`Web Screen` / `Email` Style Sheet**
     4. **Inline Style** (`Extended Properties: style="..."` — ưu tiên cao nhất)
   - Nếu cùng một selector CSS được định nghĩa ở cả `Web Block`, `Theme`, và `Web Screen`, thì định nghĩa ở **`Web Screen`** sẽ ghi đè (override) các nơi kia!

---

### Giai đoạn 7 — Security, Web Services (REST/SOAP) & Debugging (4 câu — 8%)

#### Tài liệu nguồn (`docs-product/src/`)
* **Security & Roles**:
  * `docs-product/src/user-management/user-roles/intro.md`
  * `docs-product/src/user-management/user-roles/create-a-custom-role.md`
  * `docs-product/src/user-management/user-roles/validate-permissions.md`
* **Web Services (REST & SOAP)**:
  * `docs-product/src/integration-with-systems/rest/consume-rest-apis/consume-a-rest-api.md`
  * `docs-product/src/integration-with-systems/rest/consume-rest-apis/simple-customizations.md` — `OnBeforeRequest`, `OnAfterResponse`
  * `docs-product/src/integration-with-systems/rest/expose-rest-apis/expose-a-rest-api.md`
  * `docs-product/src/integration-with-systems/soap/consume/consume-web-service.md`
  * `docs-product/src/integration-with-systems/soap/expose/expose-soap-web-service.md`
* **Debugging & Personal Area**:
  * `docs-product/src/debugging-apps/intro.md`
  * `docs-product/src/debugging-apps/breakpoints.md`
  * `docs-product/src/debugging-apps/debug-producer-modules.md` — `Entry Module`
  * `docs-product/src/debugging-apps/public-personal-areas.md` — `Public Area` vs `Personal Area` (`Run and Debug in the Personal Area` - `F6`)

#### Trọng tâm & Bẫy đề thi (Exam Traps)
1. **Built-in Roles (`Anonymous` & `Registered`)**:
   - `Anonymous`: Mọi người dùng (kể cả chưa đăng nhập lẫn đã đăng nhập). Nếu tick chọn `Anonymous` trên Web Screen, `Registered` và tất cả Custom Roles cũng tự động được chọn (màn hình công khai).
   - `Registered`: Mọi người dùng đã đăng nhập hợp lệ. Khi tạo một Custom Role mới, mọi user có Custom Role đó mặc định cũng là `Registered`.
   - Mỗi Custom Role tự động sinh ra 3 Role Actions: `Check<Role>Role`, `Grant<Role>Role`, `Revoke<Role>Role`.
   - Nếu người dùng chưa đăng nhập truy cập màn hình không chọn `Anonymous`, hệ thống ném `Security Exception` (thường được bắt ở `Common\OnException` để chuyển hướng về màn hình `Login`).
2. **REST Callbacks (`OnBeforeRequest` & `OnAfterResponse`)**:
   - `OnBeforeRequest`: Chạy ngay trước khi gửi HTTP request đi, dùng để chỉnh sửa URL, Headers, hoặc Request Body (ví dụ gắn Auth Token).
   - `OnAfterResponse`: Chạy ngay sau khi nhận HTTP response về (trước khi OutSystems deserialize JSON thành Structure), dùng để ghi log, xử lý lỗi status code hoặc chỉnh sửa Response Text.
3. **Debugging Producer Module & Personal Area**:
   - Để debug một **Producer Module** khi thao tác từ giao diện của **Consumer Module**: mở Producer Module, đặt Breakpoint, chọn **`Entry Module`** là Consumer Module, rồi bấm `Start Debugging`.
   - **`Personal Area`** (`F6`): Cho phép lập trình viên chạy thử và debug thay đổi code/UI của riêng mình mà không ảnh hưởng đến `Public Area` của các lập trình viên khác. **Lưu ý**: `Personal Area` và `Public Area` **dùng chung cùng một Database** (nên thay đổi Data Model vẫn phải `1-Click Publish` lên `Public Area`).

---

## 4. Chiến lược Luyện đề & Sử dụng Kho Đề thi (`exams/`)

Trong thư mục `exams/`, toàn bộ các tài liệu trọng tâm cho kỳ thi **Associate Traditional Web Developer (O11)** đã có sẵn:

1. **`exams/PhuVNSummary-of-Associate-Web-Developer-CertificationO11_20200328.xlsx`**:
   - Gồm **17 sheets** chia theo đúng 14 tiểu mục của đề thi thật (`General Development`, `Screen Lifecycle`, `Security`, `Screens and Widgets`, `RichWidgets`, `Web Blocks`, `Action`, `Exception`, `Input Validations`, `Aggregate&SQL`, `Data Modeling`, `Themes, Styles and Templates`, `Webservice`, cùng sheet `Quiz.Refer`).
   - **Cách dùng**: Sau khi đọc xong mỗi Giai đoạn trong `docs-product/src/`, mở sheet tương ứng để ôn tóm tắt và làm câu hỏi theo chuyên đề.
2. **`exams/OutSystems_Exam.xlsx`**:
   - Gồm **3 đề thi thử đầy đủ** (`Đề số 1`, `Đề số 2`, `Đề số 3`) và sheet `Đáp án`.
   - **Cách dùng**: Dùng ở Tuần 7 và Tuần 8 để luyện đề tổng hợp. Khi luyện cùng AI (chế độ `exam-coach`), yêu cầu AI ra đề từng phần và **ẩn đáp án** cho đến khi bạn tự trả lời xong; mọi đáp án trong file Excel nếu có nghi ngờ sẽ được đối chiếu trực tiếp với `docs-product/src/`.
3. **`weak-areas.md` & `qa-knowledge.md`**:
   - Mọi câu trả lời sai trong quá trình làm quiz đều được ghi nhận tự động vào `weak-areas.md` kèm trích dẫn `docs-product/src/...` để ôn tập lại ở Tuần 8 trước ngày thi.

---

## 5. Bảng đối chiếu nhanh: Traditional Web vs Reactive Web (Tránh nhầm lẫn khi đọc Docs)

Vì bộ tài liệu `docs-product/src/` bao gồm cả **Traditional Web**, **Reactive Web** và **Mobile**, cần đặc biệt lưu ý bảng phân biệt sau để không chọn nhầm đáp án của Reactive khi thi Traditional Web:

| Khía cạnh | Traditional Web (Đúng cho kỳ thi này) | Reactive Web / Mobile (Không áp dụng) |
|---|---|---|
| **Khởi tạo dữ liệu màn hình** | **`Preparation`** action (chạy đồng bộ trên Server trước khi render HTML) | Aggregates / `Data Actions` chạy bất đồng bộ (`At start` / `Only on demand`) |
| **Action gắn với sự kiện UI** | **`Screen Action`** (chạy trên Server qua HTTP `Submit` hoặc `Ajax Submit`) | `Client Action` (chạy trên trình duyệt, có thể gọi `Server Action`) |
| **Cập nhật một phần màn hình** | Phải dùng `Method = Ajax Submit` kết hợp node **`Ajax Refresh`** (Widget phải có `Name`) | Giao diện tự động cập nhật (Reactive data binding) khi biến thay đổi |
| **Lưu trạng thái phiên người dùng** | **`Session Variable`** (lưu trên Server) | `Client Variable` (lưu trên trình duyệt) |
| **Thành phần UI tái sử dụng** | **`Web Block`** (`Preparation` chạy lại khi `Ajax Refresh`, giao tiếp qua `Event` / `Notify`) | `Block` (dùng `OnParametersChanged`, `Initialize`, `Ready`, `Render`, `Destroy`) |
| **Widgets hiển thị danh sách / bảng** | **`Table Records`**, **`List Records`**, **`Edit Record`**, **`Show Record`** | `Table`, `List`, `Form` |
| **Thư viện phân trang / sắp xếp / popup** | **`RichWidgets`** (`List_Navigation`, `List_SortColumn`, `Popup_Editor`) | OutSystems UI Patterns (`Pagination`, `OnSort`) |

---

## 6. Phụ lục: Các Lộ trình Chứng chỉ Khác (Tham khảo mở rộng)

*(Giữ lại để tra cứu khi chuyển tiếp lên các chứng chỉ tiếp theo sau tháng 01/2027)*

### 6.1. Associate Reactive Developer (O11)
* **Tài liệu chính**:
  - Data Modeling: `docs-product/src/building-apps/data/modeling/`
  - Reactive UI & Screen Lifecycle (`OnInitialize`, `OnReady`, `OnRender`, `OnDestroy`, `OnParametersChanged`): `docs-product/src/building-apps/ui/screens/screen-block-lifecycle-events.md`
  - Client Actions vs Server Actions & Client Variables: `docs-product/src/building-apps/logic/`
  - Bộ đề luyện tập 50 câu Reactive trong repo: `exams/exam-50-reactive.md` (`exams/Exam_50_questions_w_answer.pdf`)

### 6.2. Professional Traditional Web Developer (O11)
* **Điều kiện tiên quyết**: Đã đạt chứng chỉ **Associate Traditional Web Developer (O11)**.
* **Cấu trúc kỳ thi**: 40 câu trắc nghiệm | 120 phút | Điểm đạt: 70% (28/40).
* **Tài liệu trong repo**:
  - `exams/Professional Traditional Web Developer Certification Detail Sheet - EN.pdf`
  - `exams/Professional Traditional Web Developer Sample Exam - EN.pdf`
  - `exams/OutSystems_Exam_Traditionall_Pro.xlsx` & `exams/OutSystems_Exam_Traditionall_Pro.pdf`
  - Nội dung mở rộng: BPT (`docs-product/src/building-apps/processes/`), Timers (`docs-product/src/building-apps/timers/`), Architecture & 4-Layer Canvas (`docs-product/src/app-architecture/`), Performance & Security chuyên sâu (`docs-product/src/security/`).

### 6.3. Associate ODC Developer & O11-to-ODC Migration (`docs-odc/src/`)
* **Kiến trúc Cloud-native ODC**: `docs-odc/src/eap/app-architecture/recommended-architecture.md` (Apps & Libraries, Service Actions, Database Isolation).
* **ODC Workflows**: `docs-odc/src/eap/building-apps/workflows/`
* **External Logic (C# .NET trên AWS Lambda)**: `docs-odc/src/eap/building-apps/external-logic/`
* **Chuyển đổi O11 lên ODC**: `docs-product/src/migration-to-odc/` và `docs-odc/src/extending-o11-odc/`