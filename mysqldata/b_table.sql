/*
Navicat MySQL Data Transfer

Source Server         : SD
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dbbjglxt

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-05-16 16:25:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b_table`
-- ----------------------------
DROP TABLE IF EXISTS `b_table`;
CREATE TABLE `b_table` (
  `bId` varchar(50) NOT NULL COMMENT '班级编号',
  `bName` varchar(50) DEFAULT NULL COMMENT '班级名称',
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of b_table
-- ----------------------------
INSERT INTO `b_table` VALUES ('000000', '信0000班');
INSERT INTO `b_table` VALUES ('111111', '信1111班');
INSERT INTO `b_table` VALUES ('123456', '网1294班');
INSERT INTO `b_table` VALUES ('222222', '信2222班');
INSERT INTO `b_table` VALUES ('333333', '信3333班');
INSERT INTO `b_table` VALUES ('444444', '信4444班');
INSERT INTO `b_table` VALUES ('555555', '计5555班');
INSERT INTO `b_table` VALUES ('666666', '计6666班');
INSERT INTO `b_table` VALUES ('777777', '计7777班');
INSERT INTO `b_table` VALUES ('888888', '计8888班');
INSERT INTO `b_table` VALUES ('999999', '网9999班');
