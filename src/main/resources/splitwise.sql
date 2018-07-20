/*
SQLyog Community v12.12 (64 bit)
MySQL - 5.5.20 : Database - splitwise
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`splitwise` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `splitwise`;

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (9),(9);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values (1,'ADMIN'),(2,'USER');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`email`,`password`,`phone_number`,`username`) values (3,'paivipul08@gmail.com','$2a$10$KASZx69eepXxUr4An2mI/.jl4jE/Ff/vlWMDGxAJiY6LwNC7DrRJa','9969987876','Vipul Pai'),(4,'sanikas7@gmail.com','$2a$10$D0zA/JE1GBTPHZAFI.6KI.llVVkGXkf9EYmTyTDik2IZAdZs3b1jW','9920254927','Sanika Sawant'),(5,'bhagyashree.chavan@sts.in','$2a$10$RWvHkqtq017Znukw.Q8kIurp1rrLJwcekgYBbDEe5Ds3yCG.UFj9m','9965587456','Bhagyashree Chavan'),(6,'komal.patil@sts.in','$2a$10$q7ti3Y7XpTWZ3.L.8HXmTOyWdi6Ld0H8D9nzXxRh14qFmtEcrcvda','8856995786','Komal Patil'),(7,'prajakta.karane@sts.in','$2a$10$D79B03eDoAqioE6PsncewOcCsNfIIMGzRy9KGKjK7.t.BeMIeROK.','8874459636','Prajakta Karane'),(8,'dhaval@gmail.com','$2a$10$BKFin.JRvlPUj/5ar5/fceNloGMEHwnegw.tCjVhOEEIguP5NCtYq','1234567890','Dhaval Parmar');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`) values (3,1),(3,2),(4,1),(4,2),(5,1),(5,2),(6,1),(6,2),(7,1),(7,2),(8,1),(8,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
