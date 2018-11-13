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
  `device_name` varchar(50) DEFAULT NULL,
  `initials` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.brand: ~36 rows (approximately)
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` (`id`, `name`, `device_name`, `initials`) VALUES
	(1, 'ACER', 'NOTEBOOK', 'NB'),
	(2, 'ASUS', 'NOTEBOOK', 'NB'),
	(3, 'DELL', 'NOTEBOOK', 'NB'),
	(4, 'HP', 'NOTEBOOK', 'NB'),
	(5, 'LENOVO', 'NOTEBOOK', 'NB'),
	(6, 'Acer', 'COMPUTER', 'CS'),
	(7, 'Asus', 'COMPUTER', 'CS'),
	(8, 'Dell', 'COMPUTER', 'CS'),
	(9, 'Hp', 'COMPUTER', 'CS'),
	(10, 'Lenovo', 'COMPUTER', 'CS'),
	(11, 'Intel', 'COMPUTER', 'CS'),
	(12, 'Alienware', 'COMPUTER', 'CS'),
	(13, 'BROTHER', 'PRINTER', 'PT'),
	(14, 'CANON', 'PRINTER', 'PT'),
	(15, 'DOUBLE-A', 'PRINTER', 'PT'),
	(16, 'EPSON', 'PRINTER', 'PT'),
	(17, 'HP', 'PRINTER', 'PT'),
	(18, 'PANASONIC', 'PRINTER', 'PT'),
	(19, 'POLAROID', 'PRINTER', 'PT'),
	(20, 'Samsung ', 'เครื่องถ่ายฯ', 'CY'),
	(21, 'BROTHER', 'เครื่องถ่ายฯ', 'CY'),
	(22, 'ACER', 'MONITER', 'MT'),
	(23, 'Samsung', 'MONITER', 'MT'),
	(24, 'AOC', 'MONITER', 'MT'),
	(25, 'panasonic ', 'FAX', 'FT'),
	(26, 'brother', 'FAX', 'FT'),
	(27, 'Nikon ', 'กล้อง', 'CM'),
	(28, 'CANON ', 'กล้อง', 'CM'),
	(29, 'Sony ', 'กล้อง', 'CM'),
	(30, 'Panasonic ', 'กล้อง', 'CM'),
	(31, 'Fujifilm', 'กล้อง', 'CM'),
	(32, 'Olympus ', 'กล้อง', 'CM'),
	(33, 'ตู้สาขาอื่นๆ', 'ตู้สาขา', 'SK'),
	(34, 'Samsung', 'โทรศัพท์', 'TN'),
	(35, 'เครื่องอื่นๆ', 'เครื่องอื่นๆ', 'VE'),
	(36, 'ส่งซ่อม', 'ส่งซ่อม', 'S0');
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
	('๙๙1800011', 'มนัส กลีบม่วง', 'บ้านหนองขอน', '(089) 234-8985');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table repair.customer_seq
CREATE TABLE IF NOT EXISTS `customer_seq` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
	(00012);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.device: ~2 rows (approximately)
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` (`id`, `serial_number`, `device_category`, `brand`, `generation`, `warranty`, `price`, `cpu`, `memory`, `harddisk`, `graphics`, `display`, `os`, `note`, `custromer_id`, `device_date`) VALUES
	(1, 'E74707E7H370866', 'PRINTER', 'BROTHER', 'DCP-T500W', '2Y', 5290, NULL, NULL, NULL, NULL, NULL, NULL, '- - ', '๙๙1800001', '2018-11-09 23:52:20'),
	(2, 'W5675603STH', 'NOTEBOOK', 'ACER', 'Inspiron 7577', '2Y-OnSite', 26990, 'Intel Core i7-7700HQ (2.80 GHz, 6 MB L3 Cache, up to 3.80 GHz)', '8 GB DDR4', '1 TB 5400 RPM + 128 GB SSD', 'NVIDIA GeForce GTX 1050Ti (4GB GDDR5)', '15.6 inch (1920x1080) Full HD', '-', '-', '๙๙1800009', '2018-11-09 23:52:20');
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

