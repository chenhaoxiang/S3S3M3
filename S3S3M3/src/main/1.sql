/*
SQLyog Ultimate v8.32 
MySQL - 5.7.14 : Database - sy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sy` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sy`;

/*Table structure for table `tbug` */

DROP TABLE IF EXISTS `tbug`;

CREATE TABLE `tbug` (
  `id` varchar(36) NOT NULL,
  `createdatetime` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `note` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbug` */

/*Table structure for table `tmenu` */

DROP TABLE IF EXISTS `tmenu`;

CREATE TABLE `tmenu` (
  `id` varchar(36) NOT NULL,
  `iconcls` varchar(100) DEFAULT NULL,
  `seq` decimal(22,0) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `pid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tmenu` (`pid`),
  CONSTRAINT `FK_tmenu` FOREIGN KEY (`pid`) REFERENCES `tmenu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tmenu` */

/*Table structure for table `tonline` */

DROP TABLE IF EXISTS `tonline`;

CREATE TABLE `tonline` (
  `id` varchar(36) NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `logindatetime` datetime DEFAULT NULL,
  `loginname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tonline` */

/*Table structure for table `tresource` */

DROP TABLE IF EXISTS `tresource`;

CREATE TABLE `tresource` (
  `id` varchar(36) NOT NULL,
  `seq` decimal(22,0) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `pid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tresource` (`pid`),
  CONSTRAINT `FK_tresource` FOREIGN KEY (`pid`) REFERENCES `tresource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tresource` */

/*Table structure for table `trole` */

DROP TABLE IF EXISTS `trole`;

CREATE TABLE `trole` (
  `id` varchar(36) NOT NULL,
  `text` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `trole` */

/*Table structure for table `trole_tresource` */

DROP TABLE IF EXISTS `trole_tresource`;

CREATE TABLE `trole_tresource` (
  `id` varchar(36) NOT NULL,
  `resource_id` varchar(36) DEFAULT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_trole_tresource` (`resource_id`),
  KEY `FK_trole_tresource_a` (`role_id`),
  CONSTRAINT `FK_trole_tresource` FOREIGN KEY (`resource_id`) REFERENCES `tresource` (`id`),
  CONSTRAINT `FK_trole_tresource_a` FOREIGN KEY (`role_id`) REFERENCES `trole` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `trole_tresource` */

/*Table structure for table `tuser` */

DROP TABLE IF EXISTS `tuser`;

CREATE TABLE `tuser` (
  `id` varchar(36) NOT NULL,
  `createdatetime` datetime DEFAULT NULL,
  `modifydatetime` datetime DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tuser` */

insert  into `tuser`(`id`,`createdatetime`,`modifydatetime`,`name`,`pwd`,`create_time`,`update_time`) values ('0','0000-00-00 00:00:00','0000-00-00 00:00:00','chx','1234','0000-00-00','0000-00-00'),('14694ff412d24116ab26dfb587184ed7','2017-01-10 18:51:23','2017-01-10 18:51:23','testaa','1234','2017-01-10','2017-01-10'),('1d068d5e27104cd6ae917d0fdc888605','2017-01-09 00:00:00','2017-01-09 00:00:00','陈浩翔','chx','2017-01-09','2017-01-09'),('22bc622c8eb44121b8f3edbec3d51fbf','2017-01-09 00:00:00','2017-01-09 00:00:00','陈浩翔','chx','2017-01-09','2017-01-09'),('30581d9cab8f49e1912abfb5684a2c04','2017-01-09 00:00:00','2017-01-09 00:00:00','陈浩翔','chx','2017-01-09','2017-01-09'),('4641a9cad60d4b628b26b79332010692','2017-01-10 00:00:00','2017-01-10 00:00:00','test','1234','2017-01-10','2017-01-10'),('4e07f3963337488e81716cfdd8a0fe04','2017-01-09 00:00:00','2017-01-09 00:00:00','陈浩翔aaa','chx','2017-01-09','2017-01-09'),('8a821a0ec687458085ff8a07660ca8aa','2017-01-09 00:00:00','2017-01-09 00:00:00','陈浩翔','chx','2017-01-09','2017-01-09'),('91a031f50f13432e89bcc13225b3f840','2017-01-10 00:00:00','2017-01-10 00:00:00','test','1234','2017-01-10','2017-01-10'),('943e03f5b9084b7d9771a77debaba800','2017-01-09 00:00:00','2017-01-09 00:00:00','陈浩翔aaa','chx','2017-01-09','2017-01-09'),('9a2e8f3642cd42dcb17202ccbc6e2844','2017-01-09 00:00:00','2017-01-09 00:00:00','陈浩翔','chx','2017-01-09','2017-01-09'),('e7af7db2ac6c4970b955229e47883d92','2017-01-09 00:00:00','2017-01-09 00:00:00','陈浩翔','chx','2017-01-09','2017-01-09');

/*Table structure for table `tuser_trole` */

DROP TABLE IF EXISTS `tuser_trole`;

CREATE TABLE `tuser_trole` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tuser_trole` (`user_id`),
  KEY `FK_tuser_trole_a` (`role_id`),
  CONSTRAINT `FK_tuser_trole` FOREIGN KEY (`user_id`) REFERENCES `tuser` (`id`),
  CONSTRAINT `FK_tuser_trole_a` FOREIGN KEY (`role_id`) REFERENCES `trole` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tuser_trole` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
