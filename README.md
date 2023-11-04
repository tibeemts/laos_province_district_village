# Laos Administrative Database(Provinces, Districts, Villages) in PostgreSQL format
# ຖານຂໍ້ມູນ ການປົກຄອງ ສປປລາວ ແຍກອອກເປັນ ແຂວງ, ເມືອງ ແລະ ບ້ານ ໃນຮູບແບບຂອງ ຖານຂໍ້ມູນ PostgreSQL
## ຂໍ້ມູນຂອງການປົກຄອງ ບ້ານ ເມືອງ ແຂວງ ແມ່ນເປັນຂໍ້ມູນຂອງປີ 2015 ຖ້າບ້ານໃດບໍ່ມີສະແດງວ່າມີມາໃໝ່. ທາງເຮົາໄດ້ແຍກຂໍ້ມູນ ອອກເປັນ .csv file ໃຫ້ເພື່ອງ່າຍໃນການ import ຖ້າຍາກເອົາໄປໃສ່ກັບ MySQL ກະມີແຕ່ສ້າງ table ເປົ້າລະກະ insert csv ເຂົ້າໄປໄດ້ເລີ່ຍ.

ທີ່ມາຂອງຂໍ້ມູນແມ່ນໄດ້ມາຈາກ https://www.k4d.la/lo/home-%e0%ba%a5%e0%ba%b2%e0%ba%a7/ 

![Screenshot 2023-11-04 at 20 38 35](https://github.com/tibeemts/laos_province_district_village/assets/72777657/3c9030bf-758a-4d83-ae03-c429618be871)
![Screenshot 2023-11-04 at 20 36 58](https://github.com/tibeemts/laos_province_district_village/assets/72777657/0622550c-fe7f-43ae-b9d1-20fc62a24e67)


- In this repo included .sql file for postgresql excute command and .csv for data file 
- ໃນ repo ນີ້ແມ່ນໄດ້ແບບເປັນ .sql ສຳລັບ file ທີ່ຈະເອົາໄປ excute ໃນ PostgreSQL ແລະ file .csv ເຊີ່ງເປັນ ຂໍ້ມູນທີ່ຈະ import ຫລັງຈາກໄດ້ structure ຂອງຖານຂໍ້ມູນແລ້ວ
	---
### ຂໍ້ມູນແຂວງ ແມ່ນມີທັງໝົດ 18 ແຂວງໃນຖານຂໍ້ມູນ ມີຊື່ເປັນພາສາລາວ ແລະ ອັງກິດ
### Provincial information There are a total of 18 provinces in the database with names in Lao and English
	---
### ຖານຂໍ້ມູນເມືອງ ແມ່ນມີທັງໝົດ 148 ເມືອງທົ່ວປະເທດ ແລະ ມີຊື່ເປັນພາສາລາວ ແລະ ອັງກິດ
### The District database has a total of 148 districts nationwide with names in Lao and English
	---
### ຖານຂໍ້ມູນບ້ານ ແມ່ນມີທັງໝົດ 8500 ບ້ານ ໃນທົ່ວປະເທດ. ຂໍ້ມູນບ້ານແມ່ນມີທັງຊື່ທີ່ເປັນພາສາລາວ ແລະ ອັງກິດ 
### The village database has a total of 8500 villages throughout the country. Village information has both Lao and English names

