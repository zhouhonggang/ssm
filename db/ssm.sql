/*
Source Server         : 127.0.0.1
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : javakc

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-07-28 10:12:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ssm_logger`
-- ----------------------------
DROP TABLE IF EXISTS `ssm_logger`;
CREATE TABLE `ssm_logger` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) DEFAULT NULL,
    `controller_name` varchar(50) DEFAULT NULL,
    `method_name` varchar(50) DEFAULT NULL,
    `remote_addr` varchar(30) DEFAULT NULL,
    `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    `error` varchar(2000) DEFAULT NULL,
    `type` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `ssm_user`
-- ----------------------------
DROP TABLE IF EXISTS `ssm_user`;
CREATE TABLE `ssm_user` (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户主键ID',
    `name` varchar(20) NOT NULL COMMENT '用户名称',
    `age` int(3) DEFAULT NULL COMMENT '用户年龄',
    `gender` int(1) DEFAULT NULL COMMENT '用户性别 1:男 2:女',
    `phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
    `birthday` date DEFAULT NULL COMMENT '出生日期',
    `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssm_user
-- ----------------------------
INSERT INTO `ssm_user` VALUES ('1', 'admin', '23', '1', '15001390311', '1997-01-13', '北京海淀区');
