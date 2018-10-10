-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for repair
CREATE DATABASE IF NOT EXISTS `repair` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `repair`;

-- Dumping structure for table repair.cm
CREATE TABLE IF NOT EXISTS `cm` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.cm: ~1 rows (approximately)
/*!40000 ALTER TABLE `cm` DISABLE KEYS */;
INSERT INTO `cm` (`key`) VALUES
	(00001);
/*!40000 ALTER TABLE `cm` ENABLE KEYS */;

-- Dumping structure for table repair.cs
CREATE TABLE IF NOT EXISTS `cs` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.cs: ~1 rows (approximately)
/*!40000 ALTER TABLE `cs` DISABLE KEYS */;
INSERT INTO `cs` (`key`) VALUES
	(00001),
	(00002),
	(00003);
/*!40000 ALTER TABLE `cs` ENABLE KEYS */;

-- Dumping structure for table repair.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `id` char(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` text,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table repair.customer: ~8 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`, `name`, `address`, `phone`) VALUES
	('๙๙1800001', 'อำนวย กลีบม่วง ', 'กระสัง จ.บุรีรัมย์ 31160 ', '(099) 809-4514'),
	('๙๙1800002', 'beeeeee', 'ช้างอารีนา', '(089) 121-3132'),
	('๙๙1800003', 'บี ', 'ระกา', '(089) 898-9898'),
	('๙๙1800004', 'lkl', 'กระนูย', '(090) 345-6789'),
	('๙๙1800005', 'บริษัท xxx', 'xxx', '(044) 142-5555'),
	('๙๙1800006', 'bew', 'bew', '(555) 555-5555'),
	('๙๙1800007', 'test', 'test', '(099) 999-9999'),
	('๙๙1800008', 'test2', 'test2', '(099) 999-9999');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table repair.customer_seq
CREATE TABLE IF NOT EXISTS `customer_seq` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.customer_seq: ~9 rows (approximately)
/*!40000 ALTER TABLE `customer_seq` DISABLE KEYS */;
INSERT INTO `customer_seq` (`key`) VALUES
	(00001),
	(00002),
	(00003),
	(00004),
	(00005),
	(00006),
	(00007),
	(00008),
	(00009);
/*!40000 ALTER TABLE `customer_seq` ENABLE KEYS */;

-- Dumping structure for table repair.cy
CREATE TABLE IF NOT EXISTS `cy` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.cy: ~1 rows (approximately)
/*!40000 ALTER TABLE `cy` DISABLE KEYS */;
INSERT INTO `cy` (`key`) VALUES
	(00001),
	(00002);
/*!40000 ALTER TABLE `cy` ENABLE KEYS */;

-- Dumping structure for table repair.ft
CREATE TABLE IF NOT EXISTS `ft` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.ft: ~1 rows (approximately)
/*!40000 ALTER TABLE `ft` DISABLE KEYS */;
INSERT INTO `ft` (`key`) VALUES
	(00001);
/*!40000 ALTER TABLE `ft` ENABLE KEYS */;

-- Dumping structure for table repair.member
CREATE TABLE IF NOT EXISTS `member` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  `gender` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.member: ~3 rows (approximately)
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `email`, `password`, `name`, `phone`, `address`, `gender`, `role`, `status`, `joining_date`) VALUES
	(001, 'a@a', 'a', 'อำนวย กลีบม่วง', '(099) 809-4514', 'ต.กันทรารมย์ อ.กระสัง จ.บุรีรัมย์  31160', 'ชาย', 'พนักงาน', 'ใช้งาน', '2018-09-21'),
	(002, 'sakon@bru.ac.th', '1234', 'สกล กมลรัมย์', '(083) 728-5455', 'ประโคนชัย', 'ชาย', 'ช่างซ่อม', 'ใช้งาน', '2018-10-05'),
	(003, 'jook@bru.ac.th', '1234', 'Kittiphong Aumphimai', '(089) 854-5454', 'ช้างอารีนา', 'ชาย', 'ช่างซ่อม', 'ใช้งาน', '2018-10-05');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- Dumping structure for table repair.mt
