# รายงานผลการทดลอง: การบริหารจัดการ Moodle LMS สำหรับผู้ดูแลระบบ (Lab 2)

| รหัสนักศึกษา | ชื่อ-นามสกุล |
|-------------|--------------|
| 67030011 | กฤตนัย บุญน้อย |

**วัตถุประสงค์ (จากใบงาน):** เพื่อให้นักศึกษาสามารถ
1. อธิบายแนวทางการวางแผนโครงสร้างระบบ Moodle สำหรับสถานศึกษาได้
2. สร้างและจัดการ Category, Cohort อย่างเป็นระบบ
3. นำเข้าข้อมูลผู้ใช้จำนวนมากด้วย Bulk upload ได้
4. กำหนดค่าเริ่มต้นที่สำคัญสำหรับการใช้งานจริง
5. บริหารจัดการสิทธิ์และความปลอดภัยได้

ใบงานฉบับเต็มและขั้นตอนละเอียด: [Moodle-admin-Lab2.md](Moodle-admin-Lab2.md)

---

## ส่วนที่ 1: บันทึกผลการทดลอง

### บันทึกที่ 1: การตั้งค่าเริ่มต้นของระบบ

ตั้งค่าภาษา เขตเวลา Password Policy การลงทะเบียน และ Automated backup ตามใบงาน

![ภาษาและเขตเวลา](<Screenshot 2569-02-13 at 11.55.58.png>)

![Password Policy / การลงทะเบียน](<Screenshot 2569-02-13 at 11.56.30.png>)

![Automated backup](<Screenshot 2569-02-13 at 11.57.07.png>)

---

### บันทึกที่ 2: หน้า Category

Site administration > Courses > Manage courses and categories — โครงสร้างปีการศึกษา 2568, ภาคเรียนที่ 1, มัธยมต้น/ปลาย, ชั้น ม.1–ม.6

![Category](images/Screenshot%202569-02-13%20at%2010.13.32.png)

---

### บันทึกที่ 3: หน้า Cohorts ที่สร้างแล้ว

Upload cohorts จากไฟล์ `cohorts/cohorts.csv` (หรือ cohorts-secondary-school.csv)

![Cohorts](images/screencapture-localhost-cohort-index-php-2026-02-13-10_21_35.png)

---

### บันทึกที่ 4: ผลการ Upload Users (Student)

Upload จาก `users/students_m1-1.csv`

![Upload Users Student](<Screenshot 2569-02-13 at 10.25.05.png>)

---

### บันทึกที่ 5: ผลการ Upload Users (Teacher)

Upload จาก `users/teachers_sample.csv`

![Upload Users Teacher](<Screenshot 2569-02-13 at 10.28.05.png>)

---

### บันทึกที่ 6: หน้า Course หลัง Upload courses

เลือกไฟล์จากโฟลเดอร์ `courses/` (เช่น courses-secondary-school.csv)

![Courses](<Screenshot 2569-02-13 at 10.32.26.png>)

---

### บันทึกที่ 7: Enroll ครูและนักเรียน (Cohort sync)

![Enroll](<Screenshot 2569-02-13 at 10.58.02.png>)

---

### บันทึกที่ 8: หน้ารายวิชาที่ Enrol User แล้ว

![Course Enrolled](<Screenshot 2569-02-13 at 11.02.20.png>)

---

### บันทึกที่ 9: หน้ารายวิชาที่เพิ่ม Activities (Page, Assignment, Quiz)

![Course Activities](<Screenshot 2569-02-13 at 11.12.38.png>)

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
