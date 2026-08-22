# Đề 50 câu — Associate Developer (Reactive)

Chép tay từ `Exam_50_pages/page01..50.jpg`, rút từ `Exam_50_questions_w_answer.pdf`.
Track **Reactive**, đã xác minh qua `docs-product/src/ref/lang/auto/class-client-variable.md:8`.

Nguồn gốc là bài kiểm tra của một khoá học, không phải đề chính thức OutSystems.
Đáp án ghi ở đây là đáp án của khoá học đó. **Khi mâu thuẫn với corpus thì corpus thắng.**

Nhãn A/B/C/D do tôi đánh theo thứ tự hiển thị, bản gốc chỉ có radio button.

**Câu có hình:** phần `_Ảnh:_` là mô tả rút gọn, có thể thiếu chi tiết. Mỗi câu
đều kèm link ảnh gốc để đối chiếu.

**Cảnh báo khi quiz:** ảnh gốc hiển thị sẵn đáp án đúng và Explanation. Không đưa
link ảnh cho người học khi đang hỏi. Đọc ảnh rồi mô tả lại phần hình bằng chữ,
giấu đáp án.

---

### Question 1

In the below entity, a filter has to be added to check if the term "Rahul" is present anywhere in the SellOrder.CustomerName attribute, what should be the condition to be added?

_Ảnh: Aggregate có 2 Sources (SellOrder, OrderType), join "With or Without" trên SellOrder.OrderType = OrderType.Id._

- **A.** SellOrder.CustomerName like" %Rahul%"
- **B.** SellOrder.CustomerName like "Rahul"
- **C.** SellOrder.CustomerName = " %Rahul%"
- **D.** SellOrder.CustomerName = " Rahul"

**Đáp án: A**

_Ảnh gốc: [page01.jpg](Exam_50_pages/page01.jpg)_

---

### Question 2

Which of the following is true about the 'On Render' event?

- **A.** It triggered before onReady event.
- **B.** It runs every time when there is any change in the data on the screen.
- **C.** It runs only once after the page is ready.
- **D.** It is the first event to be triggered when we navigate from one screen to other.

**Đáp án: B**
Explanation: OnRender event triggers every time when there is any change in the data on the screen.
Lecture 4: Lifecycle of screen and web block and lifecycle events

_Ảnh gốc: [page02.jpg](Exam_50_pages/page02.jpg)_

---

### Question 3

What is true In respect of Data Action?

- **A.** We can not directly use its output in expression.
- **B.** It executed before Aggregates
- **C.** It can not be defined without at least 1 output parameter.
- **D.** It can only be called on Start.

**Đáp án: C**
Lecture 3: Client Variable and Site Property

_Ảnh gốc: [page03.jpg](Exam_50_pages/page03.jpg)_

---

### Question 4

What would be the execution order of data action and screen aggregates while loading any screen?

- **A.** Data action will be executed on start and aggregate will be on demand.
- **B.** Both will be executed asynchronously.
- **C.** Aggregate is first and then Data action
- **D.** Data Action is first and then Aggregate.

**Đáp án: B**
Explanation: Data action and Screen aggregates are async operations.
Lecture 4: Lifecycle of screen and web block and lifecycle events

_Ảnh gốc: [page04.jpg](Exam_50_pages/page04.jpg)_

---

### Question 5

A developer is debugging a client action in the scope of a screen. The debugger stops at the Start node of the action. Which of the following is false?

_Ảnh: flow Start → GetUserDetail → UserName (Assign) → End, breakpoint ở Start._

- **A.** He can inspect and view the variables in the GetUserDetail action.
- **B.** He can inspect and view the input variable of the action
- **C.** He can inspect and view the local variables of the screen
- **D.** He can hit the continue button.

**Đáp án: A**
Lecture 5: Debugging and Monitoring application

_Ảnh gốc: [page05.jpg](Exam_50_pages/page05.jpg)_

---

### Question 6

What should be the data type of the variable property in the below image?

_Ảnh: Entity UserDetail (Id, Name, Username, Password, Email, MobilePhone, External_Id, Creation_Date, Last_Login, Is_Active). Dropdown có List = GetUsers.List, Options Text = UserDetail.Name, Options Value = UserDetail.Id._

- **A.** Integer
- **B.** Long Integer
- **C.** User Identifier
- **D.** UserDetail Identifier

