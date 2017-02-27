# Host: localhost  (Version: 5.6.24)
# Date: 2017-02-27 22:10:42
# Generator: MySQL-Front 5.3  (Build 4.186)

/*!40101 SET NAMES utf8 */;
CREATE DATABASE `db_hmusic` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE db_hmusic;
#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(25) NOT NULL,
  `adminpassword` varchar(32) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin001','admin001'),(2,'admin002','admin002'),(3,'admin003','admin003');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

#
# Structure for table "comment"
#

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `musicid` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `commenttime` datetime NOT NULL,
  `likenum` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "comment"
#

/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

#
# Structure for table "music"
#

DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `musicid` int(11) NOT NULL AUTO_INCREMENT,
  `musicname` varchar(32) NOT NULL,
  `musicphoto` varchar(255) DEFAULT NULL,
  `duration` time NOT NULL,
  `musicpath` varchar(255) NOT NULL,
  `lyricspath` varchar(255) DEFAULT NULL,
  `clickrate` int(11) DEFAULT NULL,
  `downloadrate` int(11) DEFAULT NULL,
  `uploadtime` datetime NOT NULL,
  PRIMARY KEY (`musicid`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

#
# Data for table "music"
#

/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES (1,'成都','/musicphoto/成都.jpg','00:05:28','/music/成都.mp3','/lyrics/成都.lyr',10,10,'2017-02-21 16:22:35'),(2,'刚好遇见你',NULL,'00:03:20','/music/刚好遇见你.mp3',NULL,1,1,'2016-12-30 14:17:00'),(3,'童话镇',NULL,'00:04:17','/music/童话镇.mp3',NULL,1,1,'2016-12-30 14:17:00'),(4,'告白气球',NULL,'00:04:17','/music/告白气球.mp3',NULL,1,1,'2016-12-30 14:17:00'),(5,'演员',NULL,'00:04:17','/music/演员.mp3',NULL,1,1,'2016-12-30 14:17:00'),(6,'绅士',NULL,'00:04:17','/music/绅士.mp3',NULL,1,1,'2016-12-30 14:17:00'),(7,'南方姑娘',NULL,'00:04:17','/music/南方姑娘.mp3',NULL,1,1,'2016-12-30 14:17:00'),(8,'Faded',NULL,'00:04:17','/music/Faded.mp3',NULL,1,1,'2016-12-30 14:17:00'),(9,'红色高跟鞋',NULL,'00:04:17','/music/红色高跟鞋.mp3',NULL,1,1,'2016-12-30 14:17:00'),(10,'悟空',NULL,'00:04:17','/music/悟空.mp3',NULL,1,1,'2016-12-30 14:17:00'),(11,'海阔天空',NULL,'00:05:26','/music/海阔天空.mp3',NULL,1,1,'2016-12-30 14:39:00'),(12,'慢慢',NULL,'00:04:43','/music/慢慢.mp3','/music/慢慢.lyc',1,1,'2016-12-30 14:47:00'),(13,'说谎',NULL,'00:04:23','E://hmusicfs//music//说谎.mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:35:00'),(14,'天路',NULL,'00:04:22','E://hmusicfs//music//天路.mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:17:00'),(15,'天亮了(LIVE)',NULL,'00:04:49','E://hmusicfs//music//天亮了(LIVE).mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:17:00'),(16,'江南',NULL,'00:04:27','E://hmusicfs//music//江南.mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:17:00'),(17,'修炼爱情',NULL,'00:04:47','E://hmusicfs//music//修炼爱情.mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:17:00'),(18,'可惜没如果',NULL,'00:04:58','E://hmusicfs//music//可惜没如果.mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:17:00'),(19,'曹操',NULL,'00:04:02','E://hmusicfs//music//曹操.mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:17:00'),(20,'他不懂',NULL,'00:03:52','E://hmusicfs//music//他不懂.mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:17:00'),(21,'默',NULL,'00:05:25','E://hmusicfs//music//默.mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:17:00'),(22,'征服',NULL,'00:04:59','E://hmusicfs//music//征服.mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:17:00'),(23,'梦一场(Live)',NULL,'00:05:08','E://hmusicfs//music//梦一场(Live).mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:39:00'),(24,'青花瓷',NULL,'00:03:59','E://hmusicfs//music//青花瓷.mp3','E://hmusicfs//lyrics//青花瓷.lyc',1,1,'2016-12-30 14:47:00'),(25,'红尘客栈',NULL,'00:04:34','E://hmusicfs//music//红尘客栈.mp3','E://hmusicfs//lyrics//红尘客栈.lyc',1,1,'2016-12-30 14:47:00'),(26,'稻香',NULL,'00:03:43','E://hmusicfs//music//稻香.mp3','E://hmusicfs//lyrics//稻香.lyc',1,1,'2016-12-30 14:47:00'),(27,'逆战',NULL,'00:03:51','E://hmusicfs//music//逆战.mp3','E://hmusicfs//lyrics//逆战.lyc',1,1,'2016-12-30 14:47:00'),(28,'趁早',NULL,'00:05:24','E://hmusicfs//music//趁早.mp3','E://hmusicfs//lyrics//趁早.lyc',1,1,'2016-12-30 14:47:00'),(29,'丑八怪','E://hmusicfs//musicphoto//music表数据.sql','00:05:16','E://hmusicfs//music//赵雷 - 理想 (Live).mp3','E://hmusicfs//lyrics//musictype.sql',1,1,'2017-02-27 16:33:13'),(55,'一剪梅','E://hmusicfs//musicphoto//hxn.jpg','00:00:00','E://hmusicfs//music//OST.jpg','E://hmusicfs//lyrics//qp.jpg',1,1,'2017-02-27 20:52:00');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;

#
# Structure for table "music_musictype"
#

DROP TABLE IF EXISTS `music_musictype`;
CREATE TABLE `music_musictype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musicid` int(11) NOT NULL,
  `musictypeid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "music_musictype"
#

/*!40000 ALTER TABLE `music_musictype` DISABLE KEYS */;
INSERT INTO `music_musictype` VALUES (2,8,3),(3,20,3),(28,29,1),(29,28,1),(30,27,1),(31,26,1),(32,25,1),(33,23,1),(34,22,1),(35,21,1),(36,19,1),(37,18,1),(38,17,1),(39,16,1),(40,15,1),(41,14,1),(42,12,1),(43,11,1),(44,9,1),(45,7,1),(46,6,1),(47,5,1),(48,4,1),(49,3,1),(50,2,1),(51,1,1),(52,10,1),(53,13,1),(54,24,1),(55,55,1);
/*!40000 ALTER TABLE `music_musictype` ENABLE KEYS */;

#
# Structure for table "musictype"
#

DROP TABLE IF EXISTS `musictype`;
CREATE TABLE `musictype` (
  `musictypeid` int(11) NOT NULL AUTO_INCREMENT,
  `musictypename` varchar(25) NOT NULL,
  PRIMARY KEY (`musictypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "musictype"
#

/*!40000 ALTER TABLE `musictype` DISABLE KEYS */;
INSERT INTO `musictype` VALUES (1,'国语'),(2,'粤语'),(3,'英语'),(4,'韩语'),(5,'日语'),(6,'法语'),(7,'西班牙语');
/*!40000 ALTER TABLE `musictype` ENABLE KEYS */;

#
# Structure for table "singer"
#

DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singerid` int(11) NOT NULL AUTO_INCREMENT,
  `singername` varchar(25) NOT NULL,
  `singerphoto` varchar(255) DEFAULT NULL,
  `sex` enum('男','女') DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`singerid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

#
# Data for table "singer"
#

/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
INSERT INTO `singer` VALUES (1,'Beyond',NULL,'男',NULL),(2,'薛之谦',NULL,'男',NULL),(3,'周杰伦',NULL,'男',NULL),(4,'陈奕迅',NULL,'男',NULL),(5,'林俊杰',NULL,'男',NULL),(6,'费玉清',NULL,'男',NULL),(7,'张杰',NULL,'男',NULL),(8,'杨宗纬',NULL,'男',NULL),(9,'许嵩',NULL,'男',NULL),(10,'鹿晗',NULL,'男',NULL),(11,'李荣浩',NULL,'男',NULL),(12,'萧敬腾',NULL,'男',NULL),(13,'韩红',NULL,'女',NULL),(14,'林忆莲',NULL,'女',NULL),(15,'邓紫棋',NULL,'女',NULL),(16,'那英',NULL,'女',NULL),(17,'张靓颖',NULL,'女',NULL),(18,'王菲',NULL,'女',NULL),(19,'张惠妹',NULL,'女',NULL),(20,'A-Lin',NULL,'女',NULL),(21,'Justin Bieber (贾斯汀·比伯)',NULL,'男',NULL),(22,'Alan Walker (艾伦·沃克)',NULL,'男',NULL),(23,'Rihanna(蕾哈娜)',NULL,'女',NULL),(24,'Avril Lavigne(艾薇儿)',NULL,'女',NULL),(25,'Taylor Swift(泰勒·斯威夫特)',NULL,'女',NULL),(26,'Kelly Clarkson (凯丽·克莱森)',NULL,'女',NULL),(27,'戴荃',NULL,'男',NULL),(28,'林宥嘉',NULL,'男',NULL),(29,'蔡健雅',NULL,'女',NULL),(30,'陈一发儿',NULL,'女',NULL),(31,'赵雷',NULL,'男',NULL),(32,'李玉刚',NULL,'男',NULL),(33,'张学友',NULL,'男',NULL);
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;

#
# Structure for table "singer_music"
#

DROP TABLE IF EXISTS `singer_music`;
CREATE TABLE `singer_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singerid` int(11) NOT NULL,
  `musicid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Data for table "singer_music"
#

/*!40000 ALTER TABLE `singer_music` DISABLE KEYS */;
INSERT INTO `singer_music` VALUES (1,2,5),(2,2,6),(3,3,4),(4,30,3),(5,31,7),(6,22,8),(7,29,9),(8,27,10),(9,1,11),(10,33,12),(11,31,1),(12,28,13),(13,13,14),(14,13,15),(15,5,16),(16,5,18),(17,5,19),(18,7,20),(19,32,2),(20,5,17),(21,16,21),(22,16,22),(23,16,23),(24,3,24),(25,3,25),(26,3,27),(27,7,28),(28,19,29),(29,2,26),(30,6,55);
/*!40000 ALTER TABLE `singer_music` ENABLE KEYS */;

#
# Structure for table "singer_singertype"
#

DROP TABLE IF EXISTS `singer_singertype`;
CREATE TABLE `singer_singertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singerid` int(11) NOT NULL,
  `singertypeid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "singer_singertype"
#

/*!40000 ALTER TABLE `singer_singertype` DISABLE KEYS */;
INSERT INTO `singer_singertype` VALUES (1,1,6),(2,2,3),(3,3,3),(4,4,3),(5,5,3),(6,6,3),(7,7,3),(8,8,3),(9,9,3),(10,10,3),(11,11,3),(12,12,3),(13,21,1),(14,22,1),(15,27,3),(16,28,3),(17,31,3),(18,13,4),(19,14,4),(20,15,4),(21,16,4),(22,17,4),(23,18,4),(24,19,4),(25,20,4),(26,29,4),(27,30,4),(28,23,2),(29,24,2),(30,25,2),(31,26,2),(32,32,3),(34,33,3);
/*!40000 ALTER TABLE `singer_singertype` ENABLE KEYS */;

#
# Structure for table "singertype"
#

DROP TABLE IF EXISTS `singertype`;
CREATE TABLE `singertype` (
  `singertypeid` int(11) NOT NULL AUTO_INCREMENT,
  `singertypename` varchar(25) NOT NULL,
  PRIMARY KEY (`singertypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "singertype"
#

/*!40000 ALTER TABLE `singertype` DISABLE KEYS */;
INSERT INTO `singertype` VALUES (1,'欧美男歌手'),(2,'欧美女歌手'),(3,'华语男歌手'),(4,'华语女歌手'),(5,'欧美组合'),(6,'华语组合'),(7,'日韩组合'),(8,'日韩女歌手'),(9,'日韩男歌手');
/*!40000 ALTER TABLE `singertype` ENABLE KEYS */;

#
# Structure for table "songlist"
#

DROP TABLE IF EXISTS `songlist`;
CREATE TABLE `songlist` (
  `songlistid` int(11) NOT NULL AUTO_INCREMENT,
  `songlistname` varchar(25) NOT NULL,
  PRIMARY KEY (`songlistid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "songlist"
#

/*!40000 ALTER TABLE `songlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `songlist` ENABLE KEYS */;

#
# Structure for table "songlist_music"
#

DROP TABLE IF EXISTS `songlist_music`;
CREATE TABLE `songlist_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songlistid` int(11) NOT NULL,
  `musicid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "songlist_music"
#

/*!40000 ALTER TABLE `songlist_music` DISABLE KEYS */;
/*!40000 ALTER TABLE `songlist_music` ENABLE KEYS */;

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `userpassword` varchar(32) NOT NULL,
  `userphoto` varchar(255) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `sex` enum('男','女') DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

#
# Structure for table "user_songlist"
#

DROP TABLE IF EXISTS `user_songlist`;
CREATE TABLE `user_songlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `songlistid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "user_songlist"
#

/*!40000 ALTER TABLE `user_songlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_songlist` ENABLE KEYS */;
