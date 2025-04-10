-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: uts_dbl_sistem_absensi
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'admin',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin1','admin1','admin1@gmail.com','$2a$12$GweLjMEsJqjLdm13d11kcOtV26fTCOdtgUjEB.NWE3aiajkEeMOau',NULL,'admin'),(2,'Admin2','admin2','admin2@gmail.com','$2a$12$GweLjMEsJqjLdm13d11kcOtV26fTCOdtgUjEB.NWE3aiajkEeMOau',NULL,'admin'),(3,'Admin3','admin3','admin3@gmail.com','$2a$12$GweLjMEsJqjLdm13d11kcOtV26fTCOdtgUjEB.NWE3aiajkEeMOau',NULL,'admin'),(4,'Admin4','admin4','admin4@gmail.com','$2a$12$GweLjMEsJqjLdm13d11kcOtV26fTCOdtgUjEB.NWE3aiajkEeMOau',NULL,'admin'),(5,'Admin5','admin5','admin5@gmail.com','$2a$12$GweLjMEsJqjLdm13d11kcOtV26fTCOdtgUjEB.NWE3aiajkEeMOau',NULL,'admin'),(6,'Admin6','admin6','admin6@gmail.com','$2a$12$GweLjMEsJqjLdm13d11kcOtV26fTCOdtgUjEB.NWE3aiajkEeMOau',NULL,'admin'),(7,'Admin7','admin7','admin7@gmail.com','$2a$12$GweLjMEsJqjLdm13d11kcOtV26fTCOdtgUjEB.NWE3aiajkEeMOau',NULL,'admin'),(8,'Admin8','admin8','admin8@gmail.com','$2a$12$GweLjMEsJqjLdm13d11kcOtV26fTCOdtgUjEB.NWE3aiajkEeMOau',NULL,'admin'),(9,'Admin9','admin9','admin9@gmail.com','$2a$12$GweLjMEsJqjLdm13d11kcOtV26fTCOdtgUjEB.NWE3aiajkEeMOau',NULL,'admin'),(10,'Admin10','admin10','admin10@gmail.com','$2a$12$GweLjMEsJqjLdm13d11kcOtV26fTCOdtgUjEB.NWE3aiajkEeMOau',NULL,'admin');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `status` enum('hadir','sakit','izin','alpha') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `attendances_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (1,1,'2025-03-19','07:00:00','17:00:00','alpha'),(2,2,'2025-04-01','08:00:00','17:00:00','izin'),(3,3,'2025-03-19','09:00:00','17:00:00','sakit'),(4,4,'2025-03-26','07:00:00','17:00:00','alpha'),(5,5,'2025-03-27','09:00:00','17:00:00','sakit'),(6,6,'2025-03-14','09:00:00','17:00:00','hadir'),(7,7,'2025-03-18','08:00:00','17:00:00','izin'),(8,8,'2025-03-26','07:00:00','17:00:00','hadir'),(9,9,'2025-03-18','07:00:00','17:00:00','izin'),(10,10,'2025-03-13','07:00:00','17:00:00','hadir');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER default_attendance_status

BEFORE INSERT ON attendances

FOR EACH ROW

BEGIN

    IF NEW.status IS NULL THEN

        SET NEW.status = 'alpha';

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cash_advance_payments`
--

DROP TABLE IF EXISTS `cash_advance_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_advance_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `cash_advance_request_id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` enum('diajukan','disetujui','ditolak') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `cash_advance_request_id` (`cash_advance_request_id`),
  CONSTRAINT `cash_advance_payments_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `cash_advance_payments_ibfk_2` FOREIGN KEY (`cash_advance_request_id`) REFERENCES `cash_advance_requests` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_advance_payments`
--