**Đáp án: D**
Explanation: Variable should be same data type of Option value, as option value is UserDetail ID hence Variable should also be UserDetail Identifier
Lecture 18: UI Design

_Ảnh gốc: [page06.jpg](Exam_50_pages/page06.jpg)_

---

### Question 7

The Dropdown1 will allow users to select a user. What should be set in the Options Text property to make sure that the names of the users appear in the dropdown?

_Ảnh: Dropdown1 có Variable = UserDetailId, List = GetUserDetails.List, Options Content = Text Only, Options Text và Options Value đang trống._

- **A.** GetUserDetails.List.UserDetail.Name
- **B.** Name
- **C.** UserDetail.Id
- **D.** UserDetail.Name

**Đáp án: D**

_Ảnh gốc: [page07.jpg](Exam_50_pages/page07.jpg)_

---

### Question 8

Consider there are two entities "SellOrder" and a static entity "OrderType", Both entities are related SellOrder has a reference attribute of type OrderTypeId. The IsMandatory property of this attribute is set to No. In aggregate if we drag and drop "SellOrder" what would happen?

- **A.** It would only add SellOrder Entity as a source.
- **B.** It would automatically add OrderType as well and will apply an "Only With" join between both entities.
- **C.** It would automatically add OrderType as well and will apply a "With" join between both entities.
- **D.** It would automatically add OrderType as well and will apply a "With or Without" join between both entities.

**Đáp án: D**
Lecture 7: Entities and Static entities

_Ảnh gốc: [page08.jpg](Exam_50_pages/page08.jpg)_

---

### Question 9

What would be the value of FinalValue in the below logic?

_Ảnh: Start → If (Value=5?) → True: Assign (FinalValue = Value; Value = Value+1) → End; False: End._

- **A.** The FinalValue will be the default value assigned to it.
- **B.** The value of FinalValue is always 5.
- **C.** FinalValue will be the default value or equal to the 'Value'.
- **D.** The value of the FinalValue will be greater than 5

**Đáp án: C**
Lecture 15: Logic flow and exception handling

_Ảnh gốc: [page09.jpg](Exam_50_pages/page09.jpg)_

---

### Question 10

A Screen contains a Form to collect User data. The Form has a Save Button with the On Click property set to a SaveOnClick Action, which sends the data to the server. The developer must ensure that the Action will not send the data to the server when the mandatory Customer data fields have not been filled in. What is the best way to do that?

- **A.** Set the Built-in validations of the Save button to Yes
- **B.** Add custom validations for all inputs. If one fails, set the Valid property of the Form to False
- **C.** Set the Built-in validations of the Save button to Yes and add an Exception Handler flow to handle invalid inputs
- **D.** Set the Built-in validations of the Save button to Yes and check if the Form's Valid property is True

**Đáp án: D**
Lecture 14: Forms and Built-In validation in Outsystems

_Ảnh gốc: [page10.jpg](Exam_50_pages/page10.jpg)_

---

### Question 11

Which of the following option should not use case of client variable?

- **A.** Password
- **B.** Username
- **C.** Search Keyword
- **D.** Filter Keyword

**Đáp án: A**
Explanation: Sensitive information should not be set as Client variable
Lecture 3: Client Variable and Site Property

_Ảnh gốc: [page11.jpg](Exam_50_pages/page11.jpg)_

---

### Question 12

To ensure that the incorrect data doesn't reach the server, what is to be done? Note: Built-In validation property is set to True?

- **A.** Appropriate logic should be written before sending data to the server.
- **B.** Form.valid property has to be checked before adding the data to the database.
- **C.** Nothing. Since the built-in validation is set to true.
- **D.** Form.valid property has to be set to false in the action flow.

**Đáp án: B**
Lecture 14: Forms and Built-In validation in Outsystems

_Ảnh gốc: [page12.jpg](Exam_50_pages/page12.jpg)_

---

### Question 13

Which of the following is not possible to fetch when screen is initializing?

- **A.** Advanced SQL in the screen level
- **B.** Aggregates inside the data action flow
- **C.** Aggregates in the screen level.
- **D.** Rest API in the data action flow.

**Đáp án: A**
Explanation: Advance SQL can only be used in server action or Inside Data Actions.
Lecture 4: Lifecycle of screen and web block and lifecycle events

