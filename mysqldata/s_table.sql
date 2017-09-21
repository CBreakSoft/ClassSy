/*
Navicat MySQL Data Transfer

Source Server         : SD
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dbbjglxt

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-05-16 16:26:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_table`
-- ----------------------------
DROP TABLE IF EXISTS `s_table`;
CREATE TABLE `s_table` (
  `sId` varchar(50) NOT NULL,
  `sName` varchar(50) DEFAULT NULL,
  `sSex` varchar(10) DEFAULT NULL,
  `sPassword` varchar(50) DEFAULT NULL,
  `sLXDH` varchar(50) DEFAULT NULL,
  `sJTZZ` varchar(50) DEFAULT NULL,
  `sBJBH` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sId`),
  KEY `sBJBH` (`sBJBH`),
  CONSTRAINT `sBJBH` FOREIGN KEY (`sBJBH`) REFERENCES `b_table` (`bId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of s_table
-- ----------------------------
INSERT INTO `s_table` VALUES ('111111', '勿忘', '女', '111111', '99999999', '河北', '222222');
INSERT INTO `s_table` VALUES ('20143007', '陈鹏', '男', '20143007', '99999999', '河北省定州市', '111111');
INSERT INTO `s_table` VALUES ('555555', '五', '男', '555555', '6777666', '石家庄', '333333');
INSERT INTO `s_table` VALUES ('666666', '六', '女', '666666', '8898987', '北京', '222222');