CREATE TABLE IF NOT EXISTS `mt` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.mt: ~1 rows (approximately)
/*!40000 ALTER TABLE `mt` DISABLE KEYS */;
INSERT INTO `mt` (`key`) VALUES
	(00001),
	(00002);
/*!40000 ALTER TABLE `mt` ENABLE KEYS */;

-- Dumping structure for table repair.nb
CREATE TABLE IF NOT EXISTS `nb` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.nb: ~4 rows (approximately)
/*!40000 ALTER TABLE `nb` DISABLE KEYS */;
INSERT INTO `nb` (`key`) VALUES
	(00001),
	(00002),
	(00003),
	(00004),
	(00005),
	(00006);
/*!40000 ALTER TABLE `nb` ENABLE KEYS */;

-- Dumping structure for table repair.problem
CREATE TABLE IF NOT EXISTS `problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `repair_type_name` varchar(50) DEFAULT NULL,
  `repair_type_initials` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.problem: ~31 rows (approximately)
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` (`id`, `name`, `repair_type_name`, `repair_type_initials`) VALUES
	(1, 'จอฟ้าา', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(2, 'อิอิ', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(3, 'ลงวินโดว์ 77', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(4, 'ลงวินโดว์ xp', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(5, 'เครื่องค้าง', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(6, 'เครื่องแฮงค์', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(7, 'Disk 100%', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(8, 'อื่นๆ', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(9, 'ลงวินโดว์ 10', 'ศูนย์บริการซ่อม CASE', 'CS'),
	(10, 'ลงวินโดว์ 8', 'ศูนย์บริการซ่อม CASE', 'CS'),
	(11, 'ลงวินโดว์ 7', 'ศูนย์บริการซ่อม CASE', 'CS'),
	(12, 'ลงวินโดว์ xp', 'ศูนย์บริการซ่อม CASE', 'CS'),
	(13, 'เครื่องค้าง', 'ศูนย์บริการซ่อม CASE', 'CS'),
	(14, 'เครื่องค้าง', 'ศูนย์บริการซ่อม CASE', 'CS'),
	(15, 'Disk 100%', 'ศูนย์บริการซ่อม CASE', 'CS'),
	(16, 'อื่นๆ', 'ศูนย์บริการซ่อม CASE', 'CS'),
	(17, 'ตัวหนังสือที่หายไปบนผืนกระดาษ', 'ศูนย์บริการซ่อม PRINTER', 'PT'),
	(18, 'สั่งพิมพ์ได้แต่ดันกลายเป็นเส้นๆ', 'ศูนย์บริการซ่อม PRINTER', 'PT'),
	(19, 'มีจุดไข่ปลาที่ขอบกระดาษด้านบนและล่าง', 'ศูนย์บริการซ่อม PRINTER', 'PT'),
	(20, 'กระดาษค้าง', 'ศูนย์บริการซ่อม เครื่องถ่ายฯ', 'CY'),
	(21, 'ไฟไม่เข้า', 'ศูนย์บริการซ่อม MONITER', 'MT'),
	(22, 'มีเส้น', 'ศูนย์บริการซ่อม MONITER', 'MT'),
	(23, 'ไฟไม่เข้า', 'ศูนย์บริการซ่อม FAX', 'FT'),
	(24, 'น้ำเข้า', 'ศูนย์บริการซ่อม กล้อง', 'CM'),
	(25, 'เลนไม่ชัด', 'ศูนย์บริการซ่อม กล้อง', 'CM'),
	(26, 'ติดตั้งตู้', 'ศูนย์บริการซ่อม ตู้สาขา', 'SK'),
	(27, 'เปิดเครื่องไม่ติด', 'ศูนย์บริการซ่อม โทรศัพท์', 'TN'),
	(28, 'xxx', 'ศูนย์บริการซ่อม เครื่องอื่นๆ', 'VE'),
	(29, 'บริษัท ส่งซ่อม xxxx', 'ศูนย์บริการเอกสารส่งซ่อม', 'S0'),
	(30, 'amnuay', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(31, 'เสียงดังงงงงงงงงง5555', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(32, 'ไม่ทราบสาเหตุ', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(33, 'อื่นๆ', 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(34, 'อื่นๆ', 'ศูนย์บริการซ่อม CASE', 'CS'),
	(35, 'อื่นๆ', 'ศูนย์บริการซ่อม PRINTER', 'PT'),
	(36, 'อื่นๆ', 'ศูนย์บริการซ่อม เครื่องถ่ายฯ', 'CY'),
	(38, 'อื่นๆ', 'ศูนย์บริการซ่อม MONITER', 'MT'),
	(39, 'อื่นๆ', 'ศูนย์บริการซ่อม FAX', 'FT'),
	(40, 'อื่นๆ', 'ศูนย์บริการซ่อม กล้อง', 'CM'),
	(41, 'อื่นๆ', 'ศูนย์บริการซ่อม ตู้สาขา', 'SK'),
	(42, 'อื่นๆ', 'ศูนย์บริการซ่อม โทรศัพท์', 'TN'),
	(44, 'อื่นๆ', 'ศูนย์บริการเอกสารส่งซ่อม', 'S0'),
	(45, 'อื่นๆ', 'ศูนย์บริการเอกสารส่งซ่อม', 'S0');
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;

-- Dumping structure for table repair.pt
CREATE TABLE IF NOT EXISTS `pt` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.pt: ~1 rows (approximately)
/*!40000 ALTER TABLE `pt` DISABLE KEYS */;
INSERT INTO `pt` (`key`) VALUES
	(00001),
	(00002);
/*!40000 ALTER TABLE `pt` ENABLE KEYS */;

-- Dumping structure for table repair.repair
CREATE TABLE IF NOT EXISTS `repair` (
  `id` char(50) NOT NULL,
  `repair_date` datetime DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `repair_complete` date DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `rapair_type` varchar(50) DEFAULT NULL,
  `device_name` varchar(50) DEFAULT NULL,
  `problem` varchar(50) DEFAULT NULL,
  `other` text,
  `repair_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair: ~2 rows (approximately)
/*!40000 ALTER TABLE `repair` DISABLE KEYS */;
INSERT INTO `repair` (`id`, `repair_date`, `customer_name`, `repair_complete`, `member_name`, `rapair_type`, `device_name`, `problem`, `other`, `repair_status`) VALUES
	('CS1800002', '2561-10-11 01:15:19', '๙๙1800001', '2561-10-18', 'สกล กมลรัมย์', 'CS', '', '1', '', '11'),
	('CY1800001', '2561-10-11 01:23:26', '๙๙1800001', '2561-10-18', 'สกล กมลรัมย์', 'CY', '', '20', '', '10'),
	('NB1800002', '2018-10-10 15:22:07', '๙๙1800001', '2561-10-17', 'อำนวย กลีบม่วง', 'NB', 'N/B SAMSUNG รุ่นNP350U4X-908TH', '1', 'test', '14'),
	('NB1800003', '2018-10-10 15:22:07', '๙๙1800002', '2561-10-17', 'อำนวย กลีบม่วง', 'NB', 'N/B SAMSUNG รุ่นNP350U4X-908TH', '2', 'test', '14'),
	('NB1800004', '2561-10-10 19:01:17', '๙๙1800001', '2561-10-17', 'อำนวย กลีบม่วง', 'NB', '', '1', 'xxx', '14'),
	('NB1800005', '2561-10-11 01:14:46', '๙๙1800002', '2561-10-18', 'สกล กมลรัมย์', 'NB', 'N/B SAMSUNG รุ่นNP350U4X-908TH', '1', 'test', '14'),
	('PT1800001', '2561-10-10 16:09:36', '๙๙1800005', '2561-10-17', 'อำนวย กลีบม่วง', 'PT', 'ปริ้นเตอร์ CANON รุ่นIP2770/HRDB54331M', '17', 'test', '14');
/*!40000 ALTER TABLE `repair` ENABLE KEYS */;

-- Dumping structure for table repair.repair_detail
CREATE TABLE IF NOT EXISTS `repair_detail` (
  `id` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_detail: ~0 rows (approximately)
/*!40000 ALTER TABLE `repair_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `repair_detail` ENABLE KEYS */;

-- Dumping structure for table repair.repair_status
CREATE TABLE IF NOT EXISTS `repair_status` (
  `id` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_status: ~14 rows (approximately)
/*!40000 ALTER TABLE `repair_status` DISABLE KEYS */;
INSERT INTO `repair_status` (`id`, `name`) VALUES
	(01, 'ส่งอุปกรณ์ / เคลม'),
	(02, 'รอเสนอราคา'),
	(03, 'เช็คเครื่องเช็คระบบ 400 บาท'),
	(04, 'รอลูกค้าอนุมัติซ่อม'),
	(05, 'ลูกค้ารับแล้ว'),
	(06, 'อนุมัติซ่อม'),
	(07, 'ยกเลิกรายการซ่อม'),
	(08, 'รออะไหล่'),
	(09, 'อะไหล่ส่งศูนย์'),
	(10, 'มัดจำแล้ว'),
	(11, 'รอมัดจำ'),
	(12, 'ซ่อมไม่ได้'),
	(13, 'ซ่อมสำเร็จ'),
	(14, 'อยู่ระหว่างซ่อม');
/*!40000 ALTER TABLE `repair_status` ENABLE KEYS */;

-- Dumping structure for table repair.repair_type
CREATE TABLE IF NOT EXISTS `repair_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `initials` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_type: ~11 rows (approximately)
/*!40000 ALTER TABLE `repair_type` DISABLE KEYS */;
INSERT INTO `repair_type` (`id`, `name`, `initials`) VALUES
	(1, 'ศูนย์บริการซ่อม NOTEBOOK', 'NB'),
	(2, 'ศูนย์บริการซ่อม CASE', 'CS'),
	(3, 'ศูนย์บริการซ่อม PRINTER', 'PT'),
	(4, 'ศูนย์บริการซ่อม เครื่องถ่ายฯ', 'CY'),
	(5, 'ศูนย์บริการซ่อม MONITER', 'MT'),
	(6, 'ศูนย์บริการซ่อม FAX', 'FT'),
	(7, 'ศูนย์บริการซ่อม กล้อง', 'CM'),
	(8, 'ศูนย์บริการซ่อม ตู้สาขา', 'SK'),
	(9, 'ศูนย์บริการซ่อม โทรศัพท์', 'TN'),
	(10, 'ศูนย์บริการซ่อม เครื่องอื่นๆ', 'VE'),
	(11, 'ศูนย์บริการเอกสารส่งซ่อม', 'S0');
/*!40000 ALTER TABLE `repair_type` ENABLE KEYS */;

-- Dumping structure for table repair.s0
CREATE TABLE IF NOT EXISTS `s0` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.s0: ~2 rows (approximately)
/*!40000 ALTER TABLE `s0` DISABLE KEYS */;
INSERT INTO `s0` (`key`) VALUES
	(00001);
/*!40000 ALTER TABLE `s0` ENABLE KEYS */;

-- Dumping structure for table repair.sk
CREATE TABLE IF NOT EXISTS `sk` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.sk: ~1 rows (approximately)
/*!40000 ALTER TABLE `sk` DISABLE KEYS */;
INSERT INTO `sk` (`key`) VALUES
	(00001);
/*!40000 ALTER TABLE `sk` ENABLE KEYS */;

-- Dumping structure for table repair.test
CREATE TABLE IF NOT EXISTS `test` (
  `id` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table repair.test: ~8 rows (approximately)
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` (`id`) VALUES
	('NB1800001'),
	('NB1800002'),
	('CS1800001'),
	('CS1800002'),
	('NB1800003'),
	('CS1800003'),
	('CS1800004'),
	('CS1800005'),
	('NB1800004');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

-- Dumping structure for table repair.tn
CREATE TABLE IF NOT EXISTS `tn` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.tn: ~1 rows (approximately)
/*!40000 ALTER TABLE `tn` DISABLE KEYS */;
INSERT INTO `tn` (`key`) VALUES
	(00001);
/*!40000 ALTER TABLE `tn` ENABLE KEYS */;

-- Dumping structure for table repair.ve
CREATE TABLE IF NOT EXISTS `ve` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.ve: ~2 rows (approximately)
/*!40000 ALTER TABLE `ve` DISABLE KEYS */;
INSERT INTO `ve` (`key`) VALUES
	(00001);
/*!40000 ALTER TABLE `ve` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;