_Ảnh gốc: [page13.jpg](Exam_50_pages/page13.jpg)_

---

### Question 14

Entities and Attributes are created in the database as..

- **A.** Indexes and Columns
- **B.** Tables and Columns
- **C.** Tables and Constraints
- **D.** List and Enumeration

**Đáp án: B**
Lecture 7: Entities and Static entities

_Ảnh gốc: [page14.jpg](Exam_50_pages/page14.jpg)_

---

### Question 15

When the built-in validation is set to true, in which condition form will be submitted?

- **A.** When the date filed is filled with an Integer value.
- **B.** When the Integer field, is filled with a Text value.
- **C.** When all non-mandatory fields are not filled.
- **D.** When some of the mandatory fields are not filled.

**Đáp án: C**
Explanation: When built-in validation is set to true in that case all the mandatory fields should be correctly filled.
Lecture 14: Forms and Built-In validation in Outsystems

_Ảnh gốc: [page15.jpg](Exam_50_pages/page15.jpg)_

---

### Question 16

Which of the option below is true when any of the mandatory input's valid property is false?

- **A.** Form.valid will be unchanged.
- **B.** The form's valid property will automatically be set to false.
- **C.** We would require to set form.valid property false explicitly.
- **D.** Form.valid will be true

**Đáp án: B**
Explanation: Valid runtime property: data type Boolean (Read Only) False. When required inputs are not present or the input value does not comply with the defined data type. You can override this property value when performing custom validations.
Lecture 14: Forms and Built-In validation in Outsystems

_Ảnh gốc: [page16.jpg](Exam_50_pages/page16.jpg)_

---

### Question 17

Which of the following is true?

- **A.** We need to call aggregates and DataAction explicitly
- **B.** DataAction executes before the aggregates.
- **C.** There is no order of aggregates and DataAction execution
- **D.** Aggregates and DataActions execute in the same order as they are defined on the screen.

**Đáp án: C**
Lecture 4: Lifecycle of screen and web block and lifecycle events

_Ảnh gốc: [page17.jpg](Exam_50_pages/page17.jpg)_

---

### Question 18

Which of the following is true with respect to the below screen setting?

_Ảnh: Screen "User Detail". Name = UserDetail, Description trống, Title trống, **Public = Yes**. Mục Roles có 4 dòng, **tất cả đều tick**: Anonymous, Registered, EndUser, OSMDb_React_Admin._

- **A.** Only users with valid credentials can access this screen.
- **B.** None Of Above
- **C.** No authentication is required.
- **D.** Only users registered with the application can access this screen.

**Đáp án: C**
Explanation: As the Anonymous role is checked then there is no authentication required to access this screen, anyone on the web can access this screen.

_Ảnh gốc: [page18.jpg](Exam_50_pages/page18.jpg)_

---

### Question 19

"HI" is an Integer and "Hello" is a Text. If we pass the value of "Hi = 132" then According to the below image, what message it would show to the user?

_Ảnh: Start → **Switch** với 4 nhánh theo đúng thứ tự này:_

```
Switch
  nhánh 1  (Hi < 200)   -> Assign  "Hello < 200"   ┐
  nhánh 2  (Hi > 100)   -> Assign  "Hello > 100"   ├─> Message "Hello" -> End
  nhánh 3  (Hi = 132)   -> Assign  "Hello = 132"   ┘
  Otherwise             -> Assign  "Hello > ?"     -> Message "Hello" -> End
```

_Thứ tự nhánh là chi tiết quyết định: Switch xét từ trên xuống, nhánh khớp đầu tiên thắng._

- **A.** Hello > ?
- **B.** Hello = 132
- **C.** Hello > 100
- **D.** Hello < 200

**Đáp án: D**
Lecture 15: Logic flow and exception handling

_Ảnh gốc: [page19.jpg](Exam_50_pages/page19.jpg)_

---

### Question 20

While using bootstrap to add data to the entity, which of the following is correct?

_Ảnh: Entity **UserDetail** có các attribute: Id, Name, Email, Phone (danh sách bị cắt ở dưới)._
_Bảng tính nguồn có 4 cột: A = `Name`, B = `Email`, C = `Phone Number`, D = `Company`._
_Dòng dữ liệu: John | john@example.com | 1-541-754-30 | example_

