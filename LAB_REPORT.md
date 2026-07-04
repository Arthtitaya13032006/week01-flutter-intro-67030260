## 📋 ส่วนที่ 3: แบบบันทึกผลการทดลอง (Lab Report)

### 3.1 ผลการติดตั้ง Flutter

<img width="931" height="353" alt="image" src="https://github.com/user-attachments/assets/78902265-18be-44d8-a873-e8498c7a4d06" />

| รายการ | เวอร์ชัน |
|--------|---------|
| Flutter Version | 3.44.4 |
| Dart Version | 3.12.2 |
| Android SDK Version | 36.0.0 |


### 3.2 Screenshot ของ Flutter App


<img width="1918" height="910" alt="image" src="https://github.com/user-attachments/assets/3a699cc7-5033-4c34-a7c2-f987a041403c" />



**Widget Tree ที่วาด:**

<img width="1367" height="672" alt="image" src="https://github.com/user-attachments/assets/eaebbbc6-f1fb-4430-9491-8fab96fd6cb1" />


### 3.3 การเปรียบเทียบ Hot Reload vs Hot Restart

| รายการ | Hot Reload (r) | Hot Restart (R) |
|---|---|---|
| ความเร็ว |เร็วมาก|ช้ากว่า (เริ่มใหม่ทั้งแอป)|
| State ถูก Reset? |ไม่รีเซ็ต|รีเซ็ตทั้งหมด|
| ใช้เมื่อไหร่ |แก้ UI / หน้าตา |แก้ logic หรือเริ่มระบบใหม่|

### 3.4 ผลการทดลอง Prompt Engineering

**Prompt แบบ Simple:**
```
เขียนแอป To-Do ด้วย Flutter
```

**Prompt แบบ Detailed:**
```
เขียนแอป To-Do ด้วย Flutter โดยใช้ StatefulWidget
- เพิ่มรายการงานได้
- ลบรายการงานได้
- ทำเครื่องหมายว่างานเสร็จแล้วได้
- ใช้ Material Design 3
- ใช้ ListView.builder
- เขียนคอมเมนต์อธิบายโค้ด
```

**ความแตกต่างของผลลัพธ์:**
```
Prompt แบบ Simple ให้ผลลัพธ์ที่เป็นโค้ดพื้นฐาน รายละเอียดไม่มาก และอาจต้องแก้ไขเพิ่มเติมเอง ส่วน Prompt แบบ Detailed ให้ผลลัพธ์ที่ตรงตามความต้องการมากกว่า มีโครงสร้างครบ ใช้งานได้ทันที และลดเวลาในการแก้ไขโค้ด
```

### 3.5 Screenshot ของ AI Chat App


<img width="1918" height="911" alt="image" src="https://github.com/user-attachments/assets/d533d463-5f1b-4c9e-a7c7-f5abfe60df83" />



---

## 📝 ส่วนที่ 4: คำถามท้ายบท (Review Questions)

ตอบคำถามต่อไปนี้ลงในใบงาน:

**1.** Flutter แตกต่างจาก React Native อย่างไรในแง่ของ Rendering Engine?

```
คำตอบ: Flutter จะวาด UI เองทั้งหมดด้วย engine ของมัน (Skia) เลย หน้าตาจะเหมือนกันทุกเครื่อง แต่ React Native จะใช้ UI ของเครื่องนั้น ๆ (iOS/Android) ผ่านตัวเชื่อม JavaScript
```

**2.** อธิบายความแตกต่างระหว่าง `StatelessWidget` และ `StatefulWidget` พร้อมยกตัวอย่างการใช้งานที่เหมาะสมของแต่ละประเภท

```
คำตอบ: StatelessWidget คือหน้าที่ไม่มีการเปลี่ยนแปลง ใช้แสดงผลเฉย ๆ เช่น ข้อความ ปุ่มนิ่ง ๆ
       StatefulWidget คือหน้าที่มีการเปลี่ยนค่าได้ เช่น กดปุ่มแล้วตัวเลขเพิ่ม หรือข้อมูลที่อัปเดตตลอด
```

**3.** เหตุใดจึงห้าม Commit API Key ลง Git Repository? และมีวิธีจัดการ API Key อย่างปลอดภัยอย่างไรบ้าง?

```
คำตอบ: เพราะ API Key เป็นของสำคัญ ถ้าหลุดไปคนอื่นเอาไปใช้ได้ อาจโดนคิดเงินหรือโดนเอาไปใช้งานผิด ๆ ได้ วิธีที่ปลอดภัยคือเก็บไว้ในไฟล์ .env หรือใช้ตัวแปร environment แล้วใส่ .gitignore ไม่ให้มันขึ้น Git
```

**4.** Hot Reload ทำงานอย่างไร และมีข้อจำกัดอะไรบ้าง?

```
คำตอบ: Hot Reload คือการอัปเดตโค้ดเข้าไปในแอปที่กำลังรันอยู่เลย ทำให้เห็นผลไวมาก แต่ข้อจำกัดคือมันไม่รีเซ็ตทุกอย่าง เช่นค่า state บางอย่าง หรือโค้ดที่เกี่ยวกับ initState อาจต้องใช้ Hot Restart แทน
```

**5.** จากการทดลองใช้ Gemini API ในวันนี้ คุณคิดว่าสามารถนำ AI มาช่วยพัฒนาแอปในแง่ไหนได้บ้าง? ยกตัวอย่าง Use Case 3 อย่าง

```
คำตอบ: 
1. ทำ chatbot ในแอปไว้ตอบคำถามผู้ใช้
2. แนะนำสินค้า/คอนเทนต์ตามที่ผู้ใช้ชอบ
3. ช่วยแปลภาษาหรือสรุปข้อมูลให้อัตโนมัติ
```