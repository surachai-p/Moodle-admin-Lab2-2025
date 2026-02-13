# การตั้งค่า Lab 2 ให้พร้อมทำต่อ

## สิ่งที่ต้องมี

- **Moodle** จาก Lab 1 ต้องรันอยู่ที่ `http://localhost`  
  - โฟลเดอร์ Lab 1 อยู่ระดับบนของโฟลเดอร์นี้ (โฟลเดอร์แม่ของ `Moodle-admin-Lab2-2025`)  
  - ถ้ายังไม่รัน: เปิด Terminal แล้ว `cd` ไปที่โฟลเดอร์โปรเจกต์นี้ (Lab 1) แล้วรัน `docker-compose up -d`

## การเข้าใช้งาน Moodle

| รายการ | ค่า |
|--------|-----|
| URL | http://localhost |
| Username | `admin` |
| Password | `Admin@2025!` |

(ถ้าเคยเปลี่ยนรหัสผ่าน admin ไว้ ให้ใช้รหัสที่ตั้งเอง)

## โครงสร้างไฟล์ใน Repo นี้

| ไฟล์ | การใช้ |
|------|--------|
| `Moodle-admin-Lab2.md` | ใบงานและขั้นตอนทำ Lab 2 ทั้งหมด |
| `cohorts/cohorts.csv` | Upload Cohorts (มัธยม) ตามข้อ 3.1 |
| `cohorts/cohorts-secondary-school.csv` | Upload Cohorts (มัธยม) ใน Moodle |
| `cohorts/cohorts-vocational.csv` | Upload Cohorts (อาชีวศึกษา) |
| `courses/courses-secondary-school.csv` | Upload Courses มัธยม |
| `courses/courses-vocational.csv` | Upload Courses อาชีวศึกษา |
| `users/students_m1-1.csv` | Upload Users (นักเรียน ม.1/1) |
| `users/students_sample.csv` | Upload Users (นักเรียน) ตัวอย่าง |
| `users/teachers_sample.csv` | Upload Users (ครู) |
| `csv-templates/` | ไฟล์ตัวอย่าง CSV ตามที่ใบงานอ้าง |
| `content/content-page-1.1-MA10101.txt` | เนื้อหาตัวอย่างสำหรับ Page ใน Moodle |

ทำตามขั้นตอนใน **Moodle-admin-Lab2.md** โดยใช้ไฟล์ CSV ข้างต้น (บันทึกเป็น UTF-8 อยู่แล้ว)

## เมื่อทำ Lab 2 เสร็จแล้ว (ส่ง PR)

1. บันทึกผล/รูปตามที่ใบงานกำหนด (ใน `Moodle-admin-Lab2.md` หรือไฟล์ที่กำหนด)
2. Commit และ push ไปที่ fork ของคุณ (รันคำสั่งภายในโฟลเดอร์ `Moodle-admin-Lab2-2025`):
   ```bash
   cd Moodle-admin-Lab2-2025
   git add .
   git commit -m "ผลการทำ Lab 2"
   git push origin main
   ```
3. เปิด GitHub ที่ repo **Kritternai/Moodle-admin-Lab2-2025** แล้วกด **Compare & pull request** เพื่อส่ง PR ไปยัง repo ต้นทาง (ที่ fork มา)

---

**สรุป:** ใช้ Moodle ที่รันจาก Lab 1 (localhost) + ทำตาม `Moodle-admin-Lab2.md` + ใช้ไฟล์ CSV ใน repo นี้ แล้วค่อย push และสร้าง Pull Request เมื่อทำครบ