_Chi tiết quyết định: entity có attribute tên `Phone`, còn cột trong file tên `Phone Number` — không khớp tên nên bị bỏ qua. `Company` không tồn tại trong entity._

- **A.** Name and Email will be part of the bootstrap while phone number and company would be ignored.
- **B.** Name, Email, and Phone number will be part of the bootstrap, the company would be ignored.
- **C.** All attributes would be part of bootstrap and it will add one column named "Company" in entity
- **D.** All Attributes are not matching hence bootstrapping would be failed.

**Đáp án: A**
Lecture 7: Entities and Static entities

_Ảnh gốc: [page20.jpg](Exam_50_pages/page20.jpg)_

---

### Question 21

A client action is set to its public and function property set to "NO", This action can be….

- **A.** Can be called from a Server Action of the same module.
- **B.** Can be called in a Screen Action of the same module.
- **C.** Can be called from the server action of other modules.
- **D.** Can be used in an Expression.

**Đáp án: B**
Explanation:
1. If the public property of a client action is set to YES, then we can call the action from the Client or Screen action of other module.
2. If the Function property is set to YES, then we can call the action from the expression editor.
3. A Client action can not be called from Server action.
Lecture 13: Client and Server action in Outsystems

_Ảnh gốc: [page21.jpg](Exam_50_pages/page21.jpg)_

---

### Question 22

Which of the blow option is true in respect of site properties?

- **A.** It can be defined as an Entity Identifier data type.
- **B.** It can only be changed on runtime
- **C.** We can not change it on runtime.
- **D.** It can only be modified from the service studio.

**Đáp án: A**
Explanation: The datatype of site property can be all the basic data types except binary and entity identifier.
Lecture 3: Client Variable and Site Property

_Lưu ý: Explanation của khoá học tự mâu thuẫn với đáp án A (nói "except ... entity identifier" nhưng chọn A). Đối chiếu corpus trước khi tin, xem thêm Question 25._

_Ảnh gốc: [page22.jpg](Exam_50_pages/page22.jpg)_

---

### Question 23

In aggregate, it is sorted based on CreationDate. What would happen on adding another sort condition on the Name attribute?

- **A.** The second sort condition would replace the first sort condition
- **B.** It is not possible to have more than one sort condition
- **C.** The records with the same value in the 'Created Date' attribute, will be sorted based on 'Name' attribute
- **D.** Records with the same value in the 'Name' attribute will be sorted based on the 'Created Date' attribute.

**Đáp án: C**
Explanation: First It will apply the sorting on CreatedDate and then it will sort the rows based on Name which has same createdDate

_Ảnh gốc: [page23.jpg](Exam_50_pages/page23.jpg)_

---

### Question 24

Which of the below option is true regarding CreateOrUpdate entity action?

- **A.** It returns Id as well as a record that is updated or created.
- **B.** It returns only the ID of the created or updated record.
- **C.** It returns Id only when a new record is created.
- **D.** It only returns Id only when NullIdentifier() in Id is passed while calling the action.

**Đáp án: B**
Lecture 7: Entities and Static entities

_Ảnh gốc: [page24.jpg](Exam_50_pages/page24.jpg)_

---

### Question 25

Which of the following can be set as a datatype of site property?

- **A.** Structure
- **B.** Binary
- **C.** Entity Identifier
- **D.** List

**Đáp án: C**
Explanation: Only basic data types (Except Binary) and Entity Identifiers can be set as data type of Site Property.
Lecture 3: Client Variable and Site Property

_Ảnh gốc: [page25.jpg](Exam_50_pages/page25.jpg)_

---

### Question 26

What is true in respect of the web blocks?

- **A.** It requires an event to fire every time when there is any change in the web block to reflect it on its instance.
- **B.** The change has to be done manually on each instance of the block.
- **C.** An event is required to notify all the other instances about the changes made in the block.
- **D.** Changes made in the web block will automatically reflect in all its instances.

**Đáp án: D**
Lecture 19: Understanding of Web Block

_Lưu ý thuật ngữ: khoá học gọi là "web block", trong Reactive tài liệu OutSystems gọi là **Block**._

_Ảnh gốc: [page26.jpg](Exam_50_pages/page26.jpg)_

---

### Question 27

In the client action, we are passing the value of count = 5, what would be the value of the Increment?

_Ảnh: flow trong ClientAction (input Count, output Increment):_

