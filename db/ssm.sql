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
-- ----------------------------
-- Table structure for `ssm_user`
-- ----------------------------
create table if not exists javakc.ssm_user
(
    id int auto_increment comment '主键'  primary key,
    name varchar(16) not null comment '账号',
    pass varchar(1024) not null comment '密码',
    nick varchar(25) null comment '昵称',
    gender int(1) null comment '性别: 1男 2女',
    phone varchar(11) null comment '手机号码',
    birthday date null comment '出生日期',
    address varchar(200) null comment '家庭住址'
);
-- ----------------------------
-- Records of ssm_user
-- ----------------------------
INSERT INTO javakc.ssm_user (id, name, pass, nick, gender, phone, birthday, address)
    VALUES (1, 'admin', '038bdaf98f2037b31f1e75b5b4c9b26e', '管理员', 1, '15001390311', '2001-05-16', '北京市海淀区上地');