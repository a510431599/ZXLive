/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.7.17-log : Database - douban
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`douban` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `douban`;

/*Table structure for table `celebrity` */

DROP TABLE IF EXISTS `celebrity`;

CREATE TABLE `celebrity` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `douban_id` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `introduction` text,
  `type` varchar(20) DEFAULT NULL COMMENT '演员or导演or编剧',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `celebrity` */

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '短评or影评',
  `comments` text,
  `auth` varchar(100) DEFAULT NULL,
  `rating` bigint(20) DEFAULT NULL,
  `zan` int(11) DEFAULT NULL COMMENT '有用',
  `douban_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

/*Table structure for table `movie` */

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '电影名字',
  `director` varchar(255) DEFAULT NULL COMMENT '导演',
  `screenwriter` varchar(255) DEFAULT NULL COMMENT '编剧',
  `celebrity` varchar(255) DEFAULT NULL COMMENT '明星',
  `movieType` varchar(255) DEFAULT NULL COMMENT '类型',
  `country` varchar(255) DEFAULT NULL COMMENT '国家',
  `date` varchar(255) DEFAULT NULL COMMENT '上映日期',
  `runtime` varchar(255) DEFAULT NULL COMMENT '时长',
  `aliasName` varchar(255) DEFAULT NULL COMMENT '别名',
  `IMDb` varchar(255) DEFAULT NULL COMMENT 'imdb',
  `douban_id` varchar(20) DEFAULT NULL,
  `description` text,
  `type` int(10) DEFAULT NULL COMMENT '电影or电视剧',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movie` */

/*Table structure for table `movie_cele` */

DROP TABLE IF EXISTS `movie_cele`;

CREATE TABLE `movie_cele` (
  `id` bigint(50) NOT NULL,
  `cele_id` bigint(50) DEFAULT NULL,
  `movie_id` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movie_cele` */

/*Table structure for table `rating` */

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `id` bigint(20) DEFAULT NULL,
  `movie_id` bigint(20) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  `oneStar` bigint(20) DEFAULT NULL,
  `twoStar` bigint(20) DEFAULT NULL,
  `threeStar` bigint(20) DEFAULT NULL,
  `fourStar` bigint(20) DEFAULT NULL,
  `fiveStar` bigint(20) DEFAULT NULL,
  `rating_people` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rating` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