```
Start -> If (Count > 0?)
           False -> End
           True  -> Assign  Increment = Increment + 1
                    -> Assign  Count = Count + 1
                    -> quay ngược lại node If
```

_Chi tiết quyết định: nhánh True gán Count = Count **+** 1 rồi quay lại điều kiện Count > 0, nên điều kiện không bao giờ sai._

- **A.** 10
- **B.** Exception
- **C.** Infinite Loop
- **D.** 5

**Đáp án: C**
Lecture 15: Logic flow and exception handling

_Ảnh gốc: [page27.jpg](Exam_50_pages/page27.jpg)_

---

### Question 28

What is the default data type of ID attribute in Entity?

- **A.** Text
- **B.** Integer
- **C.** LongInteger
- **D.** Entity Identifier

**Đáp án: C**
Explanation: Default data type of Entity Identifier is Long Integer, And available data types are Integer, LongInteger, Text, and EntityIdentifier
Lecture 7: Entities and Static entities

_Ảnh gốc: [page28.jpg](Exam_50_pages/page28.jpg)_

---

### Question 29

What would be the output of the below aggregate?

_Ảnh: Aggregate `GetProducts`, Sources chỉ có entity `Item`. Bảng kết quả có 4 cột: Name, Description, VAT, Price (Cooler | Desert Cooler | 5 | 50 và TV | LED TV | 7 | 100). Đang mở menu ngữ cảnh trên cột **Price**, các mục: Group by Price, Sum, **Average** (đang bôi đậm), Max, Min, Count, Filter…, Sort A→Z, Sort Z→A, Hide, Hide others, New attribute._

- **A.** No Record
- **B.** All attributes of the Item entity with Average Price attribute
- **C.** Only Average price attribute.
- **D.** All attributes of the Item Entity

**Đáp án: C**

_Ảnh gốc: [page29.jpg](Exam_50_pages/page29.jpg)_

---

### Question 30

The image shows a Pagination widget. There are no error messages in Service Studio, but when the user selects a new page (in the Pagination widget) the results do not change on the Table. What is the reason for that behavior?

_Ảnh, ba khung:_
_1. Widget `NavigationPagination`: Source Block = NavigationPagination, StartIndex = StartIndex, MaxRecords = MaxRecords, TotalCount = GetUserDetails.Count. Events: OnNavigate, Handler = OnPaginationNavigate, NewStartIndex = NewStartIndex._
_2. Flow `OnPaginationNavigate`: Start → Assign `StartIndex = NewStartIndex` → End. **Không có node Refresh Data.**_
_3. Aggregate `GetUserDetails`: Start Index = StartIndex, Max. Records = MaxRecords, Fetch = At start, Sources = UserDetail, Filters = SearchKeyword = ""._

- **A.** The Table is not being refreshed on the OnNavigate Action.
- **B.** The GetUserDetail Aggregate is not being refreshed in the OnNavigate Action.
- **C.** The Max. Records of the Aggregate should be equal to the total number of user data in the database.
- **D.** GetUserData aggregate should be set as a Fetch on demand.

**Đáp án: B**
Lecture 26: Fetch data using aggregates and Joins in Aggregate

_Ảnh gốc: [page30.jpg](Exam_50_pages/page30.jpg)_

---

### Question 31

When does the below Action return 0?

_Ảnh: Start → **Switch** với 3 nhánh theo thứ tự:_

```
Switch
  nhánh 1  (Input < 0)  -> Assign  output = -2 * input   ┐
  nhánh 2  (Input > 0)  -> Assign  Output = Input        ├─> End
  Otherwise             -> Assign  Output = 0            ┘
```

- **A.** When input is grater than zero
- **B.** When input is zero
- **C.** Never
- **D.** When Input is less than zero

**Đáp án: B**
Lecture 15: Logic flow and exception handling

_Ảnh gốc: [page31.jpg](Exam_50_pages/page31.jpg)_

---

### Question 32

Consider there are two entities "SellOrder" and a static entity "OrderType", Both entities are related SellOrder has a reference attribute of type OrderTypeId. The IsMandatory property of this attribute is set to "YES". In aggregate if we drag and drop "SellOrder" what would happen?

