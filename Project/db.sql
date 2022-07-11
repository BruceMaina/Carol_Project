/*
SQLyog Enterprise - MySQL GUI v6.5
MySQL - 5.5.5-10.4.24-MariaDB : Database - quiz_new
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

create database if not exists `quiz_new`;

USE `quiz_new`;

/*Table structure for table `mst_admin` */

DROP TABLE IF EXISTS `mst_admin`;

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `mst_admin` */

insert  into `mst_admin`(`id`,`loginid`,`pass`) values (1,'carol','carol');

/*Table structure for table `mst_question` */

DROP TABLE IF EXISTS `mst_question`;

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL AUTO_INCREMENT,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `mst_question` */

/*Table structure for table `mst_result` */

DROP TABLE IF EXISTS `mst_result`;

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mst_result` */

insert  into `mst_result`(`login`,`test_id`,`test_date`,`score`) values ('raj',8,'0000-00-00',3),('raj',9,'0000-00-00',3),('raj',8,'0000-00-00',1),('ashish',10,'0000-00-00',3),('ashish',9,'0000-00-00',2),('ashish',10,'0000-00-00',0),('raj',8,'0000-00-00',0),('ankur',11,'0000-00-00',0);

/*Table structure for table `mst_subject` */

DROP TABLE IF EXISTS `mst_subject`;

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `mst_subject` */

insert  into `mst_subject`(`sub_id`,`sub_name`) values (1,'VB'),(2,'Oracle'),(3,'Java'),(4,'PHP'),(5,'Computer Fundamental'),(6,'Networking'),(7,'mysql'),(8,'2 months');

/*Table structure for table `mst_test` */

DROP TABLE IF EXISTS `mst_test`;

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `mst_test` */

insert  into `mst_test`(`test_id`,`sub_id`,`test_name`,`total_que`) values (12,8,'2 months','10');

/*Table structure for table `mst_user` */

DROP TABLE IF EXISTS `mst_user`;

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `mst_user` */

insert  into `mst_user`(`user_id`,`login`,`pass`,`username`,`address`,`city`,`phone`,`email`) values (1,'carol','carol','carol','Nairobi','Nairobi',725879203,'carol@yahoo.com'),(12,'kinoti','kinoti','kinoti','University way','Nairobi',722784980,'kinoti@yahoo.com');

/*Table structure for table `mst_useranswer` */

DROP TABLE IF EXISTS `mst_useranswer`;

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mst_useranswer` */

insert  into `mst_useranswer`(`sess_id`,`test_id`,`que_des`,`ans1`,`ans2`,`ans3`,`ans4`,`true_ans`,`your_ans`) values ('2b8e3337837b82112def8d3e2f42f26e',8,'What  Default Data Type ?','String','Variant','Integer','Boolear',2,1),('2b8e3337837b82112def8d3e2f42f26e',8,'What is Default Form Border Style ?','Fixed Single','None','Sizeable','Fixed Diaglog',3,3),('u99lto98fur257vge4r5pl3fpu',8,'What  Default Data Type ?','String','Variant','Integer','Boolear',2,1),('u99lto98fur257vge4r5pl3fpu',8,'What is Default Form Border Style ?','Fixed Single','None','Sizeable','Fixed Diaglog',3,1),('u99lto98fur257vge4r5pl3fpu',8,'Which is not type of Control ?','text','lable','checkbox','option button',1,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
