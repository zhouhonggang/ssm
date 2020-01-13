/*
Navicat MySQL Data Transfer

Source Server         : localhost(zhou)
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2020-01-13 16:18:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ssm_user`
-- ----------------------------
DROP TABLE IF EXISTS `ssm_user`;
CREATE TABLE `ssm_user` (
  `id` varchar(32) NOT NULL DEFAULT '' COMMENT '用户主键ID',
  `name` varchar(20) NOT NULL COMMENT '用户名称',
  `age` int(3) DEFAULT NULL COMMENT '用户年龄',
  `gender` int(1) DEFAULT NULL COMMENT '用户性别 1:男 2:女',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_user
-- ----------------------------
INSERT INTO `ssm_user` VALUES ('8ff639fba53d45d79415980439fd25ad', 'admin', '23', '1', '15001390311', '1997-01-13', '北京海淀区');