- **A.** It would only add SellOrder Entity
- **B.** It would automatically add OrderType as well and will apply a "With" join between both entities.
- **C.** It would automatically add OrderType as well and will apply a "With or Without" join between both entities.
- **D.** It would automatically add OrderType as well and will apply an "Only With" join between both entities.

**Đáp án: D**
Lecture 7: Entities and Static entities

_Cặp đôi với Question 8: IsMandatory = No cho "With or Without", IsMandatory = Yes cho "Only With". Đây là kiểu câu hỏi bản lề, học cả cặp._

_Ảnh gốc: [page32.jpg](Exam_50_pages/page32.jpg)_

---

### Question 33

Which of the below options can not be used inside an expression?

- **A.** The output of data action on the screen.
- **B.** The output of server action.
- **C.** Both output of server action and output of data action on the screen.
- **D.** addition formula of two local integer variables present on the screen.

**Đáp án: B**
Explanation: We can not use the output of server action directly inside an expression because expression is a client side widget that can not access server side property directly.
Lecture 18: UI Design

_Ảnh gốc: [page33.jpg](Exam_50_pages/page33.jpg)_

---

### Question 34

Regarding Blocks in OutSystems reactive apps, which of the following options is correct?

- **A.** Blocks can only be instantiated on Screens
- **B.** Blocks can be instantiated on Client Actions on the Screen.
- **C.** Blocks can be instantiated on Screens and external HTML pages, using a special HTML tag.
- **D.** Blocks can be instantiated on Screens and other Blocks

**Đáp án: D**
Lecture 19: Understanding of Web Block

_Ảnh gốc: [page34.jpg](Exam_50_pages/page34.jpg)_

---

### Question 35

What is required for One-to-One mapping between the below mentioned two entities?

_Ảnh: hai entity._
_`User`: Id, Name, Username, Password, Email, MobilePhone, External_Id, Creation_Date, Last_Login, Is_Active._
_`UserDetail`: Id, MaritalStatus, Salary, FatherName._

- **A.** Create a new attribute in the user entity and set its data type as UserDetailIdentifier
- **B.** Change the Identifier Datatype of the UserDetail entity to UserIdentifier.
- **C.** Move all the attributes from UserDetail entity to user entity.
- **D.** Create a new attribute in UserDetail and set its data type as UserIdentifier

**Đáp án: B**
Lecture 8: Entity Mapping

_Ảnh gốc: [page35.jpg](Exam_50_pages/page35.jpg)_

---

### Question 36

What is the default data type of the Id attribute of **Static Entity**?

- **A.** Text
- **B.** Entity Identifier
- **C.** Integer
- **D.** LongInteger

**Đáp án: C**
Explanation: The default data type of the normal entity is Long Integer, and the Default data type of the Static entity is **Integer**.
Available Data types for
1. Normal Entity: Integer, LongInteger (Default), Text, Entity Identifier
2. Static Entity: Integer (Default), LongInteger, Text, Static Entity Identifier

_Cặp đôi với Question 28. Entity thường mặc định LongInteger, Static Entity mặc định Integer._

_Ảnh gốc: [page36.jpg](Exam_50_pages/page36.jpg)_

---

### Question 37

A Form has a button with the Built-in Validations property set to Yes. Which validations are automatically performed when a user clicks the button?

- **A.** Check if the mandatory fields are filled and if the data submitted by the user matches the data type expected in the input fields.
- **B.** Check if the mandatory fields are filled in and if the non-mandatory fields that are later used in the logic, are also filled in.
- **C.** Check if the mandatory fields are filled and if the data submitted by the user matches the data type of the Form's data source.
- **D.** It will check if all the mandatory fields are filled.

**Đáp án: A**
Lecture 14: Forms and Built-In validation in Outsystems

_Bẫy: C nói "data type of the Form's data source", A nói "data type expected in the input fields". Khác nhau ở chỗ validation dựa vào input field chứ không phải data source._

_Ảnh gốc: [page37.jpg](Exam_50_pages/page37.jpg)_

---

### Question 38

When an OnParameterChange event will trigger?

- **A.** When the parent of block changes the value of any of block's input parameter.
- **B.** When the block changes the value of any input parameter of itself.
- **C.** If the value of a Block's Input Parameters changes inside a Client Action of the Block.
- **D.** When the parent of block or block itself changes the value of block's input parameter.

