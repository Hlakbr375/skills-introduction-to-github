/*
SQLyog Community v13.2.1 (64 bit)
MySQL - 5.5.40 : Database - my_db_01
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`my_db_01` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `my_db_01`;

/*Table structure for table `ev_article_cate` */

DROP TABLE IF EXISTS `ev_article_cate`;

CREATE TABLE `ev_article_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) NOT NULL,
  `cate_alias` varchar(255) NOT NULL,
  `is_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `ev_article_cate` */

insert  into `ev_article_cate`(`id`,`cate_name`,`cate_alias`,`is_delete`) values 
(1,'科技','keji',0),
(2,'文化','wenhua',0);

/*Table structure for table `ev_users` */

DROP TABLE IF EXISTS `ev_users`;

CREATE TABLE `ev_users` (
  `username` varchar(255) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_pic` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `ev_users` */

insert  into `ev_users`(`username`,`id`,`password`,`nickname`,`email`,`user_pic`) values 
('xiaoming',1,'$2a$10$bpwBKyPCd1fIXLSzZ8sW8eupYZ42mUI/Z6YOg8Uv.7dTHQD84xQ.u',NULL,NULL,'data:image/png;base64,VE9PTUFOWVNFQ1JFVFM='),
('xiaobai',2,'$2a$10$SEdlJhPxOgTyq5r9JGNXlObCzTqKZB.OqyjqYouVJW.RQQb18RAcS',NULL,NULL,NULL),
('xiaohei',3,'$2a$10$ANegQrxbr3EoQjV.73FHge03v3BYqevSq8fFm02OJZyD3khvjTl1u',NULL,NULL,NULL),
('小明',4,'$2a$10$.k9fEkMioiBYZNjlCdkmPOz/BXjH8rrzfrcxfLOHpYqgcO4JhE2sq',NULL,NULL,NULL),
('xiaohuang',5,'$2a$10$/gkH7KcNe5zdbW1UCSlW6uKB4WbbqbLeJryu1lztsIKGbPDYhdzdK',NULL,NULL,NULL),
('xiaohuang1',6,'$2a$10$W8ZqfQb/D9ufL1rrO0nqIOy297PE6aKGKZ30WWvr.nxLMK/r5D.eq',NULL,NULL,NULL),
('admin',7,'$2a$10$ZKwsuJm95zQJV4qY464mduM..HWdyfFIjbadcFm4eDeG85FK5UjPK',NULL,NULL,NULL),
('admin1',8,'$2a$10$OXaPx0BXMiFSJWDmfnD40Odq0VYtDOBItDihBXLvbCaiFOpA64jxu',NULL,NULL,NULL),
('admin12',9,'$2a$10$Me3R5ic6JGHp.iV68DSRkurIHC5QfYDzLYV.hEwr7kAZwyij2TCqq',NULL,NULL,NULL),
('admin123',10,'$2a$10$fE6a15j0OB7zO.nTxXeuOuvvJgjyBnsb.eEtsqwp.61cCKDBY8C26',NULL,NULL,NULL),
('admin1234',11,'$2a$10$DyU0pgZUXA3gTX.AGjayh.zJMSAZp9oqPwENDD3r6FtSVwlweJxsS',NULL,NULL,NULL),
('admin12342',12,'$2a$10$BMjx1kmWSU/33PDNiGKYOupzhl.cQsmjxmiIR9rXzWoajuwcj6N2a',NULL,NULL,NULL),
('admin123421',13,'$2a$10$bY76fB6k0pCF5f2RCqjm8uSxEiluPJ6TZPXfxr4k2xCBEgMhssT5q',NULL,NULL,NULL),
('admin1234212',14,'$2a$10$IN/V6R4Vgpdy2jHB5Pqkoexu54mRtuUsFgLkcaP6TuaVzcS8Yp5U2',NULL,NULL,NULL),
('45677',15,'$2a$10$1O2YjrzPcv3NxVu2Q.n3c.QoO7vxOxm68TYu/R1jHc5WhFbV8pg3O',NULL,NULL,NULL),
('linp2',16,'$2a$10$nZPwcaDEd5enfLWSy0Fb1uXKCTYaQUImArsm0yUaDB2cYdupx7Afi',NULL,NULL,NULL),
('linp3',17,'$2a$10$FrPn7hYkx65f4KXQ.Q6b5O7wRLGgMIb9fP76Gz70.hUGteiBqciK6',NULL,NULL,NULL),
('linp4',18,'$2a$10$UCfvXW4BN4POr/ccqN490u6j4ZSDyiBG/maYG/3vdBB6HeGnoDyiO',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
