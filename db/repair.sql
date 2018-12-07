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

-- Dumping structure for table repair.brand
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `device_category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.brand: ~35 rows (approximately)
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` (`id`, `name`, `device_category_name`) VALUES
	(1, 'ACER', 'NOTEBOOK'),
	(2, 'ASUS', 'NOTEBOOK'),
	(3, 'DELL', 'NOTEBOOK'),
	(4, 'HP', 'NOTEBOOK'),
	(5, 'LENOVO', 'NOTEBOOK'),
	(6, 'Acer', 'COMPUTER'),
	(7, 'Asus', 'COMPUTER'),
	(8, 'Dell', 'COMPUTER'),
	(9, 'Hp', 'COMPUTER'),
	(10, 'Lenovo', 'COMPUTER'),
	(11, 'Intel', 'COMPUTER'),
	(12, 'Alienware', 'COMPUTER'),
	(13, 'BROTHER', 'PRINTER'),
	(14, 'CANON', 'PRINTER'),
	(15, 'DOUBLE-A', 'PRINTER'),
	(16, 'EPSON', 'PRINTER'),
	(17, 'HP', 'PRINTER'),
	(18, 'PANASONIC', 'PRINTER'),
	(19, 'POLAROID', 'PRINTER'),
	(20, 'Samsung ', 'เครื่องถ่ายฯ'),
	(21, 'BROTHER', 'เครื่องถ่ายฯ'),
	(22, 'ACER', 'MONITER'),
	(23, 'Samsung', 'MONITER'),
	(24, 'AOC', 'MONITER'),
	(25, 'panasonic ', 'FAX'),
	(26, 'brother', 'FAX'),
	(27, 'Nikon ', 'กล้อง'),
	(28, 'CANON ', 'กล้อง'),
	(29, 'Sony ', 'กล้อง'),
	(30, 'Panasonic ', 'กล้อง'),
	(31, 'Fujifilm', 'กล้อง'),
	(32, 'Olympus ', 'กล้อง'),
	(33, 'ตู้สาขาอื่นๆ', 'ตู้สาขา'),
	(34, 'Samsung', 'โทรศัพท์'),
	(35, 'เครื่องอื่นๆ', 'เครื่องอื่นๆ');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;

-- Dumping structure for table repair.cm
CREATE TABLE IF NOT EXISTS `cm` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.cm: ~2 rows (approximately)
/*!40000 ALTER TABLE `cm` DISABLE KEYS */;
INSERT INTO `cm` (`key`) VALUES
	(00001),
	(00002);
/*!40000 ALTER TABLE `cm` ENABLE KEYS */;

-- Dumping structure for table repair.company
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.company: ~2 rows (approximately)
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`id`, `name`) VALUES
	(001, 'บริษัท บราเดอร์ คอมเมอร์เชี่ยล (ประเทศไทย) จำกัด '),
	(002, 'บริษัท เอเซอร์ คอมพิวเตอร์ จำกัด ');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;

-- Dumping structure for table repair.cs
CREATE TABLE IF NOT EXISTS `cs` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.cs: ~5 rows (approximately)
/*!40000 ALTER TABLE `cs` DISABLE KEYS */;
INSERT INTO `cs` (`key`) VALUES
	(00001),
	(00002),
	(00003),
	(00004),
	(00005);
/*!40000 ALTER TABLE `cs` ENABLE KEYS */;

-- Dumping structure for table repair.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `id` char(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` text,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table repair.customer: ~5 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`, `name`, `address`, `phone`) VALUES
	('๙๙1800001', 'ลูกค้า A', 'กระสัง จ.บุรีรัมย์ 31160 ', '(099) 809-4514'),
	('๙๙1800003', 'บี ', 'ระกา', '(089) 898-9898'),
	('๙๙1800005', 'ทวีกิจ', 'บุรีรัมย์', '(044) 142-5555'),
	('๙๙1800006', 'bew', 'บุรีรัมย์', '(555) 555-5555'),
	('๙๙1800009', 'Amornphet Talubthong', '50/30 ซอย.แสนสุข อ.เมือง จ.บุรีรัมย์ 31000', '(090) 186-9167'),
	('๙๙1800010', 'สกล กมลรัมย์', 'ประโคนชัย', '(083) 456-4748'),
	('๙๙1800011', 'มนัส กลีบม่วง', 'บ้านหนองขอน', '(089) 234-8985'),
	('๙๙1800012', 'อำนวย กลีบม่วง', 'กระสัง', '(099) 809-4514');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table repair.customer_seq
