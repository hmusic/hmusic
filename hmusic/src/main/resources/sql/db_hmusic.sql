/*
MySQL Data Transfer
Source Host: 127.0.0.1
Source Database: db_hmusic
Target Host: 127.0.0.1
Target Database: db_hmusic
Date: 2017/2/17 16:58:43
*/
CREATE DATABASE `db_hmusic` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE db_hmusic;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(25) NOT NULL,
  `adminpassword` varchar(32) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin01','admin01'),(2,'admin02','admin02');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "music"
#


#
# Structure for table "music_musictype"
#

DROP TABLE IF EXISTS `music_musictype`;
CREATE TABLE `music_musictype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musicid` int(11) NOT NULL,
  `musictypeid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "music_musictype"
#


#
# Structure for table "musictype"
#

DROP TABLE IF EXISTS `musictype`;
CREATE TABLE `musictype` (
  `musictypeid` int(11) NOT NULL AUTO_INCREMENT,
  `musictypename` varchar(25) NOT NULL,
  PRIMARY KEY (`musictypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "musictype"
#


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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "singer"
#

/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
INSERT INTO `singer` VALUES (1,'薛之谦',NULL,'男','男歌手');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "singer_music"
#


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


#
# Structure for table "singertype"
#

DROP TABLE IF EXISTS `singertype`;
CREATE TABLE `singertype` (
  `singertypeid` int(11) NOT NULL AUTO_INCREMENT,
  `singertypename` varchar(25) NOT NULL,
  PRIMARY KEY (`singertypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "singertype"
#


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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

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

