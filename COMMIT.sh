#!/bin/bash
# รันในโฟลเดอร์ Moodle-admin-Lab2-2025
cd "$(dirname "$0")"
git add README.md
git status
git commit -m "docs: อัปเดต README จาก Moodle-admin-Lab2.md พร้อมวัตถุประสงค์และโครงสร้าง"
echo "---"
echo "ส่งขึ้น remote: git push origin main"