CREATE TABLE IF NOT EXISTS `customer_seq` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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
	(00009),
	(00010),
	(00011),
	(00012),
	(00013);
/*!40000 ALTER TABLE `customer_seq` ENABLE KEYS */;

-- Dumping structure for table repair.cy
CREATE TABLE IF NOT EXISTS `cy` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.cy: ~1 rows (approximately)
/*!40000 ALTER TABLE `cy` DISABLE KEYS */;
INSERT INTO `cy` (`key`) VALUES
	(00001),
	(00002),
	(00003);
/*!40000 ALTER TABLE `cy` ENABLE KEYS */;

-- Dumping structure for table repair.device
CREATE TABLE IF NOT EXISTS `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(50) DEFAULT NULL,
  `device_category` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `generation` varchar(50) DEFAULT NULL,
  `warranty` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `cpu` text,
  `memory` text,
  `harddisk` text,
  `graphics` text,
  `display` text,
  `os` text,
  `note` varchar(50) DEFAULT NULL,
  `custromer_id` varchar(50) DEFAULT NULL,
  `device_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.device: ~4 rows (approximately)
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` (`id`, `serial_number`, `device_category`, `brand`, `generation`, `warranty`, `price`, `cpu`, `memory`, `harddisk`, `graphics`, `display`, `os`, `note`, `custromer_id`, `device_date`) VALUES
	(1, 'E74707E7H370866', 'PRINTER', 'BROTHER', 'DCP-T500W', '2Y', 5290, NULL, NULL, NULL, NULL, NULL, NULL, '- - ', '๙๙1800011', '2018-11-09 23:52:20'),
	(2, 'W5675603STH', 'NOTEBOOK', 'DELL', 'Inspiron 7577', '2Y-OnSite', 26990, 'Intel Core i7-7700HQ (2.80 GHz, 6 MB L3 Cache, up to 3.80 GHz)', '8 GB DDR4', '1 TB 5400 RPM + 128 GB SSD', 'NVIDIA GeForce GTX 1050Ti (4GB GDDR5)', '15.6 inch (1920x1080) Full HD', '-', '-', '๙๙1800009', '2018-11-09 23:52:20'),
	(3, '5P31FP2', 'NOTEBOOK', 'DELL', 'G3 15 3579', '2-Y', 22900, 'Intel Core i5-8300H (2.30 - 4.00 GHz) ', '12 GB DDR4', '1TB', 'NVIDIA GeForce GTX 1050 (4GB GDDR5)', '15.6 inch (1920x1080) Full HD IPS', 'WIN 10', ' - -', '๙๙1800012', '2561-11-14 03:07:15'),
	(4, 'ESD-1410019C', 'PRINTER', 'BROTHER', 'DCP-T500W', '2Y', 4990, NULL, NULL, NULL, NULL, NULL, NULL, '', '๙๙1800012', '2561-11-14 03:55:12'),
	(5, '80WK01F4TA', 'NOTEBOOK', 'LENOVO', 'LEGION Y520-15IKBN-80WK01F4TA', '2Y', 19990, 'INTEL CORE I7-7700HQ', '8 GB DDR4', '1 TB 5400 RPM', 'GEFORCE GTX1050 4 GB GDDR5', '15.6" FHD IPS AG (SLIM) ', 'WINDOWS 10 HOME', '', '๙๙1800003', '2561-11-15 05:12:03');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;

-- Dumping structure for table repair.device_category
CREATE TABLE IF NOT EXISTS `device_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `initials` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.device_category: ~10 rows (approximately)
/*!40000 ALTER TABLE `device_category` DISABLE KEYS */;
INSERT INTO `device_category` (`id`, `name`, `initials`) VALUES
	(1, 'NOTEBOOK', 'NB'),
	(2, 'COMPUTER', 'CS'),
	(3, 'PRINTER', 'PT'),
	(4, 'เครื่องถ่ายฯ', 'CY'),
	(5, 'MONITER', 'MT'),
	(6, 'FAX', 'FT'),
	(7, 'กล้อง', 'CM'),
	(8, 'ตู้สาขา', 'SK'),
	(9, 'โทรศัพท์', 'TN'),
	(10, 'เครื่องอื่นๆ', 'VE');