**Đáp án: A**
Explanation: OnParameterChange will only trigger when any of block's input parameter value is changed from parent of block. Parent can be both screen or other block.
Lecture 19: Understanding of Web Block

_Ảnh gốc: [page38.jpg](Exam_50_pages/page38.jpg)_

---

### Question 39

Choose the correct option associated with the below ERD?

_Ảnh: hai entity nối chéo nhau._
_`OrderType` (static entity): Id, Label, Order, Is_Active, **SellOrderId**._
_`SellOrder` (entity thường): Id, CustomerName, Date, Value, **OrderType**._

- **A.** No mapping can be formed between both entities.
- **B.** OrderType should be a normal entity.
- **C.** SellOrder can not have OrderType attribute
- **D.** OrderType Can not have SellOrderId attribute

**Đáp án: D**
Explanation: A normal Entity's identifier can not be referenced in a Static entity.
Lecture 7: Entities and Static entities

_Ảnh gốc: [page39.jpg](Exam_50_pages/page39.jpg)_

---

### Question 40

What is wrong in respect of button onClick property?

- **A.** It can be set to any external URL
- **B.** It can be set to any screen action
- **C.** It can be set to any Server Action.
- **D.** It can be set to any screen.

**Đáp án: C**
Explanation: We can not set a server action, API action, and Aggregate refresh on Button's or Link's onclick property
Lecture 18: UI Design

_Ảnh gốc: [page40.jpg](Exam_50_pages/page40.jpg)_

---

### Question 41

While creating an entity if we define "Expose Read Only" as YES, in that case...

_Ảnh: entity `Fruit` (Id, Name, Color, Price, IsActive). Thuộc tính entity: Name = Fruit, Description = Get Fruites, Public = No, **Expose Read Only = Yes** (được khoanh đỏ)._
_Ảnh phần Explanation: danh sách entity action của Fruit gồm CreateFruit, CreateOrUpdateFruit, UpdateFruit, **GetFruit** (bôi vàng), GetFruitForUpdate, DeleteFruit._

- **A.** Fruit entity's actions except "GetFruit" will not be available to consumer modules.
- **B.** Fruit Entity would only be available to the same application module for reference.
- **C.** It will not be accessible from API
- **D.** Fruit Entity can not be referenced.

**Đáp án: A**
Explanation: If Expose Read Only is defined "Yes" then only GetFruit action will be available to consumer modules
Lecture 7: Entities and Static entities

_Ảnh gốc: [page41.jpg](Exam_50_pages/page41.jpg)_

---

### Question 42

"Vivek" is a user of the ERP application and only has the StoreAdmin Role assigned to him. Which of the following options is correct?

- **A.** Vivek has access to Screens with the Registered Role checked.
- **B.** Vivek only has access to Screens that have the StoreAdmin Role checked.
- **C.** Vivek has access to Screens that have the StoreAdmin Role checked, but not to Screens with the Registered Role checked.
- **D.** Vivek does not have access to Screens with the Anonymous Role checked.

**Đáp án: A**
Lecture 23: Understand role based security

_Điểm bản lề: mọi user đã đăng nhập đều ngầm có Registered role, không cần gán tay._

_Ảnh gốc: [page42.jpg](Exam_50_pages/page42.jpg)_

---

### Question 43

Consider the following Action. What happens if the GetUserDetail Aggregate does not return any record?

_Ảnh: flow chính và hai exception handler riêng._

```
Start -> GetUserDetails (Aggregate)
      -> If (GetUserDetails.List.Empty?)
           True  -> Raise DataException
           False -> Assign Output = Bye -> End

Exception handler  AllExceptions  -> Assign Output = Hi    -> End
Exception handler  DataException  -> Assign Output = Hello -> End
```

_Chi tiết quyết định: có hai handler cùng lúc. Handler cụ thể (DataException) thắng handler tổng quát (AllExceptions)._

- **A.** It will return Hello to the consumer.
- **B.** It will return Bye to the consumer.
- **C.** It will return Hi
- **D.** It will return an exception message.

**Đáp án: A**
Lecture 15: Logic flow and exception handling

_Ảnh gốc: [page43.jpg](Exam_50_pages/page43.jpg)_

---

### Question 44

What will happen when we set the function property of public server action as "Yes"?

- **A.** It can only be used inside expression.
- **B.** It can only be defined with only one output parameter.
- **C.** It can only be defined with only one input parameter
- **D.** We will not be able to use this server action from other module.

