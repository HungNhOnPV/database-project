-- MySQL dump 10.16  Distrib 10.3.10-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: banhang
-- ------------------------------------------------------
-- Server version	10.3.10-MariaDB-1:10.3.10+maria~xenial-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chitietdathang`
--

DROP TABLE IF EXISTS `chitietdathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chitietdathang` (
  `sohoadon` int(11) NOT NULL,
  `mahang` varchar(40) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mucgiamgia_phantram` varchar(40) NOT NULL,
  PRIMARY KEY (`sohoadon`,`mahang`),
  KEY `mahang` (`mahang`),
  CONSTRAINT `chitietdathang_ibfk_1` FOREIGN KEY (`sohoadon`) REFERENCES `dondathang` (`sohoadon`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chitietdathang_ibfk_2` FOREIGN KEY (`mahang`) REFERENCES `mathang` (`mahang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdathang`
--

LOCK TABLES `chitietdathang` WRITE;
/*!40000 ALTER TABLE `chitietdathang` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietdathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dondathang`
--

DROP TABLE IF EXISTS `dondathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dondathang` (
  `sohoadon` int(11) NOT NULL,
  `makhachhang` varchar(40) DEFAULT NULL,
  `manhanvien` varchar(40) DEFAULT NULL,
  `ngaydahang` datetime DEFAULT NULL,
  `ngaychuyenhang` datetime DEFAULT NULL,
  `noigiaodich` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`sohoadon`),
  KEY `makhachhang` (`makhachhang`),
  KEY `manhanvien` (`manhanvien`),
  CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`makhachhang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dondathang_ibfk_2` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`manhanvien`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dondathang`
--

LOCK TABLES `dondathang` WRITE;
/*!40000 ALTER TABLE `dondathang` DISABLE KEYS */;
/*!40000 ALTER TABLE `dondathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khachhang` (
  `makhachhang` varchar(40) NOT NULL,
  `diachi` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `dienthoai` varchar(40) DEFAULT NULL,
  `fax` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`makhachhang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES ('1','nam dinh','hung89@gmail.com','097565127','03012341'),('10','viet tri','nguyenvtt@gmail.com','093012354','0382354'),('11','ha noi','dond@gmail.com','030142452','030123551'),('12','hai duong','trung123@gmail.com','0123012356','030123561'),('13','ha noi','namlt1234@gmail.com','0123012352','030123571'),('14','hai phong','dung1@gmail.com','0123012352','03012358'),('15','ha noi','xuannvvn@gmail.com','012301232','03012359'),('16','ha noi','hainpvn@gmail.com','0123012602','03012361'),('17','ha noi','huyenntp@gmail.com','0123123612','0301236 1'),('18','ho chi minh','haianhle@gmail.com','01230123622','030123621'),('19','ha noi','thaoly@gmail.com','01230123632','030123631'),('2','ha noi','quyenanh@gmail.com','053012342','0312346'),('3','nam dinh','trungnd@gmail.com','012301234','036123471'),('4','hung yen','tho89@gmail.com','012301234','03012348'),('5','ha noi','hieptran@gmail.com','0342742152','031423421'),('6','ho chi minh','nguyenxyz@gmail.com','030123502','03012352'),('7','hai phong','bapn@gmail.com','012355228','033511125'),('8','ha noi','cuongbk@gmail.com','012312352','030122178'),('9','hue','khanhndnk@gmail.com','030123532','031535361');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaihang`
--

DROP TABLE IF EXISTS `loaihang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loaihang` (
  `maloaihang` int(11) NOT NULL,
  `tenloaihang` varchar(40) NOT NULL,
  PRIMARY KEY (`maloaihang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaihang`
--

LOCK TABLES `loaihang` WRITE;
/*!40000 ALTER TABLE `loaihang` DISABLE KEYS */;
INSERT INTO `loaihang` VALUES (1,'dien thoai'),(2,'may tinh'),(3,'may bay'),(4,'tau hoa'),(5,'ban ghe'),(6,'chuot'),(7,'my tom'),(8,'may tinh bang'),(9,'quan ao'),(10,'cap sach');
/*!40000 ALTER TABLE `loaihang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mathang`
--

DROP TABLE IF EXISTS `mathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mathang` (
  `mahang` varchar(40) NOT NULL,
  `tenhang` varchar(40) NOT NULL,
  `macongty` varchar(40) DEFAULT NULL,
  `maloaihang` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `donvitinh` varchar(40) DEFAULT NULL,
  `giahang` int(11) DEFAULT NULL,
  PRIMARY KEY (`mahang`),
  KEY `maloaihang` (`maloaihang`),
  KEY `macongty` (`macongty`),
  CONSTRAINT `mathang_ibfk_1` FOREIGN KEY (`maloaihang`) REFERENCES `loaihang` (`maloaihang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mathang_ibfk_2` FOREIGN KEY (`macongty`) REFERENCES `nhacungcap` (`macongty`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathang`
--

LOCK TABLES `mathang` WRITE;
/*!40000 ALTER TABLE `mathang` DISABLE KEYS */;
INSERT INTO `mathang` VALUES ('1','dien thoai apple','1',1,1000,'chiec',20000000),('10','cap sach samsung','2',10,40000,'chiec',300000),('11','dien thoai microsoft','3',1,2000,'chiec',15000000),('12','may tinh microsoft','3',2,5000,'chiec',10000000),('13','chuot microsoft','3',6,15000,'chiec',2100000),('14','may tinh bang microsoft','3',8,6000,'chiec',25000000),('15','tau hoa microsoft','3',4,1000,'con',300000000),('16','tau hoa facebook','4',4,2000,'con',200000000),('17','chuot facebook','4',6,5000,'chiec',160000),('18','my tom facebook','4',7,10000,'goi',10000),('19','may tinh bang facebook','4',8,9999,'chiec',24000000),('2','may tinh apple','1',2,2000,'chiec',30000000),('20','quan ao facebook','4',9,6999,'chiec',3400000),('21','tau hoa framgia','5',4,1000,'con',300000000),('22','ban ghe framgia','5',5,6000,'chiec',200000),('23','my tom framgia','5',7,3000,'goi',15000),('24','may tinh bang framgia','5',8,3750,'chiec',23000000),('25','quan ao framgia','5',9,9999,'chiec',400000),('26','dien thoai asus','6',1,9999,'chiec',15000000),('27','may bay asus','6',3,5000,'chiec',200000000),('28','ban ghe asus','6',5,10000,'chiec',160000),('29','my tom asus','6',7,15000,'goi',5000),('3','chuot apple','1',6,10000,'chiec',2000000),('30','quan ao asus','6',9,11500,'chiec',150000),('31','may tinh google','7',2,6700,'chiec',13000000),('32','tau hoa google','7',4,3000,'con',200000000),('33','chuot google','7',6,10000,'chiec',170000),('34','may tinh bang google','7',8,19000,'chiec',4000000),('35','cap sach google','7',10,17500,'chiec',100000),('36','chuot dell','8',6,8000,'chiec',2100000),('37','my tom dell','8',7,15000,'goi',20000),('38','may tinh bang dell','8',8,10000,'chiec',17000000),('39','quan ao dell','8',9,10000,'chiec',50000),('4','may tinh bang apple','1',8,5000,'chiec',20000000),('40','cap sach dell','8',10,17500,'chiec',100000),('41','may bay viettel','9',3,6000,'chiec',210000000),('42','chuot viettel','9',6,14000,'chiec',200000),('43','my tom viettel','9',7,15500,'goi',17000),('44','may tinh bang viettel','9',8,23300,'chiec',23500000),('45','cap sach viettel','9',10,13500,'chiec',235000),('46','tau hoa vinaphone','10',4,5000,'con',230000000),('47','ban ghe vinaphone','10',5,13600,'chiec',250000),('48','chuot vinaphone','10',6,18500,'chiec',170000),('49','ban ghe vinaphone','10',5,20300,'chiec',256000),('5','quan ao apple','1',9,20000,'chiec',100000),('50','cap sach vinaphone','10',10,10500,'chiec',210000),('6','dien thoai samsung','2',1,2000,'chiec',15000000),('7','may tinh samsung','2',2,5500,'chiec',20000000),('8','chuot samsung','2',6,11000,'chiec',2000000),('9','may tinh bang samsung','2',8,10000,'chiec',20000000);
/*!40000 ALTER TABLE `mathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhacungcap` (
  `macongty` varchar(40) NOT NULL,
  `tencongty` varchar(40) NOT NULL,
  `diachi` varchar(40) DEFAULT NULL,
  `dienthoai` varchar(40) DEFAULT NULL,
  `fax` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`macongty`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES ('1','apple','hai phong','0972093127','0358324324','apple@gmail.com'),('10','vinaphone','ho chi minh','0999932325','0334459333','vinaphone@gmail.com'),('2','samsung','hue','0988888888','0346789122','sumsung@gmail.com'),('3','microsoft','da nang','0977777777','0348232944','microsoft@gmail.com'),('4','facebook','ho chi minh','0912345678','0324348423','facebook@gmail.comm'),('5','framgia','ha noi','0948324234','0343482344','framgia@gmail.com'),('6','asus','thai nguyen','0938461522','0334238126','asus@gmail.com'),('7','google','cao bang','0954282363','0358126444','google@gmail.com'),('8','dell','ca mau','0984243723','0334325555','dell@gmail.com'),('9','viettel','ha noi','0974524441','0399312323','viettel@gmail.com');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhanvien` (
  `manhanvien` varchar(40) NOT NULL,
  `hovaten` varchar(40) NOT NULL,
  `ngaysinh` datetime DEFAULT NULL,
  `ngaylamviec` datetime DEFAULT NULL,
  `diachi` varchar(40) DEFAULT NULL,
  `dienthoai` varchar(40) DEFAULT NULL,
  `luongcoban` int(11) DEFAULT NULL,
  `phucap` int(11) DEFAULT NULL,
  PRIMARY KEY (`manhanvien`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('1','le van khue','1998-09-11 00:00:00','1998-05-11 00:00:00','ho chi minh','034581231',5000000,2707250),('10','nguyen dac bang','1998-11-15 00:00:00','1998-03-27 00:00:00','hung yen','034557321',15000000,1025460),('11','nguyen van dung','1998-01-11 00:00:00','1998-05-21 00:00:00','ha nam','034559331',15000000,3743870),('12','duong van hung','1998-01-12 00:00:00','1998-01-28 00:00:00','ha noi','034578341',10000000,319270),('13','nguyen bich hue','1998-01-13 00:00:00','1998-06-29 00:00:00','hai phong','034500351',5000000,4737930),('14','pham hong anh','1998-01-14 00:00:00','1998-01-15 00:00:00','ha noi','034547361',5000000,4150950),('15','trieu van nhat','1998-01-15 00:00:00','1998-05-22 00:00:00','nam dinh','03455371',8000000,2341250),('16','pham quoc cuong','1998-01-16 00:00:00','1998-10-10 00:00:00','ha noi','034541381',7000000,1091220),('17','tran van tung','1998-03-07 00:00:00','1998-11-12 00:00:00','ho chi minh','034516391',10000000,1220900),('18','tran minh quang','1998-01-08 00:00:00','1998-12-22 00:00:00','hai phong','034577401',5000000,1819000),('19','nguyen ba tung','1998-12-11 00:00:00','1998-10-20 00:00:00','ha noi','034544411',50000100,2692160),('2','nguyen duc binh','1998-05-02 00:00:00','1998-06-22 00:00:00','ha noi','034566241',6000000,4697520),('20','nguyen van hieu','1998-01-20 00:00:00','1998-11-23 00:00:00','ha noi','034512421',5000000,3353200),('3','bui tuan kiet','1998-12-02 00:00:00','1998-07-21 00:00:00','hai duong','034575251',10500000,2630530),('4','vo van hieu','1998-11-04 00:00:00','1998-11-22 00:00:00','hue','034522261',8500000,1294610),('5','phung thanh huy','1998-12-05 00:00:00','1998-05-02 00:00:00','ha noi','034514271',9500000,3285780),('6','pham minh tu','1998-01-26 00:00:00','1998-07-12 00:00:00','thanh hoa','034524281',11500000,1377410),('7','nguyen minh tri','1998-01-07 00:00:00','1998-09-29 00:00:00','ca mau','034658291',12500000,3157970),('8','le minh quang','1998-07-08 00:00:00','1998-04-25 00:00:00','binh thuan','0345751301',15500000,652740),('9','nguyen thi chinh','1998-01-19 00:00:00','1998-01-02 00:00:00','ha noi','034147311',5000000,1658050);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-21 21:29:47
