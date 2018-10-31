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
	(6, 'Acer', 'CASE', 'CS'),
	(7, 'Asus', 'CASE', 'CS'),
	(8, 'Dell', 'CASE', 'CS'),
	(9, 'Hp', 'CASE', 'CS'),
	(10, 'Lenovo', 'CASE', 'CS'),
	(11, 'Intel', 'CASE', 'CS'),
	(12, 'Alienware', 'CASE', 'CS'),
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.cm: ~1 rows (approximately)
/*!40000 ALTER TABLE `cm` DISABLE KEYS */;
INSERT INTO `cm` (`key`) VALUES
	(00001);
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
	('๙๙1800010', 'สกล กมลรัมย์', 'ประโคนชัย', '(083) 456-4748');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table repair.customer_seq
CREATE TABLE IF NOT EXISTS `customer_seq` (
  `key` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
	(00011);
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
  `device_id` char(50) NOT NULL,
  `device_category` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `generation` varchar(50) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
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
  `device_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table repair.device: ~9 rows (approximately)
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` (`device_id`, `device_category`, `brand`, `generation`, `serial_number`, `warranty`, `price`, `cpu`, `memory`, `harddisk`, `graphics`, `display`, `os`, `note`, `custromer_id`, `device_date`) VALUES
	('ESD-1410019C', 'PT', 'BROTHER', 'DCP-T500W', 'E74707E7H370866', '2Y', 5290, NULL, NULL, NULL, NULL, NULL, NULL, '- - ', '๙๙1800001', '2561-10-28 22:08:54'),
	('261879987_TH-403168073', 'NB', 'ACER', 'Inspiron 7577-W5675603STH', 'W5675603STH', '2Y-OnSite', 26990, 'Intel Core i7-7700HQ (2.80 GHz, 6 MB L3 Cache, up to 3.80 GHz)', '8 GB DDR4', '1 TB 5400 RPM + 128 GB SSD', 'NVIDIA GeForce GTX 1050Ti (4GB GDDR5)', '15.6 inch (1920x1080) Full HD', '-', '-', '๙๙1800009', '2561-10-29 19:10:03'),
	('test', 'PT', 'BROTHER', '-', 'xxxxxx', 'xxx', 100, 'xx', 'xxx', 'xxx', 'xxx', 'xxx', 'testxxx', 'testxx', '๙๙1800006', '2561-10-30 17:20:34'),
	('xxxx', 'CS', 'Acer', 'xxx', 'xxx', 'xx', 109, 'xx', 'xxx', 'xxx', 'xx', 'xxx', 'xxx', 'xxx', '๙๙1800003', '2561-10-31 12:51:32'),
	('xxx', 'NB', 'ASUS', 'xxx', 'xxx', 'xxx', 19999, 'xx', 'xxx', 'xxx', 'xxx', 'xxx', 'xxx', 'xxx', '๙๙1800003', '2561-10-31 12:53:29'),
	('gg', 'NB', 'ACER', 'gg', 'gg', 'gg', 19990, 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', '๙๙1800001', '2561-10-31 13:29:39'),
	('NB565456', 'NB', 'ASUS', 'ROG', 'test', '2Y', 23990, 'I7', '12GB', '1TB + SSD 120GB', 'GTX 1050', '-', '-', '--', '๙๙1800010', '2561-11-01 02:31:25'),
	('', '', '', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2561-11-01 02:55:34'),
	('aa', 'NB', 'ACER', 'aa', '', '', 0, '', '', '', '', '', '', '', '๙๙1800005', '2561-11-01 03:17:39');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

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
	(00052);
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
	(9, 'ลงวินโดว์ 10', 'CASE', 'CS'),
	(10, 'ลงวินโดว์ 8', 'CASE', 'CS'),
	(11, 'ลงวินโดว์ 7', 'CASE', 'CS'),
	(12, 'ลงวินโดว์ xp', 'CASE', 'CS'),
	(13, 'เครื่องค้าง', 'CASE', 'CS'),
	(14, 'เครื่องค้าง', 'CASE', 'CS'),
	(15, 'Disk 100%', 'CASE', 'CS'),
	(16, 'อื่นๆ', 'CASE', 'CS'),
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.pt: ~1 rows (approximately)
/*!40000 ALTER TABLE `pt` DISABLE KEYS */;
INSERT INTO `pt` (`key`) VALUES
	(00001),
	(00002),
	(00003),
	(00004),
	(00005);
/*!40000 ALTER TABLE `pt` ENABLE KEYS */;

-- Dumping structure for table repair.repair
CREATE TABLE IF NOT EXISTS `repair` (
  `id` char(50) NOT NULL,
  `customer_id` char(50) DEFAULT NULL,
  `device_id` char(50) DEFAULT NULL,
  `repair_date` datetime DEFAULT NULL,
  `complete_date` date DEFAULT NULL,
  `problem` text,
  `member_id` varchar(50) DEFAULT NULL,
  `repair_status` varchar(50) DEFAULT NULL,
  `spareparts` float DEFAULT '0',
  `servicecharge` float DEFAULT '0',
  `sum` float DEFAULT '0',
  `completion_date` datetime DEFAULT NULL,
  `technician` varchar(50) DEFAULT NULL,
  `repair_details` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair: ~6 rows (approximately)
/*!40000 ALTER TABLE `repair` DISABLE KEYS */;
INSERT INTO `repair` (`id`, `customer_id`, `device_id`, `repair_date`, `complete_date`, `problem`, `member_id`, `repair_status`, `spareparts`, `servicecharge`, `sum`, `completion_date`, `technician`, `repair_details`) VALUES
	('NB1800045', '๙๙1800009', '261879987_TH-403168073', '2561-10-29 19:10:03', '2561-11-05', 'ลงวินโดร์ 10', 'Admin', 'แจ้งซ่อม', 0, 0, 0, NULL, NULL, NULL),
	('NB1800048', '๙๙1800003', 'xxx', '2561-10-31 12:53:29', '2561-11-07', 'จอฟ้าา', 'Admin', 'ซ่อมสำเร็จ', 0, 0, 400, '2561-11-01 02:29:01', 'Admin', 'ดำเนินการซ่อม'),
	('NB1800049', '๙๙1800001', 'gg', '2561-10-31 13:29:39', '2561-11-07', 'เครื่องแฮงค์', 'Admin', 'อยู่ระหว่างซ่อม', 0, 0, 0, '2561-10-31 13:30:30', 'Admin', 'กำลังซ่อม'),
	('NB1800050', '๙๙1800010', 'NB565456', '2561-11-01 02:31:25', '2561-11-08', 'เครื่องค้าง', 'Admin', 'ซ่อมสำเร็จ', 0, 400, 400, '2561-11-01 02:34:52', 'Admin', 'ล้างเครื่อง'),
	('PT1800004', '๙๙1800001', 'ESD-1410019C', '2561-10-28 22:08:54', '2561-11-04', 'test', 'Admin', 'แจ้งซ่อม', 100, 1, 101, '2561-10-29 22:02:39', 'Admin', 'xxxxxx');
/*!40000 ALTER TABLE `repair` ENABLE KEYS */;

-- Dumping structure for table repair.repair_history
CREATE TABLE IF NOT EXISTS `repair_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_id` char(50) DEFAULT NULL,
  `customer_id` char(50) DEFAULT NULL,
  `device_id` char(50) DEFAULT NULL,
  `repair_date` datetime DEFAULT NULL,
  `complete_date` date DEFAULT NULL,
  `problem` text,
  `member_id` varchar(50) DEFAULT NULL,
  `repair_status` varchar(50) DEFAULT NULL,
  `spareparts` float DEFAULT '0',
  `servicecharge` float DEFAULT '0',
  `sum` float DEFAULT '0',
  `completion` datetime DEFAULT NULL,
  `technician` varchar(50) DEFAULT '',
  `repair_details` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_history: ~11 rows (approximately)
/*!40000 ALTER TABLE `repair_history` DISABLE KEYS */;
INSERT INTO `repair_history` (`id`, `repair_id`, `customer_id`, `device_id`, `repair_date`, `complete_date`, `problem`, `member_id`, `repair_status`, `spareparts`, `servicecharge`, `sum`, `completion`, `technician`, `repair_details`) VALUES
	(4, 'NB1800048', '๙๙1800003', 'xxx', '2561-10-31 12:53:29', '2561-11-07', 'จอฟ้าา', 'Admin', 'แจ้งซ่อม', 0, 0, 0, '2561-10-31 12:53:29', ' ', NULL),
	(5, 'NB1800048', '๙๙1800003', 'xxx', '2561-10-31 12:53:29', '2561-11-07', 'จอฟ้าา', 'Admin', 'อยู่ระหว่างซ่อม', 0, 0, 0, '2561-10-31 13:23:43', 'Admin', ''),
	(6, 'NB1800048', '๙๙1800003', 'xxx', '2561-10-31 12:53:29', '2561-11-07', 'จอฟ้าา', 'Admin', 'เช็คเครื่องเช็คระบบ 400 บาท', 0, 0, 0, '2561-10-31 13:26:10', 'Admin', ''),
	(7, 'NB1800048', '๙๙1800003', 'xxx', '2561-10-31 12:53:29', '2561-11-07', 'จอฟ้าา', 'Admin', 'อนุมัติซ่อม', 0, 0, 0, '2561-10-31 13:27:12', 'Admin', 'ดำเนินการซ่อม'),
	(8, 'NB1800049', '๙๙1800001', 'gg', '2561-10-31 13:29:39', '2561-11-07', 'เครื่องแฮงค์', 'Admin', 'แจ้งซ่อม', 0, 0, 0, '2561-10-31 13:29:39', ' ', NULL),
	(9, 'NB1800049', '๙๙1800001', 'gg', '2561-10-31 13:29:39', '2561-11-07', 'เครื่องแฮงค์', 'Admin', 'อยู่ระหว่างซ่อม', 0, 0, 0, '2561-10-31 13:30:30', 'Admin', 'กำลังซ่อม'),
	(10, 'NB1800048', '๙๙1800003', 'xxx', '2561-10-31 12:53:29', '2561-11-07', 'จอฟ้าา', 'Admin', 'เช็คเครื่องเช็คระบบ 400 บาท', 0, 400, 0, '2561-10-31 23:47:44', 'Admin', 'ดำเนินการซ่อม'),
	(11, 'NB1800048', '๙๙1800003', 'xxx', '2561-10-31 12:53:29', '2561-11-07', 'จอฟ้าา', 'Admin', 'ซ่อมสำเร็จ', 0, 0, 400, '2561-11-01 02:29:01', 'Admin', 'ดำเนินการซ่อม'),
	(12, 'NB1800050', '๙๙1800010', 'NB565456', '2561-11-01 02:31:25', '2561-11-08', 'เครื่องค้าง', 'Admin', 'แจ้งซ่อม', 0, 0, 0, '2561-11-01 02:31:25', ' ', NULL),
	(13, 'NB1800050', '๙๙1800010', 'NB565456', '2561-11-01 02:31:25', '2561-11-08', 'เครื่องค้าง', 'Admin', 'อยู่ระหว่างซ่อม', 0, 0, 0, '2561-11-01 02:33:42', 'Admin', ''),
	(14, 'NB1800050', '๙๙1800010', 'NB565456', '2561-11-01 02:31:25', '2561-11-08', 'เครื่องค้าง', 'Admin', 'ซ่อมสำเร็จ', 0, 400, 400, '2561-11-01 02:34:52', 'Admin', 'ล้างเครื่อง');
/*!40000 ALTER TABLE `repair_history` ENABLE KEYS */;

-- Dumping structure for table repair.repair_status
CREATE TABLE IF NOT EXISTS `repair_status` (
  `id` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_status: ~14 rows (approximately)
/*!40000 ALTER TABLE `repair_status` DISABLE KEYS */;
INSERT INTO `repair_status` (`id`, `name`) VALUES
	(01, 'แจ้งซ่อม'),
	(02, 'อยู่ระหว่างซ่อม'),
	(03, 'เช็คเครื่องเช็คระบบ 400 บาท'),
	(04, 'รอลูกค้าอนุมัติซ่อม'),
	(05, 'ลูกค้ารับแล้ว'),
	(06, 'อนุมัติซ่อม'),
	(07, 'ยกเลิกรายการซ่อม'),
	(08, 'รออะไหล่'),
	(09, 'อะไหล่ส่งศูนย์'),
	(11, 'รอมัดจำ'),
	(12, 'ซ่อมไม่ได้'),
	(13, 'ซ่อมสำเร็จ'),
	(14, 'ส่งอุปกรณ์ / เคลม'),
	(15, 'ส่งซ่อม'),
	(16, 'รอเสนอราคา');
/*!40000 ALTER TABLE `repair_status` ENABLE KEYS */;

-- Dumping structure for table repair.repair_type
CREATE TABLE IF NOT EXISTS `repair_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `device_type_name` varchar(50) DEFAULT NULL,
  `initials` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table repair.repair_type: ~11 rows (approximately)
/*!40000 ALTER TABLE `repair_type` DISABLE KEYS */;
INSERT INTO `repair_type` (`id`, `name`, `device_type_name`, `initials`) VALUES
	(1, 'NOTEBOOK', 'NOTEBOOK', 'NB'),
	(2, 'CASE', 'CASE', 'CS'),
	(3, 'PRINTER', 'PRINTER', 'PT'),
	(4, 'เครื่องถ่ายฯ', 'เครื่องถ่ายฯ', 'CY'),
	(5, 'MONITER', 'MONITER', 'MT'),
	(6, 'FAX', 'FAX', 'FT'),
	(7, 'กล้อง', 'กล้อง', 'CM'),
	(8, 'ตู้สาขา', 'ตู้สาขา', 'SK'),
	(9, 'โทรศัพท์', 'โทรศัพท์', 'TN'),
	(10, 'เครื่องอื่นๆ', 'เครื่องอื่นๆ', 'VE'),
	(11, 'ส่งซ่อม', 'ส่งซ่อม', 'S0');
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
