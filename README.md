# รายงานผลการทดลอง: การบริหารจัดการ Moodle LMS สำหรับผู้ดูแลระบบ (Lab 2)

| รหัสนักศึกษา | ชื่อ-นามสกุล |
|-------------|--------------|
| 67030011 | กฤตนัย บุญน้อย |

---

## ส่วนที่ 1: บันทึกผลการทดลอง

### บันทึกที่ 1: ตั้งค่าเริ่มต้นระบบ

ตั้งค่าภาษาและเขตเวลา (ภาษาไทย, Asia/Bangkok), Password policy, การลงทะเบียน (Manual accounts only), และ Automated backup (02:00 AM, Keep 7 days).

![ตั้งค่าเริ่มต้น](images/screencapture-localhost-cohort-index-php-2026-02-13-10_21_35.png)

---

### บันทึกที่ 2: สร้าง Category

สร้างโครงสร้าง Category ปีการศึกษา 2568, ภาคเรียนที่ 1, มัธยมศึกษาตอนต้น/ปลาย และชั้น ม.1–ม.6 พร้อม ID number ตามใบงาน

![Category](images/screencapture-localhost-cohort-index-php-2026-02-13-10_21_35.png)

---

### บันทึกที่ 3: Upload Cohorts

อัปโหลด Cohorts จากไฟล์ในโฟลเดอร์ cohorts/ (cohorts/cohorts.csv หรือ cohorts-secondary-school.csv) ผ่าน Site administration > Users > Cohorts > Upload cohorts

![Cohorts](images/screencapture-localhost-cohort-index-php-2026-02-13-10_21_35.png)

---

### บันทึกที่ 4: Upload Users (นักเรียน + ครู)

อัปโหลดผู้ใช้จาก users/students_m1-1.csv และ users/teachers_sample.csv ผ่าน Site administration > Users > Accounts > Upload users (Add new only, Force password change: Yes)

![Upload Users](images/screencapture-localhost-cohort-index-php-2026-02-13-10_21_35.png)

---

### บันทึกที่ 5: Upload Courses

อัปโหลดรายวิชาจากโฟลเดอร์ courses/ (เช่น courses/courses-secondary-school.csv) ผ่าน Site administration > Courses > Upload courses

![Upload Courses](images/screencapture-localhost-cohort-index-php-2026-02-13-10_21_35.png)

---

### บันทึกที่ 6: สร้างรายวิชาตัวอย่างและ Enroll

สร้างหรือเลือกรายวิชา (เช่น MA10101 คณิตศาสตร์พื้นฐาน 1) Enroll ครู และ Enroll นักเรียนผ่าน Cohort sync (Cohort: นักเรียน ม.1/1)

![Enroll](images/screencapture-localhost-cohort-index-php-2026-02-13-10_21_35.png)

---

### บันทึกที่ 7: เพิ่ม Activities

Login เป็น Teacher แล้วเพิ่ม Page (1.1 ชื่อหัวข้อที่ 1), Assignment (งานที่ 1), และ Quiz (แบบทดสอบก่อนเรียน 30 นาที Grade to pass 60%)

![Activities](images/screencapture-localhost-cohort-index-php-2026-02-13-10_21_35.png)

---

## ส่วนที่ 2: คำตอบท้ายการทดลอง (3 ข้อ)

### ข้อ 1: อธิบายความแตกต่างระหว่าง Category และ Cohort

```
Category ใช้จัดกลุ่มรายวิชา เป็นโครงสร้างแบบลำดับชั้น เช่น ปีการศึกษา ภาคเรียน ระดับชั้น ส่วน Cohort ใช้จัดกลุ่มผู้ใช้ เช่น นักเรียนห้องเดียวกัน ครูกลุ่มสาระ เมื่อลงทะเบียนเรียนแบบ Cohort sync ผู้ใช้ใน cohort นั้นจะถูกเพิ่มเข้าเรียนในรายวิชาอัตโนมัติตามที่ตั้งไว้
```

---

### ข้อ 2: เหตุใดควรใช้ Cohort sync

```
เพราะลงทะเบียนเป็นกลุ่มได้ครั้งเดียว ไม่ต้องเพิ่มทีละคน เมื่อมีนักเรียนใหม่เข้า cohort ก็จะได้เข้าเรียนในรายวิชาที่เปิด sync ไว้เอง ลดงานซ้ำและจัดการง่ายเวลามีหลายห้องหลายวิชา
```

---

### ข้อ 3: Best practices สำหรับ Category structure คือแบบใด

```
ควรตั้งชื่อให้สอดคล้องกัน ใช้ ID number เป็นรหัสประจำ category จำกัดความลึกไม่เกิน 3–4 ระดับ และออกแบบให้ขยายหรือเพิ่มระดับชั้นในปีถัดไปได้ไม่ยุ่งยาก
```

---