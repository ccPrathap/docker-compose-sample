/*
SQLyog Community v11.31 (32 bit)
MySQL - 5.6.23 : Database - mydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mydb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `mydb`;

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `comments` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `orders` */

insert  into `orders`(`id`,`emp_id`,`price`,`comments`) values (16,12345,430,'4'),(17,12345,430,'4'),(18,12345,350,'7'),(19,12345,370,'10'),(20,23451,370,'10'),(21,12345,445,'6'),(22,12345,370,'10'),(23,12345,450,'2');

/*Table structure for table `pizzas` */

DROP TABLE IF EXISTS `pizzas`;

CREATE TABLE `pizzas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `type` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `price` double NOT NULL,
  `comments` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `veg` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pizzas` */

insert  into `pizzas`(`id`,`name`,`type`,`price`,`comments`,`veg`) values (1,'Veg Extravaganza','M',440,'Black Olives, Onion, Crisp Capsicum, Mushroom','Y'),(2,'Cloud 9','M',450,'Onion, Tomato, Babycorn, Paneer, Crisp Capsicum & Jalapeno','Y'),(3,'Veg Cheese','M',480,'Chicken, Onion, Tomato, Babycorn, Paneer, Crisp Capsicum & Jalapeno','N'),(4,'Chef\'s Veg Wonder','M',430,'Mushroom, Jalepeno, Babycorn, Crisp Capsicum, Paneer','Y'),(5,'Mexican Green Wave','S',365,'Onion, Crisp Capsicum, Fresh Tomato & Jalapeno sprinkled with exotic Mexican Herbs','Y'),(6,'Margherita','M',445,'Single Cheese Topping','Y'),(7,'Spicy Triple Tango','S',350,'Golden Corn, Jalapeno & Red Paprika','Y'),(8,'Chicken Dominator','M',525,'Grilled Chicken rashers, Double Barbeque Chicken, Exotic Chicken Salami, Hot \'n\' Spicy Chicken & Italian sausage','N'),(9,'Chicken Extravaganza','M',540,'Grilled Chicken rashers, Double Barbeque Chicken, Exotic Chicken Salami, Hot \'n\' Spicy Chicken & Italian sausage','Y'),(10,'Chicken Mexican','S',370,'Grilled Chicken rashers, Double Barbeque Chicken, Exotic Chicken Salami, Hot \'n\' Spicy Chicken & Italian sausage','Y');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
