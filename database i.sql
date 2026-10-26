/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.27-MariaDB : Database - penjualanproduk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`penjualanproduk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `penjualanproduk`;

/*Table structure for table `photoproduk` */

DROP TABLE IF EXISTS `photoproduk`;

CREATE TABLE `photoproduk` (
  `kodephoto` int(11) NOT NULL AUTO_INCREMENT,
  `filephoto` varchar(50) NOT NULL,
  `iscover` tinyint(1) DEFAULT 0,
  `kodebarang` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`kodephoto`),
  KEY `fk_photo_barang` (`kodebarang`),
  CONSTRAINT `fk_photo_barang` FOREIGN KEY (`kodebarang`) REFERENCES `stokbarang` (`kodebarang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `photoproduk` */

insert  into `photoproduk`(`kodephoto`,`filephoto`,`iscover`,`kodebarang`) values 
(10,'jamtangan01.jpg',0,'B005'),
(11,'jamtangan02.jpg',1,'B005');

/*Table structure for table `stokbarang` */

DROP TABLE IF EXISTS `stokbarang`;

CREATE TABLE `stokbarang` (
  `kodebarang` varchar(5) NOT NULL,
  `namabarang` varchar(50) NOT NULL,
  `stok` float DEFAULT NULL,
  `hargabeli` float DEFAULT NULL,
  `hargajual` float DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  PRIMARY KEY (`kodebarang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `stokbarang` */

insert  into `stokbarang`(`kodebarang`,`namabarang`,`stok`,`hargabeli`,`hargajual`,`deskripsi`) values 
('B001','Kemeja Flanel',56,73000,85000,'Kemeja flanel bahan katun'),
('B002','Celena Jeans',43,112500,120000,'Celana Jeans demin'),
('B005','Jam Tangan',60,8000000,1200000,'Jam Mewah dan Murah');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