/*!40000 ALTER TABLE `device_category` ENABLE KEYS */;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.member: ~4 rows (approximately)
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `email`, `password`, `name`, `phone`, `address`, `gender`, `role`, `status`) VALUES
	(001, 'a@a', 'a', 'Admin', '', '', 'ชาย', 'admin', 'ใช้งาน'),
	(002, 'sakon@bru.ac.th', '1234', 'สกล กมลรัมย์', '(083) 728-5455', 'ประโคนชัย', 'ชาย', 'พนักงาน', 'ใช้งาน'),
	(003, 'jook@bru.ac.th', '1234', 'Kittiphong Aumphimai', '(089) 854-5454', 'ช้างอารีนา', 'ชาย', 'ช่างซ่อม', 'ใช้งาน'),
	(004, 'amnuay.kle@bru.ac.th', 'a', 'a', '(999) 999-9999', 'a', 'ชาย', 'ช่างซ่อม', 'ใช้งาน'),
	(005, 'a@a', 'aa', 'อำนวย กลีบม่วง', '(555) 555-5555', 'dsad', 'ชาย', 'ช่างซ่อม', 'เลิกใช้งาน');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- Dumping structure for table repair.mt
CREATE TABLE IF NOT EXISTS `mt` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.mt: ~1 rows (approximately)
/*!40000 ALTER TABLE `mt` DISABLE KEYS */;
INSERT INTO `mt` (`key`) VALUES
	(00001),
	(00002),
	(00003);
/*!40000 ALTER TABLE `mt` ENABLE KEYS */;

-- Dumping structure for table repair.nb
CREATE TABLE IF NOT EXISTS `nb` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.nb: ~40 rows (approximately)
/*!40000 ALTER TABLE `nb` DISABLE KEYS */;
INSERT INTO `nb` (`key`) VALUES
	(00001),
	(00002),
	(00003),
	(00004),
	(00005),
	(00006),
	(00007),
	(00008),
	(00009),
	(00010),
	(00011),
	(00012),
	(00013),
	(00014),
	(00015),
	(00016),
	(00017),
	(00018),
	(00019),
	(00020),
	(00021),
	(00022),
	(00023),
	(00024),
	(00025),
	(00026),
	(00027),
	(00028),
	(00029),
	(00030),
	(00031),
	(00032),
	(00033),
	(00034),
	(00035),
	(00036),
	(00037),
	(00038),
	(00039),
	(00040),
	(00041),
	(00042),
	(00043),
	(00044),
	(00045),
	(00046),
	(00047),
	(00048),
	(00049),
	(00050),
	(00051),
	(00052),
	(00053),
	(00054),
	(00055),
	(00056),
	(00057),
	(00058),
	(00059),
	(00060),
	(00061),
	(00062),
	(00063),
	(00064),
	(00065),
	(00066),
	(00067),
	(00068),
	(00069);
/*!40000 ALTER TABLE `nb` ENABLE KEYS */;