LOCK TABLES `cash_advance_payments` WRITE;
/*!40000 ALTER TABLE `cash_advance_payments` DISABLE KEYS */;
INSERT INTO `cash_advance_payments` VALUES (1,3,1,'2025-04-07',1326241,'diajukan'),(2,3,2,'2025-03-22',1773285,'ditolak'),(3,3,3,'2025-03-17',1015438,'diajukan'),(4,1,4,'2025-03-16',1854375,'diajukan'),(5,9,5,'2025-04-03',1970381,'ditolak'),(6,10,6,'2025-03-25',1739274,'disetujui'),(7,8,7,'2025-04-02',892318,'disetujui'),(8,1,8,'2025-04-01',1258558,'diajukan'),(9,2,9,'2025-03-24',621377,'disetujui'),(10,10,10,'2025-03-24',1499959,'diajukan');
/*!40000 ALTER TABLE `cash_advance_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_advance_requests`
--

DROP TABLE IF EXISTS `cash_advance_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_advance_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `reason` text NOT NULL,
  `status` enum('diajukan','disetujui','ditolak') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `cash_advance_requests_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_advance_requests`
--

LOCK TABLES `cash_advance_requests` WRITE;
/*!40000 ALTER TABLE `cash_advance_requests` DISABLE KEYS */;
INSERT INTO `cash_advance_requests` VALUES (1,3,'2025-03-17',732049,'Biaya pengobatan mendadak anggota keluarga','disetujui'),(2,7,'2025-03-20',1216900,'Pembayaran uang sekolah anak yang jatuh tempo','diajukan'),(3,10,'2025-03-13',1630768,'Perbaikan kendaraan untuk keperluan kerja','ditolak'),(4,2,'2025-03-21',1776273,'Renovasi kecil rumah akibat kebocoran atap','ditolak'),(5,10,'2025-03-14',517828,'Pembelian obat pasca rawat inap','ditolak'),(6,1,'2025-03-14',833158,'Kebutuhan mendesak akibat musibah banjir','diajukan'),(7,8,'2025-03-26',1342245,'Biaya perjalanan darurat ke kampung halaman','ditolak'),(8,2,'2025-03-22',1141281,'Pembayaran cicilan yang jatuh tempo bersamaan dengan pengeluaran keluarga besar','diajukan'),(9,1,'2025-03-31',1330953,'Dana tambahan untuk keperluan keluarga saat lebaran','diajukan'),(10,2,'2025-03-25',1659723,'Kebutuhan biaya hidup akibat keterlambatan gaji pasangan','ditolak');
/*!40000 ALTER TABLE `cash_advance_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER validate_cash_advance_amount

BEFORE INSERT ON cash_advance_requests

FOR EACH ROW

BEGIN

    IF NEW.amount <= 0 THEN

        SIGNAL SQLSTATE '45000'

        SET MESSAGE_TEXT = 'Jumlah pinjaman harus lebih dari 0';

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `division_heads`
--

DROP TABLE IF EXISTS `division_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division_heads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `division_id` (`division_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `division_heads_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  CONSTRAINT `division_heads_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division_heads`
--

LOCK TABLES `division_heads` WRITE;
/*!40000 ALTER TABLE `division_heads` DISABLE KEYS */;
INSERT INTO `division_heads` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4);
/*!40000 ALTER TABLE `division_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisions`
--

LOCK TABLES `divisions` WRITE;
/*!40000 ALTER TABLE `divisions` DISABLE KEYS */;
INSERT INTO `divisions` VALUES (1,'HR'),(2,'Finance'),(3,'IT'),(4,'Marketing');
/*!40000 ALTER TABLE `divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_division_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'employee',
  PRIMARY KEY (`id`),
  KEY `position_division_id` (`position_division_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`position_division_id`) REFERENCES `position_divisions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,7,'Employee1','emp1','emp1@gmail.com','$2a$12$x9YfvPuls9Foc39ItE/40eRIY70rnRWLRt72hRxvqerjlA9ai3ANu',NULL,'08266923048','employee'),(2,5,'Employee2','emp2','emp2@gmail.com','$2a$12$x9YfvPuls9Foc39ItE/40eRIY70rnRWLRt72hRxvqerjlA9ai3ANu',NULL,'08446816415','employee'),(3,1,'Employee3','emp3','emp3@gmail.com','$2a$12$x9YfvPuls9Foc39ItE/40eRIY70rnRWLRt72hRxvqerjlA9ai3ANu',NULL,'08463024938','employee'),(4,3,'Employee4','emp4','emp4@gmail.com','$2a$12$x9YfvPuls9Foc39ItE/40eRIY70rnRWLRt72hRxvqerjlA9ai3ANu',NULL,'08457941250','employee'),(5,2,'Employee5','emp5','emp5@gmail.com','$2a$12$x9YfvPuls9Foc39ItE/40eRIY70rnRWLRt72hRxvqerjlA9ai3ANu',NULL,'08757685485','employee'),(6,1,'Employee6','emp6','emp6@gmail.com','$2a$12$x9YfvPuls9Foc39ItE/40eRIY70rnRWLRt72hRxvqerjlA9ai3ANu',NULL,'08597350792','employee'),(7,7,'Employee7','emp7','emp7@gmail.com','$2a$12$x9YfvPuls9Foc39ItE/40eRIY70rnRWLRt72hRxvqerjlA9ai3ANu',NULL,'08832223549','employee'),(8,7,'Employee8','emp8','emp8@gmail.com','$2a$12$x9YfvPuls9Foc39ItE/40eRIY70rnRWLRt72hRxvqerjlA9ai3ANu',NULL,'08697834501','employee'),(9,12,'Employee9','emp9','emp9@gmail.com','$2a$12$x9YfvPuls9Foc39ItE/40eRIY70rnRWLRt72hRxvqerjlA9ai3ANu',NULL,'08463486856','employee'),(10,7,'Employee10','emp10','emp10@gmail.com','$2a$12$x9YfvPuls9Foc39ItE/40eRIY70rnRWLRt72hRxvqerjlA9ai3ANu',NULL,'08928467787','employee');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_sharings`
--

DROP TABLE IF EXISTS `file_sharings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_sharings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `division_head_id` int(11) NOT NULL,
  `sender_division_id` int(11) NOT NULL,
  `receiver_division_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `description` text,
  `upload_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `division_head_id` (`division_head_id`),
  KEY `sender_division_id` (`sender_division_id`),
  KEY `receiver_division_id` (`receiver_division_id`),
  CONSTRAINT `file_sharings_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  CONSTRAINT `file_sharings_ibfk_2` FOREIGN KEY (`division_head_id`) REFERENCES `division_heads` (`id`),
  CONSTRAINT `file_sharings_ibfk_3` FOREIGN KEY (`sender_division_id`) REFERENCES `divisions` (`id`),
  CONSTRAINT `file_sharings_ibfk_4` FOREIGN KEY (`receiver_division_id`) REFERENCES `divisions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_sharings`
--

LOCK TABLES `file_sharings` WRITE;
/*!40000 ALTER TABLE `file_sharings` DISABLE KEYS */;
INSERT INTO `file_sharings` VALUES (1,3,2,1,4,'file1.pdf','Laporan absensi karyawan bulan Maret','2025-03-13'),(2,8,2,4,1,'file2.pdf','Permintaan review kinerja divisi Marketing','2025-03-27'),(3,7,4,1,2,'file3.pdf','Rekap gaji staf HR untuk validasi Finance','2025-04-08'),(4,10,2,1,4,'file4.pdf','Daftar karyawan terlambat hadir minggu ini','2025-03-10'),(5,1,4,4,2,'file5.pdf','Permintaan dana kegiatan promosi','2025-04-06'),(6,4,2,2,3,'file6.pdf','Laporan pembayaran gaji dan potongan','2025-03-19'),(7,10,2,1,4,'file7.pdf','Data pengajuan cuti karyawan','2025-04-06'),(8,3,1,4,3,'file8.pdf','Evaluasi kinerja bulanan divisi Marketing','2025-03-31'),(9,4,4,4,3,'file9.pdf','Pengajuan tambahan personil proyek Q2','2025-03-29'),(10,3,4,4,1,'file10.pdf','Resume hasil meeting antar divisi','2025-03-17');
/*!40000 ALTER TABLE `file_sharings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_positions`
--

DROP TABLE IF EXISTS `job_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_positions`
--

LOCK TABLES `job_positions` WRITE;
/*!40000 ALTER TABLE `job_positions` DISABLE KEYS */;
INSERT INTO `job_positions` VALUES (1,'Staff'),(2,'Supervisor'),(3,'Manager');
/*!40000 ALTER TABLE `job_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_requests`
--

DROP TABLE IF EXISTS `leave_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `start_date` date NOT NULL,
  `end_time` time NOT NULL,
  `reason` text NOT NULL,
  `status` enum('diajukan','disetujui','ditolak') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `leave_requests_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_requests`
--

LOCK TABLES `leave_requests` WRITE;
/*!40000 ALTER TABLE `leave_requests` DISABLE KEYS */;
INSERT INTO `leave_requests` VALUES (1,8,'2025-03-22','2025-03-22','17:00:00','Menghadiri acara keluarga penting (pernikahan adik)','disetujui'),(2,4,'2025-03-29','2025-03-29','17:00:00','Kontrol rutin ke dokter gigi','disetujui'),(3,6,'2025-03-17','2025-03-17','17:00:00','Mengurus dokumen penting di kantor imigrasi','disetujui'),(4,3,'2025-03-28','2025-03-28','17:00:00','Cuti harian untuk istirahat setelah lembur intensif','disetujui'),(5,7,'2025-03-29','2025-03-29','17:00:00','Menemani orang tua ke rumah sakit','disetujui'),(6,1,'2025-04-02','2025-04-02','17:00:00','Kondisi badan tidak fit (demam)','disetujui'),(7,4,'2025-04-01','2025-04-01','17:00:00','Mengambil cuti tanpa alasan yang jelas','ditolak'),(8,4,'2025-03-10','2025-03-10','17:00:00','Menghadiri wisuda saudara kandung','disetujui'),(9,5,'2025-03-13','2025-03-13','17:00:00','Cuti tahunan yang belum digunakan','diajukan'),(10,10,'2025-04-04','2025-04-04','17:00:00','Alasan tidak jelas dan kurang bukti pendukung','ditolak');
/*!40000 ALTER TABLE `leave_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_fors`
--

DROP TABLE IF EXISTS `notification_fors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_fors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `notification_id` (`notification_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `notification_fors_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`),
  CONSTRAINT `notification_fors_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_fors`
--

LOCK TABLES `notification_fors` WRITE;
/*!40000 ALTER TABLE `notification_fors` DISABLE KEYS */;
INSERT INTO `notification_fors` VALUES (1,1,10,0),(2,2,10,1),(3,3,5,1),(4,4,9,0),(5,5,7,0),(6,6,1,0),(7,7,10,1),(8,8,8,1),(9,9,9,1),(10,10,3,1);
/*!40000 ALTER TABLE `notification_fors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` enum('pengajuan_cuti','cuti_disetujui','cuti_ditolak','permintaan_gaji_dimuka','gaji_ditransfer','terlambat_absen','belum_absen') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'cuti_ditolak','2025-03-25 10:44:00'),(2,'cuti_disetujui','2025-03-15 10:44:00'),(3,'pengajuan_cuti','2025-03-26 10:44:00'),(4,'permintaan_gaji_dimuka','2025-04-08 10:44:00'),(5,'pengajuan_cuti','2025-03-16 10:44:00'),(6,'cuti_disetujui','2025-04-09 10:44:00'),(7,'cuti_ditolak','2025-04-09 10:44:00'),(8,'permintaan_gaji_dimuka','2025-03-16 10:44:00'),(9,'permintaan_gaji_dimuka','2025-03-10 10:44:00'),(10,'cuti_ditolak','2025-03-10 10:44:00');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payrolls`
--

DROP TABLE IF EXISTS `payrolls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payrolls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `month` tinyint(2) NOT NULL,
  `year` year(4) NOT NULL,
  `salary` int(11) NOT NULL,
  `leave_deduction` int(11) NOT NULL,
  `bonus` int(11) NOT NULL,
  `total_salary` int(11) DEFAULT NULL,
  `transfer_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `payrolls_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payrolls`
--

LOCK TABLES `payrolls` WRITE;
/*!40000 ALTER TABLE `payrolls` DISABLE KEYS */;
INSERT INTO `payrolls` VALUES (1,1,10,2025,5700129,442848,443000,5700281,'2025-03-22'),(2,2,8,2025,7488139,75315,928872,8341696,'2025-03-14'),(3,3,1,2025,5658550,440719,328406,5546237,'2025-03-27'),(4,4,7,2025,5727000,326662,373125,5773463,'2025-03-31'),(5,5,1,2025,5365497,305405,246778,5306870,'2025-04-07'),(6,6,10,2025,5707036,454852,918751,6170935,'2025-03-10'),(7,7,9,2025,4674751,408579,315847,4582019,'2025-03-21'),(8,8,11,2025,5651023,171160,892892,6372755,'2025-03-29'),(9,9,7,2025,6715237,231387,797861,7281711,'2025-03-15'),(10,10,7,2025,7684096,168206,53449,7569339,'2025-03-28');
/*!40000 ALTER TABLE `payrolls` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_insert_payroll

BEFORE INSERT ON payrolls

FOR EACH ROW

BEGIN

    SET NEW.total_salary = NEW.salary - NEW.leave_deduction + NEW.bonus;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `position_divisions`
--

DROP TABLE IF EXISTS `position_divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_divisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NOT NULL,
  `job_position_id` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `division_id` (`division_id`),
  KEY `job_position_id` (`job_position_id`),
  CONSTRAINT `position_divisions_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  CONSTRAINT `position_divisions_ibfk_2` FOREIGN KEY (`job_position_id`) REFERENCES `job_positions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_divisions`
--

LOCK TABLES `position_divisions` WRITE;
/*!40000 ALTER TABLE `position_divisions` DISABLE KEYS */;
INSERT INTO `position_divisions` VALUES (1,1,1,4924895),(2,1,2,5358791),(3,1,3,7479130),(4,2,1,4776940),(5,2,2,4993667),(6,2,3,5201759),(7,3,1,4904780),(8,3,2,6770327),(9,3,3,4363691),(10,4,1,6980745),(11,4,2,4543897),(12,4,3,5266667);
/*!40000 ALTER TABLE `position_divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_cash_advance_summary`
--

DROP TABLE IF EXISTS `view_cash_advance_summary`;
/*!50001 DROP VIEW IF EXISTS `view_cash_advance_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_cash_advance_summary` AS SELECT 
 1 AS `employee_name`,
 1 AS `total_requests`,
 1 AS `total_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_latest_payroll`
--

DROP TABLE IF EXISTS `view_latest_payroll`;
/*!50001 DROP VIEW IF EXISTS `view_latest_payroll`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_latest_payroll` AS SELECT 
 1 AS `id`,
 1 AS `employee_id`,
 1 AS `month`,
 1 AS `year`,
 1 AS `salary`,
 1 AS `leave_deduction`,
 1 AS `bonus`,
 1 AS `total_salary`,
 1 AS `transfer_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_pending_leaves`
--

DROP TABLE IF EXISTS `view_pending_leaves`;
/*!50001 DROP VIEW IF EXISTS `view_pending_leaves`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_pending_leaves` AS SELECT 
 1 AS `id`,
 1 AS `employee_name`,
 1 AS `start_date`,
 1 AS `reason`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'uts_dbl_sistem_absensi'
--
/*!50003 DROP FUNCTION IF EXISTS `CalculateTotalSalary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateTotalSalary`(salary INT, deduction INT, bonus INT) RETURNS int(11)
    DETERMINISTIC
BEGIN

    RETURN salary - deduction + bonus;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `HasPendingLeave` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `HasPendingLeave`(emp_id INT) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN

    DECLARE count_pending INT;

    SELECT COUNT(*) INTO count_pending FROM leave_requests

    WHERE employee_id = emp_id AND status = 'diajukan';

    RETURN count_pending > 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `IsEligibleForBonus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `IsEligibleForBonus`(emp_id INT, target_month INT, target_year YEAR) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN

    DECLARE hadir_count INT;

    SELECT COUNT(*) INTO hadir_count

    FROM attendances

    WHERE employee_id = emp_id

      AND MONTH(attendance_date) = target_month

      AND YEAR(attendance_date) = target_year

      AND status = 'hadir';



    RETURN hadir_count >= 20;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ApproveCashAdvance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ApproveCashAdvance`(IN request_id INT)
BEGIN

    UPDATE cash_advance_requests

    SET status = 'disetujui'

    WHERE id = request_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetEmployeePayrollHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmployeePayrollHistory`(IN emp_id INT)
BEGIN

    SELECT * FROM payrolls

    WHERE employee_id = emp_id

    ORDER BY year DESC, month DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertLeaveRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertLeaveRequest`(

    IN emp_id INT,

    IN req_date DATE,

    IN start_date DATE,

    IN reason TEXT

)
BEGIN

    INSERT INTO leave_requests (employee_id, request_date, start_date, end_time, reason, status)

    VALUES (emp_id, req_date, start_date, '17:00:00', reason, 'diajukan');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_cash_advance_summary`
--

/*!50001 DROP VIEW IF EXISTS `view_cash_advance_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cash_advance_summary` AS select `e`.`name` AS `employee_name`,count(`ca`.`id`) AS `total_requests`,sum(`ca`.`amount`) AS `total_amount` from (`cash_advance_requests` `ca` join `employees` `e` on((`ca`.`employee_id` = `e`.`id`))) group by `ca`.`employee_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_latest_payroll`
--

/*!50001 DROP VIEW IF EXISTS `view_latest_payroll`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_latest_payroll` AS select `p`.`id` AS `id`,`p`.`employee_id` AS `employee_id`,`p`.`month` AS `month`,`p`.`year` AS `year`,`p`.`salary` AS `salary`,`p`.`leave_deduction` AS `leave_deduction`,`p`.`bonus` AS `bonus`,`p`.`total_salary` AS `total_salary`,`p`.`transfer_date` AS `transfer_date` from (`uts_dbl_sistem_absensi`.`payrolls` `p` join (select `uts_dbl_sistem_absensi`.`payrolls`.`employee_id` AS `employee_id`,max(concat(`uts_dbl_sistem_absensi`.`payrolls`.`year`,lpad(`uts_dbl_sistem_absensi`.`payrolls`.`month`,2,'0'))) AS `latest` from `uts_dbl_sistem_absensi`.`payrolls` group by `uts_dbl_sistem_absensi`.`payrolls`.`employee_id`) `lp` on(((`p`.`employee_id` = `lp`.`employee_id`) and (concat(`p`.`year`,lpad(`p`.`month`,2,'0')) = `lp`.`latest`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_pending_leaves`
--

/*!50001 DROP VIEW IF EXISTS `view_pending_leaves`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_pending_leaves` AS select `lr`.`id` AS `id`,`e`.`name` AS `employee_name`,`lr`.`start_date` AS `start_date`,`lr`.`reason` AS `reason` from (`leave_requests` `lr` join `employees` `e` on((`lr`.`employee_id` = `e`.`id`))) where (`lr`.`status` = 'diajukan') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-10 23:55:34
