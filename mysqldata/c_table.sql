/*
Navicat MySQL Data Transfer

Source Server         : SD
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dbbjglxt

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-05-16 16:26:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `c_table`
-- ----------------------------
DROP TABLE IF EXISTS `c_table`;
CREATE TABLE `c_table` (
  `cId` bigint(20) NOT NULL AUTO_INCREMENT,
  `sId` varchar(50) NOT NULL,
  `kId` varchar(50) NOT NULL,
  `cCJ` decimal(20,1) DEFAULT NULL,
  PRIMARY KEY (`cId`),
  KEY `sId` (`sId`),
  KEY `kId` (`kId`),
  CONSTRAINT `kId` FOREIGN KEY (`kId`) REFERENCES `k_table` (`kId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sId` FOREIGN KEY (`sId`) REFERENCES `s_table` (`sId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of c_table
-- ----------------------------
INSERT INTO `c_table` VALUES ('1', '111111', 'L040102', '60.0');
INSERT INTO `c_table` VALUES ('2', '111111', 'L090022', '70.0');
INSERT INTO `c_table` VALUES ('3', '555555', 'L090202 ', '76.0');
INSERT INTO `c_table` VALUES ('5', '555555', 'L090022', null);
INSERT INTO `c_table` VALUES ('6', '555555', 'L040102', null);
INSERT INTO `c_table` VALUES ('7', '555555', 'L090024', null);
INSERT INTO `c_table` VALUES ('8', '555555', 'L090219 ', null);
INSERT INTO `c_table` VALUES ('9', '555555', 'L090602', null);
INSERT INTO `c_table` VALUES ('10', '555555', 'RL090242', null);
INSERT INTO `c_table` VALUES ('11', '555555', 'RL090622 ', null);
