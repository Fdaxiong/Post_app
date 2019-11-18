/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : postbar_app

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-09 13:18:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for post_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `post_guestbook`;
CREATE TABLE `post_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户id',
  `txt_id` int(11) DEFAULT NULL COMMENT '帖子id',
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户昵称',
  `leave` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留言内容',
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of post_guestbook
-- ----------------------------
INSERT INTO `post_guestbook` VALUES ('1', '1', '1', 'Fdaxiong大熊', '一楼是我', '1561651');
INSERT INTO `post_guestbook` VALUES ('2', '2', '1', '1111', '二楼是我', '156161');

-- ----------------------------
-- Table structure for post_txt
-- ----------------------------
DROP TABLE IF EXISTS `post_txt`;
CREATE TABLE `post_txt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID,是哪个用户发表的',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内容',
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发帖图',
  `time` int(20) NOT NULL COMMENT '发布的时间',
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of post_txt
-- ----------------------------
INSERT INTO `post_txt` VALUES ('1', '1', '哈哈哈', '我不我不我不我不 喂不饱匃无不违背亢', 'img/1.jpg', '151651', 'Fdaxiong大熊');
INSERT INTO `post_txt` VALUES ('2', '1', '哦哦哦哦哦', '特别不好不好', 'img/2.jpg', '177777777', 'Fdaxiong大熊');
INSERT INTO `post_txt` VALUES ('10', '1', '林深时见鹿', '人说： \n林深时见鹿，海蓝时见鲸，梦醒时见你 \n可我，林深时雾起，海深时浪涌，梦醒时夜续，不见鹿，不见鲸，也不见你。\n', 'img/4.jpg', '1546050917', 'Fdaxiong大熊');
INSERT INTO `post_txt` VALUES ('11', '1', '《佛经》', '人生四苦：贪嗔痴、求不得、怨憎会、爱别离。', 'img/3.jpg', '1546051090', 'Fdaxiong大熊');

-- ----------------------------
-- Table structure for post_user
-- ----------------------------
DROP TABLE IF EXISTS `post_user`;
CREATE TABLE `post_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `call` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of post_user
-- ----------------------------
INSERT INTO `post_user` VALUES ('1', 'Fdaxiong大熊', '123', null);
INSERT INTO `post_user` VALUES ('2', '11', '456', null);
postbar_app