-- Dumping structure for table repair.job_type
CREATE TABLE IF NOT EXISTS `job_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.job_type: ~4 rows (approximately)
/*!40000 ALTER TABLE `job_type` DISABLE KEYS */;
INSERT INTO `job_type` (`id`, `name`) VALUES
	(1, 'ปัญหาโปรแกรม'),
	(2, 'ปัญหาอุปกรณ์'),
	(3, 'ปัญหาระบบเครือข่าย'),
	(4, 'ปัญหา / งาน อื่น ๆ');
/*!40000 ALTER TABLE `job_type` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

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
	(00057);
/*!40000 ALTER TABLE `nb` ENABLE KEYS */;

-- Dumping structure for table repair.problem
CREATE TABLE IF NOT EXISTS `problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `repair_type_name` varchar(50) DEFAULT NULL,
  `repair_type_initials` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.problem: ~41 rows (approximately)
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` (`id`, `name`, `repair_type_name`, `repair_type_initials`) VALUES
	(1, 'จอฟ้าา', 'NOTEBOOK', 'NB'),
	(2, 'อิอิ', 'NOTEBOOK', 'NB'),
	(3, 'ลงวินโดว์ 77', 'NOTEBOOK', 'NB'),
	(4, 'ลงวินโดว์ xp', 'NOTEBOOK', 'NB'),
	(5, 'เครื่องค้าง', 'NOTEBOOK', 'NB'),
	(6, 'เครื่องแฮงค์', 'NOTEBOOK', 'NB'),
	(7, 'Disk 100%', 'NOTEBOOK', 'NB'),
	(8, 'อื่นๆ', 'NOTEBOOK', 'NB'),
	(9, 'ลงวินโดว์ 10', 'COMPUTER', 'CS'),
	(10, 'ลงวินโดว์ 8', 'COMPUTER', 'CS'),
	(11, 'ลงวินโดว์ 7', 'COMPUTER', 'CS'),
	(12, 'ลงวินโดว์ xp', 'COMPUTER', 'CS'),
	(13, 'เครื่องค้าง', 'COMPUTER', 'CS'),
	(14, 'เครื่องค้าง', 'COMPUTER', 'CS'),
	(15, 'Disk 100%', 'COMPUTER', 'CS'),
	(16, 'อื่นๆ', 'COMPUTER', 'CS'),
	(17, 'ตัวหนังสือที่หายไปบนผืนกระดาษ', 'PRINTER', 'PT'),
	(18, 'สั่งพิมพ์ได้แต่ดันกลายเป็นเส้นๆ', 'PRINTER', 'PT'),
	(19, 'มีจุดไข่ปลาที่ขอบกระดาษด้านบนและล่าง', 'PRINTER', 'PT'),
	(20, 'กระดาษค้าง', 'เครื่องถ่ายฯ', 'CY'),
	(21, 'ไฟไม่เข้า', 'MONITER', 'MT'),
	(22, 'มีเส้น', 'MONITER', 'MT'),
	(23, 'ไฟไม่เข้า', 'FAX', 'FT'),
	(24, 'น้ำเข้า', 'กล้อง', 'CM'),
	(25, 'เลนไม่ชัด', 'กล้อง', 'CM'),
	(26, 'ติดตั้งตู้', 'ตู้สาขา', 'SK'),
	(27, 'เปิดเครื่องไม่ติด', 'โทรศัพท์', 'TN'),
	(28, 'xxx', 'เครื่องอื่นๆ', 'VE'),
	(29, 'บริษัท ส่งซ่อม xxxx', 'ส่งซ่อม', 'S0'),
	(30, 'amnuay', 'NOTEBOOK', 'NB'),
	(31, 'เสียงดังงงงงงงงงง5555', 'NOTEBOOK', 'NB'),
	(32, 'ไม่ทราบสาเหตุ', 'NOTEBOOK', 'NB'),
	(33, 'อื่นๆ', 'NOTEBOOK', 'NB'),
	(35, 'อื่นๆ', 'PRINTER', 'PT'),
	(36, 'อื่นๆ', 'เครื่องถ่ายฯ', 'CY'),
	(38, 'อื่นๆ', 'MONITER', 'MT'),
	(39, 'อื่นๆ', 'FAX', 'FT'),
	(40, 'อื่นๆ', 'กล้อง', 'CM'),
	(41, 'อื่นๆ', 'ตู้สาขา', 'SK'),
	(42, 'อื่นๆ', 'โทรศัพท์', 'TN'),
	(44, 'อื่นๆ', 'ส่งซ่อม', 'S0'),
	(45, 'จอเสีย', 'NOTEBOOK', 'NB');
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;

-- Dumping structure for table repair.pt
CREATE TABLE IF NOT EXISTS `pt` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.pt: ~7 rows (approximately)
/*!40000 ALTER TABLE `pt` DISABLE KEYS */;
INSERT INTO `pt` (`key`) VALUES
	(00001),
	(00002),
	(00003),
	(00004),
	(00005),
	(00006),
	(00007);
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
  `member_id` varchar(50) DEFAULT NULL,
  `repair_status` int(2) unsigned zerofill DEFAULT NULL,
  `spareparts` varchar(50) DEFAULT NULL,
  `servicecharge` varchar(50) DEFAULT NULL,
  `sum` varchar(50) DEFAULT NULL,
  `completion_date` datetime DEFAULT NULL,
  `technician` varchar(50) DEFAULT '',
  `technicial_note` text,
  `technicial_note_detail` text,
  `repair_limit` varchar(50) DEFAULT NULL,
  `job_type` int(2) DEFAULT NULL,
  `accessories` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair: ~4 rows (approximately)
/*!40000 ALTER TABLE `repair` DISABLE KEYS */;
INSERT INTO `repair` (`id`, `repair_id`, `customer_id`, `device_id`, `repair_date`, `complete_date`, `problem`, `member_id`, `repair_status`, `spareparts`, `servicecharge`, `sum`, `completion_date`, `technician`, `technicial_note`, `technicial_note_detail`, `repair_limit`, `job_type`, `accessories`) VALUES
	(1, 'PT1800006', '๙๙1800011', 1, '2561-11-11 03:39:09', '2561-11-18', 'xxx', 'Admin', 01, '300', '200', '500', NULL, '', 'xxx', '', '5000', 7, 'สายไฟ'),
	(2, 'PT1800007', '๙๙1800011', 1, '2018-11-12 04:56:08', '2018-11-19', 'zzz', 'Admin', 17, NULL, NULL, NULL, NULL, '', NULL, 'ลบzzzออก ก็หายแล้ว', NULL, 7, 'สายไฟ'),
	(3, 'NB1800055', '๙๙1800011', 2, '2561-11-13 03:19:12', '2561-11-20', 'ลงวินโดร์ 10', 'Admin', 17, '4454', '300', '4754', '2561-11-14 00:27:16', 'Admin', '', 'ลงเสร็จแล้ว มารับได้เลย', '300', 1, 'สายดะ แร็พเตอร์'),
	(4, 'NB1800056', '๙๙1800011', 2, '2561-11-13 04:07:01', '2561-11-20', 'ลงโปรแกรม', 'Admin', 03, '', '', '', NULL, '', '', NULL, '', 4, '');
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
  `member_id` varchar(50) DEFAULT NULL,
  `repair_status` int(2) unsigned zerofill DEFAULT NULL,
  `spareparts` varchar(50) DEFAULT NULL,
  `servicecharge` varchar(50) DEFAULT NULL,
  `sum` varchar(50) DEFAULT NULL,
  `completion_date` datetime DEFAULT NULL,
  `technician` varchar(50) DEFAULT '',
  `technicial_note` text,
  `technicial_note_detail` text,
  `repair_limit` varchar(50) DEFAULT NULL,
  `job_type` int(2) DEFAULT NULL,
  `accessories` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `repair_history` DISABLE KEYS */;
INSERT INTO `repair_history` (`id`, `repair_id`, `customer_id`, `device_id`, `repair_date`, `complete_date`, `problem`, `member_id`, `repair_status`, `spareparts`, `servicecharge`, `sum`, `completion_date`, `technician`, `technicial_note`, `technicial_note_detail`, `repair_limit`, `job_type`, `accessories`) VALUES
	(1, 'PT1800006', '๙๙1800011', 1, '2561-11-11 03:39:09', '2561-11-18', 'xxx', 'Admin', 01, '300', '200', '500', NULL, '', 'xxx', NULL, '5000', 1, 'xx'),
	(2, 'NB1800056', '๙๙1800011', 2, '2561-11-13 04:07:01', '2561-11-20', 'ลงโปรแกรม', 'Admin', 03, '', '', '', NULL, '', '', NULL, '', 4, '');
/*!40000 ALTER TABLE `repair_history` ENABLE KEYS */;

-- Dumping structure for table repair.repair_status
CREATE TABLE IF NOT EXISTS `repair_status` (
  `id` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_status: ~18 rows (approximately)
/*!40000 ALTER TABLE `repair_status` DISABLE KEYS */;
INSERT INTO `repair_status` (`id`, `name`, `role`) VALUES
	(01, 'แจ้งซ่อม', 'พนักงาน'),
	(02, 'อยู่ระหว่างซ่อม', 'พนักงาน'),
	(03, 'รอลูกค้าอนุมัติซ่อม', 'พนักงาน'),
	(04, 'รอมัดจำ', 'พนักงาน'),
	(05, 'ลูกค้ารับแล้ว', 'พนักงาน'),
	(06, 'อนุมัติซ่อม', 'พนักงาน'),
	(07, 'ยกเลิกรายการซ่อม', 'พนักงาน'),
	(08, 'รออะไหล่', 'ช่างซ่อม'),
	(09, 'อะไหล่ส่งศูนย์', 'ช่างซ่อม'),
	(11, 'ปัญหาอื่น ๆ', 'พนักงาน'),
	(12, 'ซ่อมไม่ได้', 'ช่างซ่อม'),
	(13, 'ซ่อมสำเร็จ', 'ช่างซ่อม'),
	(14, 'ส่งอุปกรณ์ / เคลม', 'ช่างซ่อม'),
	(15, 'ส่งซ่อม', 'ช่างซ่อม'),
	(16, 'รอเสนอราคา', 'ช่างซ่อม'),
	(17, 'ส่งคืน', 'ช่างซ่อม'),
	(18, 'รอตรวจสอบ', 'ช่างซ่อม'),
	(19, 'test สถานะ', 'ช่างซ่อม');
/*!40000 ALTER TABLE `repair_status` ENABLE KEYS */;

-- Dumping structure for table repair.request_type
CREATE TABLE IF NOT EXISTS `request_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `job_type` varchar(50) DEFAULT NULL,
  `job_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.request_type: ~12 rows (approximately)
/*!40000 ALTER TABLE `request_type` DISABLE KEYS */;
INSERT INTO `request_type` (`id`, `name`, `job_type`, `job_type_id`) VALUES
	(1, 'แจ้งปัญหาใช้งานระบบปฏิบัติการ Windows/Mac OS', 'ปัญหาโปรแกรม', 1),
	(2, 'แจ้งปัญหาใช้งานโปรแกรม MS Office ไม่ได้', 'ปัญหาโปรแกรม', 1),
	(3, 'แจ้งปัญหาเข้าใข้งาน Email ไม่ได้', 'ปัญหาโปรแกรม', 1),
	(4, 'แจ้งขอติดตั้งโปรแกรมใหม่ Install New Program', 'ปัญหาโปรแกรม', 1),
	(5, 'แจ้งปัญหาการใช้งานโปรแกรมอื่น ๆ', 'ปัญหาโปรแกรม', 1),
	(6, 'แจ้งปัญหาเครื่อง Computer / Notebook', 'ปัญหาอุปกรณ์', 2),
	(7, 'แจ้งปัญหาเครื่อง Printer / Scanner', 'ปัญหาอุปกรณ์', 2),
	(8, 'แจ้งปัญหาอุปกรณ์ เครือข่าย ใช้งานไม่ได้', 'ปัญหาอุปกรณ์', 2),
	(9, 'แจ้งปัญหาอุปกรณ์ อื่น ๆ', 'ปัญหาอุปกรณ์', 2),
	(10, 'แจ้งปัญหาไม่สามารถใช้งาน Internet ได้', 'ปัญหาระบบเครือข่าย', 3),
	(11, 'แจ้งปัญหาไม่สามารถเข้าใช้งาน Server ระบบภายในบริษัท', 'ปัญหาระบบเครือข่าย', 3),
	(12, 'แจ้งปัญหา / งานซ่อม เรื่อง อื่น ๆ', 'ปัญหา / งาน อื่น ๆ', 4);
/*!40000 ALTER TABLE `request_type` ENABLE KEYS */;

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
