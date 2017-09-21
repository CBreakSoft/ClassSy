/*
Navicat MySQL Data Transfer

Source Server         : SD
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : dbbjglxt

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-05-16 16:26:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `k_table`
-- ----------------------------
DROP TABLE IF EXISTS `k_table`;
CREATE TABLE `k_table` (
  `kId` varchar(50) NOT NULL,
  `kName` varchar(50) NOT NULL,
  `kNature` varchar(50) NOT NULL,
  `kXF` decimal(5,1) NOT NULL,
  PRIMARY KEY (`kId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of k_table
-- ----------------------------
INSERT INTO `k_table` VALUES ('L040102', '中国近现代史纲要 ', '必修', '3.0');
INSERT INTO `k_table` VALUES ('L090022', 'C语言及面向对象程序设计Ⅱ ', '必修', '3.0');
INSERT INTO `k_table` VALUES ('L090024', '专业英语 ', '必修', '2.0');
INSERT INTO `k_table` VALUES ('L090202 ', '操作系统（A） ', '必修', '4.0');
INSERT INTO `k_table` VALUES ('L090219 ', '软件测试技术 ', '必修', '3.0');
INSERT INTO `k_table` VALUES ('L090602', '软件体系结构（A) ', '必修', '3.0');
INSERT INTO `k_table` VALUES ('L110102', '高等数学', '学位', '5.0');
INSERT INTO `k_table` VALUES ('L110201', '线性代数与几何（A） ', '学位', '4.0');
INSERT INTO `k_table` VALUES ('RL090242', 'JAVA EE架构程序设计 ', '限选', '2.0');
INSERT INTO `k_table` VALUES ('RL090622 ', '信息系统分析应用 ', '限选', '2.0');
INSERT INTO `k_table` VALUES ('RL090623 ', '软件企业文化 ', '限选', '2.0');
INSERT INTO `k_table` VALUES ('RL090724', '移动应用开发技术 ', '限选', '2.0');
INSERT INTO `k_table` VALUES ('T160005', '音乐鉴赏（网络课） ', '选修', '2.0');