-- Dumping structure for table repair.problem
CREATE TABLE IF NOT EXISTS `problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `device_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.problem: ~33 rows (approximately)
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` (`id`, `name`, `device_category_id`) VALUES
	(1, 'อื่นๆ', 1),
	(2, 'ลงวินโดว์ xp', 1),
	(3, 'เครื่องค้าง', 1),
	(4, 'เครื่องแฮงค์', 1),
	(5, 'Disk 100%', 1),
	(6, 'ลงวินโดว์ 8', 2),
	(7, 'ลงวินโดว์ 7', 2),
	(8, 'ลงวินโดว์ xp', 2),
	(9, 'ลงวินโดว์ 10', 2),
	(10, 'เครื่องค้าง', 2),
	(11, 'Disk 100%', 2),
	(12, 'อื่นๆ', 3),
	(13, 'สั่งพิมพ์ได้แต่ดันกลายเป็นเส้นๆ', 3),
	(14, 'มีจุดไข่ปลาที่ขอบกระดาษด้านบนและล่าง', 3),
	(23, 'ลงวินโดว์ 7', 1),
	(24, 'เปลี่ยนฮาร์ดดิส', 1),
	(25, 'อื่นๆ', 2),
	(26, 'ตัวหนังสือที่หายไปบนผืนกระดาษ', 3),
	(34, 'ลงวินโดว์ 8', 1),
	(35, 'ลงวินโดว์ 10', 1),
	(37, 'อื่นๆ', 4),
	(38, 'อื่นๆ', 5),
	(39, 'อื่นๆ', 6),
	(40, 'อื่นๆ', 7),
	(41, 'อื่นๆ', 8),
	(42, 'อื่นๆ', 9),
	(43, 'อื่นๆ', 10),
	(44, 'อื่นๆ', 11),
	(45, 'อื่นๆ', 12),
	(46, 'อื่นๆ', 13),
	(47, 'เปลี่ยนแป้นคีย์บอร์ด', 1),
	(48, 'เติมหมึก / ตลับ', 3),
	(49, 'Touchpad เสีย', 1);
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;

-- Dumping structure for table repair.pt
CREATE TABLE IF NOT EXISTS `pt` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.pt: ~7 rows (approximately)
/*!40000 ALTER TABLE `pt` DISABLE KEYS */;
INSERT INTO `pt` (`key`) VALUES
	(00001),
	(00002),
	(00003),
	(00004),
	(00005),
	(00006),
	(00007),
	(00008),
	(00009),
	(00010);
/*!40000 ALTER TABLE `pt` ENABLE KEYS */;

-- Dumping structure for table repair.repair
CREATE TABLE IF NOT EXISTS `repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_id` char(9) DEFAULT NULL,
  `customer_id` char(9) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `repair_date` datetime DEFAULT NULL,
  `complete_date` date DEFAULT NULL,
  `problem` longtext,
  `other` longtext,
  `member_id` varchar(50) DEFAULT NULL,
  `repair_status` int(2) unsigned zerofill DEFAULT NULL,
  `spareparts` decimal(10,0) DEFAULT NULL,
  `servicecharge` decimal(10,0) DEFAULT NULL,
  `sum` decimal(10,0) DEFAULT NULL,
  `completion_date` datetime DEFAULT NULL,
  `technician` varchar(50) DEFAULT '',
  `technicial_note` text,
  `technicial_note_detail` text,
  `repair_limit` decimal(10,0) DEFAULT NULL,
  `job_type` int(2) DEFAULT NULL,
  `accessories` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair: ~3 rows (approximately)
/*!40000 ALTER TABLE `repair` DISABLE KEYS */;
INSERT INTO `repair` (`id`, `repair_id`, `customer_id`, `device_id`, `repair_date`, `complete_date`, `problem`, `other`, `member_id`, `repair_status`, `spareparts`, `servicecharge`, `sum`, `completion_date`, `technician`, `technicial_note`, `technicial_note_detail`, `repair_limit`, `job_type`, `accessories`) VALUES
	(14, 'NB1800068', '๙๙1800012', 3, '2561-11-29 00:07:37', '2561-12-06', 'ลงวินโดว์ 10', NULL, 'Admin', 07, NULL, NULL, NULL, '2561-12-03 13:06:39', 'Admin', '', 'xxx', 300, 1, 'สายอะแเดบเตอร์'),
	(15, 'PT1800009', '๙๙1800012', 4, '2561-11-29 00:14:07', '2561-12-06', 'เติมหมึก / ตลับ', NULL, 'Admin', 14, 500, 500, 1000, '2561-12-03 10:24:53', 'สกล กมลรัมย์', '', '', NULL, 3, 'สายไฟ'),
	(16, 'NB1800069', '๙๙1800012', 3, '2561-11-29 00:07:37', '2561-12-06', 'Touchpad เสีย', NULL, 'Admin', 01, NULL, NULL, NULL, '2561-12-07 04:50:50', 'Admin', NULL, '', NULL, 1, NULL);
/*!40000 ALTER TABLE `repair` ENABLE KEYS */;

-- Dumping structure for table repair.repair_history
CREATE TABLE IF NOT EXISTS `repair_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_id` char(9) DEFAULT NULL,
  `customer_id` char(9) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `repair_date` datetime DEFAULT NULL,
  `complete_date` date DEFAULT NULL,
  `problem` longtext,
  `other` longtext,
  `member_id` varchar(50) DEFAULT NULL,
  `repair_status` int(2) unsigned zerofill DEFAULT NULL,
  `spareparts` decimal(10,0) DEFAULT NULL,
  `servicecharge` decimal(10,0) DEFAULT NULL,
  `sum` decimal(10,0) DEFAULT NULL,
  `completion_date` datetime DEFAULT NULL,
  `technician` varchar(50) DEFAULT '',
  `technicial_note` text,
  `technicial_note_detail` text,
  `repair_limit` decimal(10,0) DEFAULT NULL,
  `job_type` int(2) DEFAULT NULL,
  `accessories` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_history: ~10 rows (approximately)
/*!40000 ALTER TABLE `repair_history` DISABLE KEYS */;
INSERT INTO `repair_history` (`id`, `repair_id`, `customer_id`, `device_id`, `repair_date`, `complete_date`, `problem`, `other`, `member_id`, `repair_status`, `spareparts`, `servicecharge`, `sum`, `completion_date`, `technician`, `technicial_note`, `technicial_note_detail`, `repair_limit`, `job_type`, `accessories`) VALUES
	(46, 'NB1800068', '๙๙1800012', 3, '2561-11-29 00:07:37', '2561-12-06', 'ลงวินโดว์ 10', NULL, 'Admin', 01, NULL, NULL, NULL, '2561-11-29 00:07:37', '', '', NULL, 300, 1, 'สายอะแเดบเตอร์'),
	(48, 'NB1800068', '๙๙1800012', 3, '2561-11-29 00:07:37', '2561-12-06', 'ลงวินโดว์ 10', NULL, 'Admin', 03, NULL, NULL, NULL, '2561-11-29 00:12:50', 'Admin', '', '', 300, 1, 'สายอะแเดบเตอร์'),
	(49, 'NB1800068', '๙๙1800012', 3, '2561-11-29 00:07:37', '2561-12-06', 'ลงวินโดว์ 10', NULL, 'Admin', 11, NULL, NULL, NULL, '2561-11-29 00:13:15', 'Admin', '', '', 300, 1, 'สายอะแเดบเตอร์'),
	(50, 'NB1800068', '๙๙1800012', 3, '2561-11-29 00:07:37', '2561-12-06', 'ลงวินโดว์ 10', NULL, 'Admin', 13, NULL, NULL, NULL, '2561-11-29 00:13:28', 'Admin', '', '', 300, 1, 'สายอะแเดบเตอร์'),
	(52, 'PT1800009', '๙๙1800012', 4, '2561-11-29 00:14:07', '2561-12-06', 'เติมหมึก / ตลับ', NULL, 'Admin', 01, NULL, NULL, NULL, '2561-11-29 00:14:07', '', '', NULL, NULL, 3, 'สายไฟ'),
	(53, 'PT1800009', '๙๙1800012', 4, '2561-11-29 00:14:07', '2561-12-06', 'เติมหมึก / ตลับ', NULL, 'Admin', 02, NULL, NULL, NULL, '2561-11-29 00:15:07', 'Admin', '', '', NULL, 3, 'สายไฟ'),
	(54, 'PT1800009', '๙๙1800012', 4, '2561-11-29 00:14:07', '2561-12-06', 'เติมหมึก / ตลับ', NULL, 'Admin', 11, NULL, NULL, NULL, '2561-11-29 00:45:33', 'Admin', '', '', NULL, 3, 'สายไฟ'),
	(56, 'NB1800068', '๙๙1800012', 3, '2561-11-29 00:07:37', '2561-12-06', 'ลงวินโดว์ 10', NULL, 'Admin', 14, NULL, 300, 300, '2561-12-02 23:34:08', 'Admin', '', '', 300, 1, 'สายอะแเดบเตอร์'),
	(59, 'PT1800009', '๙๙1800012', 4, '2561-11-29 00:14:07', '2561-12-06', 'เติมหมึก / ตลับ', NULL, 'Admin', 13, NULL, NULL, NULL, '2561-12-03 10:24:12', 'Admin', '', '', NULL, 3, 'สายไฟ'),
	(60, 'PT1800009', '๙๙1800012', 4, '2561-11-29 00:14:07', '2561-12-06', 'เติมหมึก / ตลับ', NULL, 'Admin', 14, 500, 300, 800, '2561-12-03 10:24:53', 'สกล กมลรัมย์', '', '', NULL, 3, 'สายไฟ');
/*!40000 ALTER TABLE `repair_history` ENABLE KEYS */;

-- Dumping structure for table repair.repair_status
CREATE TABLE IF NOT EXISTS `repair_status` (
  `id` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_status: ~14 rows (approximately)
/*!40000 ALTER TABLE `repair_status` DISABLE KEYS */;
INSERT INTO `repair_status` (`id`, `name`) VALUES
	(01, 'แจ้งซ่อม'),
	(02, 'รอตรวจสอบ'),
	(03, 'อยู่ระหว่างซ่อม'),
	(04, 'แจ้งราคาซ่อม'),
	(05, 'ลูกค้าตกลงซ่อม'),
	(06, 'ลูกค้าไม่ซ่อม'),
	(07, 'ซ่อมได้'),
	(08, 'ซ่อมไม่ได้'),
	(09, 'เบิกอะไหล่'),
	(10, 'ดำเนินการซ่อม'),
	(11, 'ซ่อมเสร็จแล้ว'),
	(12, 'ยกเลิกการซ่อม'),
	(13, 'ส่งคืนพนักงาน'),
	(14, 'ส่งคืนสินค้าแล้ว'),
	(15, 'ส่งซ่อม');
/*!40000 ALTER TABLE `repair_status` ENABLE KEYS */;

-- Dumping structure for table repair.repair_type
CREATE TABLE IF NOT EXISTS `repair_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_type: ~14 rows (approximately)
/*!40000 ALTER TABLE `repair_type` DISABLE KEYS */;
INSERT INTO `repair_type` (`id`, `name`) VALUES
	(1, 'เครื่องคอมพิวเตอร์Notebook'),
	(2, 'เครื่องคอมพิวเตอร์PC'),
	(3, 'เครื่องพิมพ์เลเซอร์Laser Printer'),
	(4, 'เครื่องพิมพ์แบบพ่นหมึก(Inkjet)'),
	(5, 'เครื่องพิมพ์ดอทเมทริกซ์(Dot matrix)'),
	(6, 'เครื่องสแกนเนอร์(Scanner)'),
	(7, 'เครื่องสำรองไฟ(UPS)'),
	(8, 'อินเทอร์เน็ต(Internet)'),
	(9, 'ระบบเครือข่าย (Network)'),
	(10, 'ไวรัสคอมพิวเตอร์(Virus Computer)'),
	(11, 'จอคอมพิวเตอร์'),
	(12, 'DVD-RW'),
	(13, 'External HDD'),
	(17, 'อื่นๆ');
/*!40000 ALTER TABLE `repair_type` ENABLE KEYS */;

-- Dumping structure for table repair.s0
CREATE TABLE IF NOT EXISTS `s0` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.s0: ~5 rows (approximately)
/*!40000 ALTER TABLE `s0` DISABLE KEYS */;
INSERT INTO `s0` (`key`) VALUES
	(00001),
	(00002),
	(00003),
	(00004),
	(00005);
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