**Đáp án: B**
Explanation: If function property is set to "Yes", there should be exactly 1 mandatory output parameter.
Lecture 13: Client and Server action in Outsystems

_Ảnh gốc: [page44.jpg](Exam_50_pages/page44.jpg)_

---

### Question 45

If there are 2 entities, User and UserDetail. If one UserDetail belongs to only one User, how can we create the one-to-One mapping between them?

- **A.** Make the datatype the primary key of the User entity to UserDetail Identifier.
- **B.** Make the Datatype of the primary key of the UserDetail entity to User Identifier.
- **C.** Add a new attribute in User and make its data type as UserDetail Identifier.
- **D.** Add a new attribute in UserDetail and make its data type User Identifier.

**Đáp án: B**
Explanation: If the Primary Key of one Entity is the primary key of another entity then it forms One to One Mapping.
Lecture 8: Entity Mapping

_Ảnh gốc: [page45.jpg](Exam_50_pages/page45.jpg)_

---

### Question 46

If there are 2 entities, User and Group. If one User belongs to only one Group, how can we create the one-to-many mapping between them?

- **A.** Create only with join in between them.
- **B.** Create a new entity User_Group and put the identifier of both user and group in the newly created entity.
- **C.** Create an attribute in User with datatype as Group identifier.
- **D.** Create an attribute in Group with datatype as the User identifier.

**Đáp án: C**
Explanation: One To many mapping always forms between two entities when the identifier of one entity is used as a foreign key in another.
Lecture 8: Entity Mapping

_Cặp đôi với Question 45: One-to-One đổi kiểu primary key, One-to-Many thêm attribute mới. Phân biệt hai cái này là điểm bản lề._

_Ảnh gốc: [page46.jpg](Exam_50_pages/page46.jpg)_

---

### Question 47

What are the default attributes of Static Entity?

- **A.** Id, Name, Order, IsActive
- **B.** Id, Label, IsActive
- **C.** Id, Label
- **D.** Id, Label, Order, IsActive

**Đáp án: D**

_Bẫy: A dùng `Name` thay vì `Label`._

_Ảnh gốc: [page47.jpg](Exam_50_pages/page47.jpg)_

---

### Question 48

On which type of variable we can apply foreach loop?

- **A.** Structure
- **B.** Integer
- **C.** Entity Identifier
- **D.** List

**Đáp án: D**
Explanation: In outsystems, for each loop can be applied only on List type of variables
Lecture 18: UI Design

_Ảnh gốc: [page48.jpg](Exam_50_pages/page48.jpg)_

---

### Question 49

While debugging a server action, which of the following can't possible?

- **A.** Inspect and view the local variables.
- **B.** Inspect and view the server actions.
- **C.** Inspect and view the input parameters.
- **D.** Inspect and view the widgets.

**Đáp án: D**
Lecture 5: Debugging and Monitoring application

_Ảnh gốc: [page49.jpg](Exam_50_pages/page49.jpg)_

---

### Question 50

What is wrong in respect of LINK widget onClick event?

- **A.** It can be set to any screen in scope.
- **B.** It can be set to current screen.
- **C.** It can be set to external URL
- **D.** It can be set to public client action.

**Đáp án: D**
Explanation: Link's and Button OnClick event property are same. OnClick property of button and link can be set to 1. Current Screen 2. Previous Screen 3. Screen's Client action 4. External URL

_Cặp đôi với Question 40. Chỉ nhận Screen's Client action, không nhận public client action hay Server Action._

_Ảnh gốc: [page50.jpg](Exam_50_pages/page50.jpg)_

---

## Phân bố chủ đề

Đếm theo nhãn Lecture mà khoá học gán. 42/50 câu có nhãn.
Đây là **proxy gần đúng cho trọng số**, không phải objectives chính thức của OutSystems.

| Lecture | Số câu |
|---|---|
| Lecture 7 | 8 |
| Lecture 15 | 5 |
| Lecture 14 | 5 |
| Lecture 4 | 4 |
| Lecture 3 | 4 |
| Lecture 18 | 4 |
| Lecture 19 | 3 |
| Lecture 8 | 3 |
| Lecture 5 | 2 |
| Lecture 13 | 2 |
| Lecture 26 | 1 |
| Lecture 23 | 1 |
