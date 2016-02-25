/*
Navicat MySQL Data Transfer

Source Server         : localhost(one__l)
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : tesla

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-02-26 00:31:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for asthma_person
-- ----------------------------
DROP TABLE IF EXISTS `asthma_person`;
CREATE TABLE `asthma_person` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `user` int(16) DEFAULT NULL COMMENT '用户id',
  `head_portrait` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '头像',
  `real_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '真实姓名',
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `birthday` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生日',
  `country` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '国家',
  `hobby` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '爱好',
  `city` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '城市',
  `state` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of asthma_person
-- ----------------------------
INSERT INTO `asthma_person` VALUES ('1', '1', 'file/download/561', null, '男', '2015-11-13', null, '张然', null, '0');

-- ----------------------------
-- Table structure for asthma_user
-- ----------------------------
DROP TABLE IF EXISTS `asthma_user`;
CREATE TABLE `asthma_user` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `phonenum` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `email` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱地址',
  `realname` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '真实姓名',
  `pwd` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '登陆密码',
  `state` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '用户状态(0:正常 1:暂停 2:异常 3:停用)',
  `isvali` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否验证',
  `type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '用户类型(0:普通用户 1:收衣人 2:社区主管)',
  `create_time` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '创建时间',
  `last_time` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '最后一次登陆时间',
  `online` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '在线状态(0:离线，1:在线)',
  `del` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of asthma_user
-- ----------------------------
INSERT INTO `asthma_user` VALUES ('1', '于正洲', '18623076889', '18623076889', '于正洲', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', '0', '0', '1', '2015-09-09 17:28:40', '2016-02-25 23:35:59', '1', '0');
INSERT INTO `asthma_user` VALUES ('270', null, '18290433510', null, null, '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', '0', '0', '0', '2016-02-26 00:19:14', '2016-02-26 00:30:59', '1', '0');

-- ----------------------------
-- Table structure for asthma_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `asthma_user_login_log`;
CREATE TABLE `asthma_user_login_log` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `ruid` int(8) DEFAULT NULL COMMENT '用户',
  `platform` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '平台类型 0苹果，1安卓',
  `device_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '设备id',
  `time` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '时间',
  `location` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '坐标',
  PRIMARY KEY (`id`),
  KEY `ruid` (`ruid`)
) ENGINE=InnoDB AUTO_INCREMENT=820 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of asthma_user_login_log
-- ----------------------------
INSERT INTO `asthma_user_login_log` VALUES ('1', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-13 23:47:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('2', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-13 23:48:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('3', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-13 23:48:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('4', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-13 23:48:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('5', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-13 23:48:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('6', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-13 23:49:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('7', '5', '0', '12345600', '2015-09-13 23:51:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('8', '5', '0', '12345600', '2015-09-13 23:53:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('9', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-13 23:57:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('10', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-13 23:57:23', null);
INSERT INTO `asthma_user_login_log` VALUES ('11', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-13 23:57:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('12', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-13 23:57:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('13', '39', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:02:49', null);
INSERT INTO `asthma_user_login_log` VALUES ('14', '39', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:03:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('15', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:03:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('16', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:05:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('17', '39', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:07:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('18', '39', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:08:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('19', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:08:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('20', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:08:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('21', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:08:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('22', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:08:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('23', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:08:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('24', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:09:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('25', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:10:00', null);
INSERT INTO `asthma_user_login_log` VALUES ('26', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:10:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('27', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:11:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('28', '5', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:11:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('29', '39', '0', '3E83CF9E-E36A-435F-9550-C3AB64D23625', '2015-09-14 00:13:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('30', '39', '0', '5F8F8A6F-1F69-485B-8FA9-BF43B71914F3', '2015-09-14 00:14:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('31', '5', '0', '08AF94DB-D781-4931-AF63-14342B9D5929', '2015-09-14 00:15:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('32', '2', '0', '08AF94DB-D781-4931-AF63-14342B9D5929', '2015-09-14 00:16:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('33', '2', '0', '08AF94DB-D781-4931-AF63-14342B9D5929', '2015-09-14 00:16:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('34', '2', '0', '08AF94DB-D781-4931-AF63-14342B9D5929', '2015-09-14 00:16:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('35', '2', '0', '08AF94DB-D781-4931-AF63-14342B9D5929', '2015-09-14 00:16:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('36', '2', '0', '08AF94DB-D781-4931-AF63-14342B9D5929', '2015-09-14 00:17:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('37', '2', '0', '08AF94DB-D781-4931-AF63-14342B9D5929', '2015-09-14 00:17:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('38', '2', '1', '0506a34c92d', '2015-09-14 00:18:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('39', '2', '1', '0506a34c92d', '2015-09-14 00:18:13', null);
INSERT INTO `asthma_user_login_log` VALUES ('40', '39', '0', '08AF94DB-D781-4931-AF63-14342B9D5929', '2015-09-14 00:19:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('41', '2', '1', '0506a34c92d', '2015-09-14 00:22:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('42', '5', '0', '08AF94DB-D781-4931-AF63-14342B9D5929', '2015-09-14 00:23:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('43', '44', '1', '0206f1e7711', '2015-09-14 10:53:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('44', '18', '1', '060104dd312', '2015-09-14 10:56:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('45', '16', '1', '0101779b3c8', '2015-09-14 11:13:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('46', '43', '1', '09028290dc8', '2015-09-14 13:55:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('47', '42', '1', '1234567890', '2015-09-14 14:17:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('48', '42', '1', '1234567890', '2015-09-14 14:29:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('49', '46', '1', '00074297996', '2015-09-14 14:45:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('50', '1', '1', '0306bdb5874', '2015-09-14 14:56:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('51', '3', '1', '09020850a6e', '2015-09-14 15:02:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('52', '46', '1', '00074297996', '2015-09-14 15:29:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('53', '54', '1', '040fefd6033', '2015-09-14 15:33:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('54', '46', '1', '00074297996', '2015-09-14 15:37:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('55', '43', '1', '09028290dc8', '2015-09-14 15:39:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('56', '46', '1', '00074297996', '2015-09-14 15:46:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('57', '43', '1', '09028290dc8', '2015-09-14 15:49:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('58', '55', '1', '0903db40df6', '2015-09-14 16:11:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('59', '55', '1', '0903db40df6', '2015-09-14 16:16:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('60', '3', '1', '09020850a6e', '2015-09-14 16:25:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('61', '55', '1', '0903db40df6', '2015-09-14 16:38:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('62', '43', '1', '09028290dc8', '2015-09-14 16:39:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('63', '7', '1', '0403ba56005', '2015-09-14 16:41:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('64', '6', '1', '0308378bb27', '2015-09-14 16:49:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('65', '3', '1', '09020850a6e', '2015-09-14 16:51:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('66', '7', '1', '0403ba56005', '2015-09-14 16:52:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('67', '3', '1', '09020850a6e', '2015-09-14 16:52:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('68', '56', '1', '09020850a6e', '2015-09-14 17:00:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('69', '56', '1', '0903db40df6', '2015-09-14 17:00:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('70', '56', '1', '09020850a6e', '2015-09-14 17:00:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('71', '15', '1', '1234567890', '2015-09-14 17:37:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('72', '15', '1', '1234567890', '2015-09-14 17:39:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('73', '48', '1', '04090d060bf', '2015-09-14 17:42:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('74', '51', '1', '030dbafbb85', '2015-09-14 17:44:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('75', '15', '1', '010ca98b3c6', '2015-09-14 17:56:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('76', '15', '1', '1234567890', '2015-09-14 17:59:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('77', '50', '1', '020e8d579fc', '2015-09-14 18:09:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('78', '43', '1', '09028290dc8', '2015-09-14 18:14:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('79', '43', '1', '09028290dc8', '2015-09-14 19:07:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('80', '48', '1', '04090d060bf', '2015-09-14 19:45:57', null);
INSERT INTO `asthma_user_login_log` VALUES ('81', '15', '1', '1234567890', '2015-09-15 07:42:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('82', '44', '1', '0206f1e7711', '2015-09-15 09:48:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('83', '35', '1', '09014980cc2', '2015-09-15 09:57:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('84', '3', '1', '09020850a6e', '2015-09-15 10:05:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('85', '15', '1', '010ca98b3c6', '2015-09-15 10:10:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('86', '22', '1', '0500823cfe5', '2015-09-15 11:02:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('87', '5', '1', '0a03a56b973', '2015-09-15 14:51:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('88', '22', '1', '0500823cfe5', '2015-09-15 15:24:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('89', '48', '1', '04090d060bf', '2015-09-15 15:24:57', null);
INSERT INTO `asthma_user_login_log` VALUES ('90', '43', '1', '09028290dc8', '2015-09-15 16:43:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('91', '48', '1', '04090d060bf', '2015-09-15 17:34:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('92', '46', '1', '00074297996', '2015-09-15 19:44:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('93', '46', '1', '00074297996', '2015-09-15 21:20:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('94', '58', '1', '000665f7602', '2015-09-16 09:52:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('95', '50', '1', '000665f7602', '2015-09-16 10:09:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('96', '58', '1', '000665f7602', '2015-09-16 10:14:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('97', '50', '1', '000665f7602', '2015-09-16 10:19:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('98', '58', '1', '000665f7602', '2015-09-16 10:22:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('99', '7', '1', '0403ba56005', '2015-09-16 10:59:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('100', '59', '1', '090b00d031c', '2015-09-16 11:32:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('101', '60', '1', '09020850a6e', '2015-09-16 11:37:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('102', '60', '1', '060c3b4d38e', '2015-09-16 11:39:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('103', '60', '1', '060c3b4d38e', '2015-09-16 12:05:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('104', '59', '1', '090b00d031c', '2015-09-16 13:14:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('105', '5', '0', '20F73745-30D1-4B8C-923D-537729370CB0', '2015-09-16 14:41:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('106', '42', '1', '1234567890', '2015-09-16 14:50:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('107', '43', '1', '09028290dc8', '2015-09-16 16:27:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('108', '43', '1', '09028290dc8', '2015-09-16 16:38:17', null);
INSERT INTO `asthma_user_login_log` VALUES ('109', '46', '1', '00074297996', '2015-09-16 17:53:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('110', '61', '1', '09020850a6e', '2015-09-16 19:33:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('111', '61', '1', '05075aacf0a', '2015-09-16 19:33:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('112', '7', '1', '0403ba56005', '2015-09-16 21:52:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('113', '14', '1', '0a0adb8450b', '2015-09-17 07:20:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('114', '44', '1', '0206f1e7711', '2015-09-17 08:52:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('115', '7', '1', '0403ba56005', '2015-09-17 11:28:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('116', '1', '1', '0306bdb5874', '2015-09-17 11:46:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('117', '48', '1', '04090d060bf', '2015-09-17 13:04:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('118', '62', '1', '04019696f0f', '2015-09-17 14:47:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('119', '62', '1', '04019696f0f', '2015-09-17 14:48:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('120', '7', '1', '0403ba56005', '2015-09-17 16:09:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('121', '43', '1', '09028290dc8', '2015-09-17 16:24:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('122', '62', '1', '04019696f0f', '2015-09-17 16:32:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('123', '1', '1', '06076473011', '2015-09-17 16:56:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('124', '1', '1', '06076473011', '2015-09-17 16:57:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('125', '1', '1', '0306bdb5874', '2015-09-17 17:02:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('126', '3', '1', '09020850a6e', '2015-09-17 17:14:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('127', '1', '1', '06076473011', '2015-09-17 17:16:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('128', '5', '0', '031c735bcd6', '2015-09-17 18:47:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('129', '5', '0', '031c735bcd6', '2015-09-17 19:27:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('130', '5', '0', '031c735bcd6', '2015-09-17 19:30:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('131', '51', '1', '030dbafbb85', '2015-09-17 19:57:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('132', '15', '1', '1234567890', '2015-09-18 07:11:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('133', '44', '1', '0206f1e7711', '2015-09-18 09:07:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('134', '43', '1', '09028290dc8', '2015-09-18 12:02:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('135', '63', '1', '000128976ec', '2015-09-18 14:46:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('136', '43', '1', '09028290dc8', '2015-09-18 16:27:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('137', '7', '1', '0707ee81e37', '2015-09-18 17:30:43', null);
INSERT INTO `asthma_user_login_log` VALUES ('138', '62', '1', '04019696f0f', '2015-09-18 22:30:32', null);
INSERT INTO `asthma_user_login_log` VALUES ('139', '62', '1', '04019696f0f', '2015-09-18 22:49:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('140', '3', '1', '09020850a6e', '2015-09-19 10:49:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('141', '10', '1', '0a03a56b973', '2015-09-19 11:05:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('142', '53', '1', '08032cde576', '2015-09-19 14:17:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('143', '43', '1', '09028290dc8', '2015-09-19 16:14:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('144', '1', '1', '0306bdb5874', '2015-09-19 22:42:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('145', '50', '1', '000665f7602', '2015-09-20 09:25:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('146', '43', '1', '09028290dc8', '2015-09-20 09:46:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('147', '43', '1', '09028290dc8', '2015-09-20 13:27:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('148', '58', '1', '000665f7602', '2015-09-20 18:39:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('149', '50', '1', '000665f7602', '2015-09-20 18:40:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('150', '50', '1', '000665f7602', '2015-09-20 18:41:00', null);
INSERT INTO `asthma_user_login_log` VALUES ('151', '64', '1', '00033c77747', '2015-09-21 10:59:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('152', '15', '1', '1234567890', '2015-09-21 12:05:00', null);
INSERT INTO `asthma_user_login_log` VALUES ('153', '54', '1', '09020850a6e', '2015-09-21 14:06:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('154', '54', '1', '09020850a6e', '2015-09-21 14:08:55', null);
INSERT INTO `asthma_user_login_log` VALUES ('155', '3', '1', '09020850a6e', '2015-09-21 14:55:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('156', '3', '1', '09020850a6e', '2015-09-21 14:58:32', null);
INSERT INTO `asthma_user_login_log` VALUES ('157', '42', '1', '09020850a6e', '2015-09-21 16:43:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('158', '15', '1', '1234567890', '2015-09-21 17:13:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('159', '15', '1', '1234567890', '2015-09-21 17:16:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('160', '48', '1', '04090d060bf', '2015-09-21 17:30:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('161', '15', '1', '1234567890', '2015-09-21 17:32:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('162', '15', '1', '1234567890', '2015-09-21 17:35:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('163', '15', '1', '010ca98b3c6', '2015-09-21 17:40:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('164', '61', '1', '040da356dde', '2015-09-21 17:51:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('165', '1', '1', '0306bdb5874', '2015-09-21 18:32:23', null);
INSERT INTO `asthma_user_login_log` VALUES ('166', '62', '1', '04019696f0f', '2015-09-21 19:07:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('167', '62', '1', '04019696f0f', '2015-09-22 07:14:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('168', '5', '0', 'AEB4ECDA-A370-4893-BEEC-2F2E837F1F02', '2015-09-22 08:24:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('169', '3', '1', '09020850a6e', '2015-09-22 08:47:23', null);
INSERT INTO `asthma_user_login_log` VALUES ('170', '43', '1', '09028290dc8', '2015-09-22 09:19:55', null);
INSERT INTO `asthma_user_login_log` VALUES ('171', '43', '1', '09028290dc8', '2015-09-22 09:28:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('172', '43', '1', '09028290dc8', '2015-09-22 09:33:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('173', '43', '1', '09028290dc8', '2015-09-22 09:45:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('174', '43', '1', '09028290dc8', '2015-09-22 09:52:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('175', '3', '1', '09020850a6e', '2015-09-22 10:48:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('176', '15', '1', '010ca98b3c6', '2015-09-22 14:58:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('177', '15', '1', '010ca98b3c6', '2015-09-22 15:07:00', null);
INSERT INTO `asthma_user_login_log` VALUES ('178', '3', '1', '09020850a6e', '2015-09-22 17:06:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('179', '62', '1', '04019696f0f', '2015-09-22 19:18:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('180', '7', '1', '090b8c2008d', '2015-09-22 21:11:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('181', '43', '1', '09028290dc8', '2015-09-22 22:07:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('182', '5', '0', '031c735bcd6', '2015-09-23 00:15:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('183', '43', '1', '09028290dc8', '2015-09-23 08:55:17', null);
INSERT INTO `asthma_user_login_log` VALUES ('184', '7', '1', '060d71fd929', '2015-09-23 09:19:00', null);
INSERT INTO `asthma_user_login_log` VALUES ('185', '43', '1', '09020850a6e', '2015-09-23 09:21:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('186', '43', '1', '060d71fd929', '2015-09-23 09:24:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('187', '43', '1', '09028290dc8', '2015-09-23 10:08:32', null);
INSERT INTO `asthma_user_login_log` VALUES ('188', '7', '1', '090b8c2008d', '2015-09-23 13:31:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('189', '65', '1', '06038bcd905', '2015-09-23 17:51:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('190', '61', '1', '040da356dde', '2015-09-23 21:06:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('191', '3', '1', '09020850a6e', '2015-09-24 08:54:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('192', '5', '0', '0219412708a', '2015-09-24 11:13:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('193', '43', '1', '090341307de', '2015-09-24 14:49:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('194', '1', '1', '0306bdb5874', '2015-09-24 15:10:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('195', '1', '1', '0306bdb5874', '2015-09-24 15:10:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('196', '50', '1', '000665f7602', '2015-09-24 15:34:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('197', '1', '1', '06076473011', '2015-09-24 15:38:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('198', '7', '1', '090b8c2008d', '2015-09-24 15:46:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('199', '4', '1', '010f73b437c', '2015-09-24 15:51:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('200', '3', '1', '09020850a6e', '2015-09-24 15:53:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('201', '1', '1', '06076473011', '2015-09-24 15:55:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('202', '1', '1', '06076473011', '2015-09-24 15:56:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('203', '1', '1', '06076473011', '2015-09-24 15:56:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('204', '7', '1', '090b8c2008d', '2015-09-24 15:59:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('205', '1', '1', '0306bdb5874', '2015-09-24 16:06:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('206', '1', '1', '0306bdb5874', '2015-09-24 16:07:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('207', '2', '1', '', '2015-09-24 16:10:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('208', '2', '1', '0506a34c92d', '2015-09-24 16:13:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('209', '2', '1', '0506a34c92d', '2015-09-24 16:14:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('210', '2', '1', '0506a34c92d', '2015-09-24 16:15:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('211', '2', '1', '0506a34c92d', '2015-09-24 16:16:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('212', '2', '1', '0506a34c92d', '2015-09-24 16:20:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('213', '2', '1', '0506a34c92d', '2015-09-24 16:21:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('214', '2', '1', '0506a34c92d', '2015-09-24 16:24:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('215', '43', '1', '090341307de', '2015-09-24 16:39:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('216', '1', '1', '0306bdb5874', '2015-09-24 17:35:43', null);
INSERT INTO `asthma_user_login_log` VALUES ('217', '7', '1', '090b8c2008d', '2015-09-24 18:26:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('218', '7', '1', '090b8c2008d', '2015-09-24 18:27:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('219', '1', '1', '0306bdb5874', '2015-09-24 20:35:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('220', '66', '1', '080c063e3a3', '2015-09-24 23:09:57', null);
INSERT INTO `asthma_user_login_log` VALUES ('221', '5', '0', '0518e75c580', '2015-09-25 01:43:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('222', '62', '1', '04019696f0f', '2015-09-25 07:19:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('223', '68', '0', '031d512b111', '2015-09-25 10:28:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('224', '64', '1', '00033c77747', '2015-09-25 10:50:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('225', '7', '1', '090b8c2008d', '2015-09-25 11:05:55', null);
INSERT INTO `asthma_user_login_log` VALUES ('226', '69', '0', '081a2dbe3c1', '2015-09-25 11:18:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('227', '70', '0', '011b0b5b953', '2015-09-25 11:19:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('228', '52', '0', '081a099e3fe', '2015-09-25 11:52:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('229', '7', '0', '05187a3c59b', '2015-09-25 12:38:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('230', '49', '0', '001a5e273eb', '2015-09-25 13:11:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('231', '7', '0', '05187a3c59b', '2015-09-25 14:26:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('232', '6', '1', '0308378bb27', '2015-09-25 14:50:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('233', '48', '1', '04090d060bf', '2015-09-25 14:53:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('234', '5', '0', '031c735bcd6', '2015-09-25 15:41:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('235', '5', '0', '031c735bcd6', '2015-09-25 15:54:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('236', '5', '0', '031c735bcd6', '2015-09-25 15:55:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('237', '5', '0', '031c735bcd6', '2015-09-25 15:57:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('238', '2', '1', '0506a34c92d', '2015-09-25 16:05:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('239', '71', '0', '05105edc5bd', '2015-09-25 16:23:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('240', '72', '0', '0518b2dc592', '2015-09-25 16:39:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('241', '71', '0', '05105edc5bd', '2015-09-25 17:16:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('242', '7', '1', '090b8c2008d', '2015-09-25 17:29:43', null);
INSERT INTO `asthma_user_login_log` VALUES ('243', '5', '0', '031c735bcd6', '2015-09-25 17:56:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('244', '2', '0', '031c130b11d', '2015-09-25 18:13:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('245', '5', '0', '031c735bcd6', '2015-09-25 18:27:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('246', '5', '0', '031c735bcd6', '2015-09-25 18:34:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('247', '5', '0', '031c735bcd6', '2015-09-25 18:56:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('248', '1', '1', '0306bdb5874', '2015-09-25 19:08:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('249', '2', '0', '031c735bcd6', '2015-09-25 19:12:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('250', '2', '0', '031c735bcd6', '2015-09-25 19:13:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('251', '7', '1', '090b8c2008d', '2015-09-25 20:10:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('252', '7', '1', '090b8c2008d', '2015-09-25 20:11:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('253', '7', '1', '090b8c2008d', '2015-09-25 20:15:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('254', '1', '0', '0413a746b9b', '2015-09-25 21:14:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('255', '73', '0', '09192300612', '2015-09-26 09:37:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('256', '73', '0', '09192300612', '2015-09-26 09:39:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('257', '7', '0', '05187a3c59b', '2015-09-26 09:40:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('258', '74', '0', '091a1b9061d', '2015-09-26 10:07:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('259', '10', '1', '0a03a56b973', '2015-09-26 10:14:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('260', '75', '1', '07012741a86', '2015-09-26 10:47:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('261', '76', '1', '07012741a86', '2015-09-26 10:59:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('262', '77', '0', '091628c0619', '2015-09-26 11:18:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('263', '78', '1', '070a0581a93', '2015-09-26 11:40:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('264', '79', '1', '090cbea0604', '2015-09-26 11:45:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('265', '4', '1', '07011841a97', '2015-09-26 11:54:17', null);
INSERT INTO `asthma_user_login_log` VALUES ('266', '74', '1', '09039680e86', '2015-09-26 12:15:43', null);
INSERT INTO `asthma_user_login_log` VALUES ('267', '76', '1', '07012741a86', '2015-09-26 13:10:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('268', '80', '0', '071d4741aa5', '2015-09-26 14:42:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('269', '7', '0', '05187a3c59b', '2015-09-26 15:57:13', null);
INSERT INTO `asthma_user_login_log` VALUES ('270', '5', '0', '0219412708a', '2015-09-26 16:24:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('271', '5', '0', '0219412708a', '2015-09-26 16:24:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('272', '81', '1', '020d34d7cc5', '2015-09-26 16:25:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('273', '82', '1', '0a06f57ab6c', '2015-09-26 17:07:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('274', '39', '0', '0219412708a', '2015-09-26 17:23:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('275', '39', '0', '0219412708a', '2015-09-26 17:24:23', null);
INSERT INTO `asthma_user_login_log` VALUES ('276', '69', '0', '081a2dbe3c1', '2015-09-26 17:33:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('277', '7', '0', '05187a3c59b', '2015-09-26 17:35:00', null);
INSERT INTO `asthma_user_login_log` VALUES ('278', '5', '0', '0219412708a', '2015-09-26 17:42:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('279', '83', '0', '081a2dbe3c1', '2015-09-26 17:43:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('280', '1', '1', '0306bdb5874', '2015-09-26 17:44:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('281', '78', '0', '05187a3c59b', '2015-09-26 17:50:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('282', '39', '0', '0219412708a', '2015-09-26 19:05:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('283', '39', '0', '3EF0F0E1-1A47-4160-BF1A-F125505BE126', '2015-09-26 19:21:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('284', '63', '0', '071485e1a50', '2015-09-26 21:11:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('285', '2', '1', '0506a34c92d', '2015-09-26 22:03:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('286', '78', '0', '05187a3c59b', '2015-09-26 22:29:47', null);
INSERT INTO `asthma_user_login_log` VALUES ('287', '78', '0', '05187a3c59b', '2015-09-26 22:33:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('288', '78', '1', '090b8c2008d', '2015-09-26 22:33:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('289', '7', '0', '05187a3c59b', '2015-09-26 22:35:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('290', '7', '1', '090b8c2008d', '2015-09-26 22:35:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('291', '7', '0', '05187a3c59b', '2015-09-26 22:36:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('292', '7', '1', '090b8c2008d', '2015-09-26 22:36:48', null);
INSERT INTO `asthma_user_login_log` VALUES ('293', '50', '1', '000665f7602', '2015-09-27 10:10:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('294', '84', '0', '031c735bcd6', '2015-09-27 14:19:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('295', '5', '0', 'F46BF0D9-5427-4EDD-9106-70CA5129BB34', '2015-09-27 15:07:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('296', '7', '1', '05017b7c741', '2015-09-27 19:35:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('297', '85', '1', '0609731db1d', '2015-09-28 09:27:47', null);
INSERT INTO `asthma_user_login_log` VALUES ('298', '5', '0', '031c735bcd6', '2015-09-28 11:07:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('299', '5', '1', '060eb2bdb73', '2015-09-28 16:08:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('300', '59', '1', '090b00d031c', '2015-09-29 05:19:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('301', '87', '1', '06089e2d84c', '2015-09-29 10:09:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('302', '84', '0', '031c735bcd6', '2015-09-29 11:47:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('303', '87', '1', '06089e2d84c', '2015-09-29 11:50:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('304', '88', '1', '060a8cddb9c', '2015-09-29 14:00:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('305', '89', '0', '011b0b5b953', '2015-09-29 14:13:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('306', '90', '1', '02002137f08', '2015-09-29 15:32:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('307', '90', '1', '02002137f08', '2015-09-29 15:37:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('308', '43', '1', '090341307de', '2015-09-29 16:57:55', null);
INSERT INTO `asthma_user_login_log` VALUES ('309', '7', '0', '05187a3c59b', '2015-09-29 21:39:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('310', '91', '0', '0710a331b3d', '2015-09-30 12:04:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('311', '1', '1', '0306bdb5874', '2015-09-30 14:01:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('312', '22', '1', '09055f804d1', '2015-10-01 10:36:48', null);
INSERT INTO `asthma_user_login_log` VALUES ('313', '43', '1', '07056c41818', '2015-10-01 22:49:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('314', '43', '1', '07056c41818', '2015-10-01 22:54:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('315', '92', '1', '0509dbcd958', '2015-10-02 14:55:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('316', '93', '1', '05017b7c741', '2015-10-02 16:19:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('317', '7', '1', '05017b7c741', '2015-10-02 17:25:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('318', '94', '1', '010c6fca5b1', '2015-10-02 19:49:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('319', '83', '0', '081a2dbe3c1', '2015-10-02 20:01:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('320', '95', '1', '050668dd90e', '2015-10-02 21:38:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('321', '96', '1', '04037ac76c8', '2015-10-02 21:51:23', null);
INSERT INTO `asthma_user_login_log` VALUES ('322', '51', '1', '060d1f0c5ab', '2015-10-03 12:07:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('323', '15', '1', '010ca98b3c6', '2015-10-03 14:09:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('324', '46', '1', '00074297996', '2015-10-03 19:53:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('325', '43', '1', '07056c41818', '2015-10-04 11:23:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('326', '43', '1', '07056c41818', '2015-10-04 18:02:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('327', '43', '1', '07056c41818', '2015-10-04 18:28:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('328', '97', '1', '090bc6e1a61', '2015-10-04 22:47:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('329', '1', '0', '0413a746b9b', '2015-10-05 15:04:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('330', '43', '1', '07056c41818', '2015-10-05 17:26:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('331', '43', '1', '09020850a6e', '2015-10-05 17:38:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('332', '43', '1', '07056c41818', '2015-10-05 17:40:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('333', '98', '1', '0700331066b', '2015-10-05 23:03:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('334', '99', '1', '0a008eb4d78', '2015-10-05 23:43:43', null);
INSERT INTO `asthma_user_login_log` VALUES ('335', '71', '0', '05105edc5bd', '2015-10-06 09:16:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('336', '71', '0', '05105edc5bd', '2015-10-06 09:19:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('337', '71', '0', '05105edc5bd', '2015-10-06 09:20:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('338', '71', '0', '05105edc5bd', '2015-10-06 09:21:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('339', '71', '0', '05105edc5bd', '2015-10-06 09:25:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('340', '78', '1', '05017b7c741', '2015-10-06 09:32:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('341', '78', '0', '05187a3c59b', '2015-10-06 09:52:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('342', '7', '1', '05017b7c741', '2015-10-06 09:53:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('343', '5', '0', '09E25CAD-39F8-46D4-9359-F28C9AED8CE9', '2015-10-06 18:17:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('344', '43', '1', '07056c41818', '2015-10-07 08:53:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('345', '43', '1', '07056c41818', '2015-10-07 08:54:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('346', '100', '1', '0a07ad85100', '2015-10-07 14:23:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('347', '100', '1', '0a07ad85100', '2015-10-07 14:27:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('348', '101', '0', '061321dc77c', '2015-10-07 15:23:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('349', '1', '1', '0306bdb5874', '2015-10-07 20:57:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('350', '102', '0', '00187ed6d87', '2015-10-08 00:06:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('351', '22', '1', '040a814740f', '2015-10-08 01:22:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('352', '43', '1', '07056c41818', '2015-10-08 11:16:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('353', '43', '1', '07056c41818', '2015-10-08 14:31:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('354', '30', '0', '031ff7daf74', '2015-10-08 15:37:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('355', '43', '1', '07056c41818', '2015-10-08 18:52:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('356', '43', '1', '07056c41818', '2015-10-08 20:21:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('357', '3', '1', '09020850a6e', '2015-10-08 23:23:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('358', '43', '1', '07056c41818', '2015-10-09 08:14:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('359', '43', '1', '07056c41818', '2015-10-09 08:38:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('360', '7', '1', '05017b7c741', '2015-10-09 10:24:43', null);
INSERT INTO `asthma_user_login_log` VALUES ('361', '7', '1', '05017b7c741', '2015-10-09 10:25:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('362', '78', '1', '05017b7c741', '2015-10-09 11:32:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('363', '7', '1', '05017b7c741', '2015-10-09 11:34:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('364', '7', '1', '05017b7c741', '2015-10-09 11:51:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('365', '7', '0', '05187a3c59b', '2015-10-09 12:03:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('366', '78', '1', '05017b7c741', '2015-10-09 12:45:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('367', '5', '0', '09E25CAD-39F8-46D4-9359-F28C9AED8CE9', '2015-10-09 12:55:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('368', '5', '0', '09E25CAD-39F8-46D4-9359-F28C9AED8CE9', '2015-10-09 12:56:47', null);
INSERT INTO `asthma_user_login_log` VALUES ('369', '78', '1', '05017b7c741', '2015-10-09 13:39:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('370', '5', '0', '09E25CAD-39F8-46D4-9359-F28C9AED8CE9', '2015-10-09 13:40:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('371', '5', '0', '09E25CAD-39F8-46D4-9359-F28C9AED8CE9', '2015-10-09 13:41:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('372', '5', '0', '09E25CAD-39F8-46D4-9359-F28C9AED8CE9', '2015-10-09 13:41:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('373', '78', '0', '031c735bcd6', '2015-10-09 13:42:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('374', '5', '0', '0219412708a', '2015-10-09 13:43:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('375', '7', '1', '05017b7c741', '2015-10-09 13:44:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('376', '3', '1', '05017b7c741', '2015-10-09 14:04:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('377', '78', '1', '05017b7c741', '2015-10-09 14:07:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('378', '3', '0', '031c735bcd6', '2015-10-09 14:07:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('379', '7', '1', '05017b7c741', '2015-10-09 14:18:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('380', '78', '1', '05017b7c741', '2015-10-09 14:19:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('381', '78', '1', '05017b7c741', '2015-10-09 14:25:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('382', '84', '0', '0016c7a7018', '2015-10-09 18:48:55', null);
INSERT INTO `asthma_user_login_log` VALUES ('383', '84', '0', '0016c7a7018', '2015-10-09 18:52:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('384', '5', '0', '09E25CAD-39F8-46D4-9359-F28C9AED8CE9', '2015-10-09 22:34:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('385', '43', '1', '07056c41818', '2015-10-10 08:46:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('386', '43', '1', '07056c41818', '2015-10-10 09:16:49', null);
INSERT INTO `asthma_user_login_log` VALUES ('387', '83', '0', '081a2dbe3c1', '2015-10-10 10:03:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('388', '103', '1', '0a0af505022', '2015-10-10 10:40:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('389', '103', '1', '0a0af505022', '2015-10-10 10:45:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('390', '7', '1', '05017b7c741', '2015-10-10 11:36:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('391', '7', '1', '05017b7c741', '2015-10-10 14:05:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('392', '63', '0', '071485e1a50', '2015-10-10 14:05:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('393', '15', '1', '010ca98b3c6', '2015-10-11 09:50:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('394', '3', '1', '09052071889', '2015-10-11 10:12:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('395', '104', '0', '011b705a197', '2015-10-11 19:49:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('396', '105', '0', '021a8ff65e1', '2015-10-12 12:10:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('397', '78', '1', '05017b7c741', '2015-10-12 17:01:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('398', '1', '1', '0306bdb5874', '2015-10-12 17:44:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('399', '5', '0', '0016c7a7018', '2015-10-12 17:54:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('400', '7', '1', '05017b7c741', '2015-10-12 17:58:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('401', '78', '1', '05017b7c741', '2015-10-12 17:58:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('402', '1', '1', '0306bdb5874', '2015-10-12 18:00:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('403', '1', '1', '0306bdb5874', '2015-10-12 18:03:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('404', '7', '1', '05017b7c741', '2015-10-12 19:54:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('405', '78', '1', '05017b7c741', '2015-10-12 21:08:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('406', '78', '1', '05017b7c741', '2015-10-12 21:25:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('407', '78', '1', '05017b7c741', '2015-10-12 21:26:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('408', '78', '1', '05017b7c741', '2015-10-12 21:36:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('409', '78', '1', '05017b7c741', '2015-10-12 21:37:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('410', '1', '0', '0016c7a7018', '2015-10-13 14:43:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('411', '106', '0', '0912afb1fac', '2015-10-13 22:58:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('412', '7', '1', '05017b7c741', '2015-10-14 10:35:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('413', '78', '1', '05017b7c741', '2015-10-14 18:09:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('414', '107', '0', '0815951fba0', '2015-10-15 14:14:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('415', '108', '0', '07138ca02b8', '2015-10-15 18:13:32', null);
INSERT INTO `asthma_user_login_log` VALUES ('416', '109', '1', '08047a0fafc', '2015-10-16 09:20:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('417', '110', '1', '040d7c27084', '2015-10-16 16:14:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('418', '5', '0', '05130ecdf02', '2015-10-17 03:40:32', null);
INSERT INTO `asthma_user_login_log` VALUES ('419', '78', '1', '05017b7c741', '2015-10-17 09:03:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('420', '111', '0', '081c578f945', '2015-10-17 09:31:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('421', '78', '1', '05017b7c741', '2015-10-17 15:52:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('422', '78', '0', '05187a3c59b', '2015-10-17 16:01:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('423', '112', '1', '0a0bc3655ca', '2015-10-17 16:14:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('424', '78', '0', '05187a3c59b', '2015-10-17 16:25:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('425', '78', '0', '05187a3c59b', '2015-10-17 17:00:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('426', '78', '1', '05017b7c741', '2015-10-17 18:06:43', null);
INSERT INTO `asthma_user_login_log` VALUES ('427', '78', '1', '05017b7c741', '2015-10-17 18:08:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('428', '78', '0', '05187a3c59b', '2015-10-17 18:10:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('429', '78', '1', '05017b7c741', '2015-10-17 19:56:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('430', '113', '1', '030053ab85a', '2015-10-17 20:11:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('431', '114', '1', '05087d3dfe2', '2015-10-17 20:38:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('432', '116', '0', '061a247c382', '2015-10-17 20:51:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('433', '115', '1', '0200c27671e', '2015-10-17 20:53:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('434', '118', '0', '031ed9bab61', '2015-10-17 20:56:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('435', '117', '1', '020fb13671e', '2015-10-17 20:57:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('436', '119', '0', '051960fdff7', '2015-10-17 21:58:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('437', '120', '1', '0a0789f55fc', '2015-10-17 22:12:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('438', '121', '1', '050a0d4df90', '2015-10-18 08:49:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('439', '121', '1', '050a0d4df90', '2015-10-18 08:58:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('440', '122', '1', '050dbe3dfa3', '2015-10-18 11:17:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('441', '123', '0', '02175046748', '2015-10-18 15:28:32', null);
INSERT INTO `asthma_user_login_log` VALUES ('442', '124', '1', '050ef3cde40', '2015-10-18 16:05:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('443', '113', '1', '030053ab85a', '2015-10-18 16:17:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('444', '126', '1', '0401f527184', '2015-10-18 16:25:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('445', '127', '1', '0304936aacf', '2015-10-18 16:40:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('446', '128', '1', '060a332c224', '2015-10-18 17:45:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('447', '129', '0', '0316c43aaf8', '2015-10-18 22:43:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('448', '130', '1', '0a0c2135479', '2015-10-18 23:33:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('449', '131', '1', '00090e9683b', '2015-10-18 23:44:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('450', '132', '0', '0a1636451a4', '2015-10-19 08:30:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('451', '133', '0', '00112e4685d', '2015-10-19 10:08:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('452', '134', '1', '060aca0c27b', '2015-10-19 10:08:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('453', '135', '0', '0a1a53c541d', '2015-10-19 10:34:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('454', '136', '0', '0716ec70090', '2015-10-19 10:35:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('455', '138', '1', '010072fa2de', '2015-10-19 10:45:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('456', '139', '1', '010072fa2de', '2015-10-19 10:45:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('457', '143', '1', '040250c71d7', '2015-10-19 11:05:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('458', '144', '1', '0405b4671d5', '2015-10-19 11:23:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('459', '138', '1', '010072fa2de', '2015-10-19 11:35:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('460', '145', '1', '09013b41c0c', '2015-10-19 12:38:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('461', '146', '0', '05105edc5bd', '2015-10-19 13:44:32', null);
INSERT INTO `asthma_user_login_log` VALUES ('462', '147', '1', '060fec9c24e', '2015-10-19 14:02:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('463', '150', '1', '050e85bc131', '2015-10-19 15:06:48', null);
INSERT INTO `asthma_user_login_log` VALUES ('464', '151', '0', '0114ad1a2f9', '2015-10-19 17:04:13', null);
INSERT INTO `asthma_user_login_log` VALUES ('465', '148', '1', '03089d1aa91', '2015-10-19 18:32:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('466', '78', '1', '05017b7c741', '2015-10-19 19:19:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('467', '152', '1', '010264a455e', '2015-10-19 22:58:17', null);
INSERT INTO `asthma_user_login_log` VALUES ('468', '153', '1', '0a0ab9554f9', '2015-10-20 09:05:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('469', '154', '0', '031be03aaa9', '2015-10-20 11:35:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('470', '78', '0', '05187a3c59b', '2015-10-20 11:36:00', null);
INSERT INTO `asthma_user_login_log` VALUES ('471', '155', '0', '0716fda0002', '2015-10-20 11:39:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('472', '156', '1', '0708506000c', '2015-10-20 14:17:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('473', '157', '1', '0708506000c', '2015-10-20 14:19:43', null);
INSERT INTO `asthma_user_login_log` VALUES ('474', '158', '1', '0708506000c', '2015-10-20 14:22:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('475', '64', '1', '00033c77747', '2015-10-20 14:32:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('476', '159', '0', '0a1b806549c', '2015-10-20 14:58:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('477', '78', '1', '05017b7c741', '2015-10-20 14:58:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('478', '160', '0', '061687ec2f9', '2015-10-20 14:59:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('479', '161', '1', '050dea2de97', '2015-10-20 15:08:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('480', '83', '0', '081a2dbe3c1', '2015-10-20 15:24:57', null);
INSERT INTO `asthma_user_login_log` VALUES ('481', '162', '0', '0013aa968d7', '2015-10-20 16:06:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('482', '163', '0', '0510212de0b', '2015-10-20 16:16:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('483', '165', '1', '080fb6ef84b', '2015-10-20 16:49:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('484', '164', '1', '010b3dda257', '2015-10-20 16:50:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('485', '166', '0', '0a134485497', '2015-10-20 17:06:17', null);
INSERT INTO `asthma_user_login_log` VALUES ('486', '167', '0', '0512f1cde9b', '2015-10-20 17:12:55', null);
INSERT INTO `asthma_user_login_log` VALUES ('487', '168', '0', '071e2fa001a', '2015-10-20 17:24:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('488', '169', '0', '041d9137162', '2015-10-20 17:34:32', null);
INSERT INTO `asthma_user_login_log` VALUES ('489', '84', '0', '0016c7a7018', '2015-10-20 18:09:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('490', '83', '0', '081a2dbe3c1', '2015-10-20 18:15:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('491', '83', '0', '081a2dbe3c1', '2015-10-20 18:17:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('492', '170', '0', '0a18d8554a1', '2015-10-20 19:25:57', null);
INSERT INTO `asthma_user_login_log` VALUES ('493', '171', '0', '001977568d7', '2015-10-20 21:02:49', null);
INSERT INTO `asthma_user_login_log` VALUES ('494', '172', '0', '0111184ad8f', '2015-10-20 22:25:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('495', '87', '1', '', '2015-10-20 22:58:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('496', '173', '0', '0717829001a', '2015-10-21 09:37:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('497', '78', '1', '05017b7c741', '2015-10-21 11:24:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('498', '78', '0', '05187a3c59b', '2015-10-21 11:41:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('499', '78', '0', '05187a3c59b', '2015-10-21 11:42:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('500', '174', '0', '03172b9aaa3', '2015-10-21 11:58:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('501', '43', '1', '07056c41818', '2015-10-21 13:57:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('502', '175', '0', '011f915adbc', '2015-10-21 14:03:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('503', '176', '0', '0718166199f', '2015-10-21 15:13:49', null);
INSERT INTO `asthma_user_login_log` VALUES ('504', '43', '1', '07056c41818', '2015-10-21 15:43:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('505', '78', '1', '05017b7c741', '2015-10-22 09:26:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('506', '78', '1', '05017b7c741', '2015-10-22 10:11:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('507', '178', '0', '07154b10095', '2015-10-22 10:15:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('508', '179', '1', '05017b7c741', '2015-10-22 10:20:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('509', '7', '1', '05017b7c741', '2015-10-22 10:20:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('510', '7', '1', '05017b7c741', '2015-10-22 10:26:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('511', '78', '1', '05017b7c741', '2015-10-22 11:02:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('512', '7', '1', '05017b7c741', '2015-10-22 11:03:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('513', '78', '1', '05017b7c741', '2015-10-22 16:14:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('514', '1', '1', '0306bdb5874', '2015-10-22 16:25:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('515', '84', '0', '0016c7a7018', '2015-10-22 17:04:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('516', '78', '1', '05017b7c741', '2015-10-22 17:35:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('517', '1', '1', '0a03a56b973', '2015-10-22 17:46:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('518', '78', '1', '05017b7c741', '2015-10-22 18:19:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('519', '7', '0', '05187a3c59b', '2015-10-22 18:41:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('520', '7', '0', '0016c7a7018', '2015-10-22 18:42:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('521', '6', '1', '0308378bb27', '2015-10-22 18:55:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('522', '46', '1', '00074297996', '2015-10-22 22:07:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('523', '1', '1', '0306bdb5874', '2015-10-23 09:59:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('524', '181', '1', '03076b3a4c6', '2015-10-23 11:49:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('525', '182', '1', '040980a7f8e', '2015-10-23 11:52:49', null);
INSERT INTO `asthma_user_login_log` VALUES ('526', '78', '1', '05017b7c741', '2015-10-23 14:36:17', null);
INSERT INTO `asthma_user_login_log` VALUES ('527', '7', '1', '05017b7c741', '2015-10-23 14:36:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('528', '3', '0', '05105edc5bd', '2015-10-23 18:19:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('529', '183', '0', '05105edc5bd', '2015-10-23 18:40:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('530', '184', '0', '05105edc5bd', '2015-10-24 10:18:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('531', '84', '0', '0016c7a7018', '2015-10-24 11:27:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('532', '185', '0', '05105edc5bd', '2015-10-24 16:32:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('533', '186', '0', '05105edc5bd', '2015-10-24 16:37:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('534', '7', '1', '05017b7c741', '2015-10-25 21:31:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('535', '188', '0', '04141fe7157', '2015-10-26 14:45:13', null);
INSERT INTO `asthma_user_login_log` VALUES ('536', '187', '0', '05105edc5bd', '2015-10-26 14:59:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('537', '2', '1', '060ebb7cf88', '2015-10-26 17:29:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('538', '1', '1', '010c5465fe5', '2015-10-27 09:36:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('539', '189', '1', '05055aad3ae', '2015-10-27 10:31:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('540', '190', '1', '040764c7c6f', '2015-10-27 10:38:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('541', '191', '1', '040093b7c6d', '2015-10-27 10:42:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('542', '192', '1', '090180111b9', '2015-10-27 10:47:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('543', '193', '1', '0303985a727', '2015-10-27 10:49:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('544', '194', '1', '090283e11ba', '2015-10-27 10:55:55', null);
INSERT INTO `asthma_user_login_log` VALUES ('545', '195', '0', '0315994a724', '2015-10-27 10:56:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('546', '196', '0', '021e73a6b5a', '2015-10-27 10:58:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('547', '56', '1', '00049cb65f1', '2015-10-27 13:16:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('548', '84', '0', '031c735bcd6', '2015-10-27 14:14:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('549', '1', '0', '08111fff42c', '2015-10-27 21:58:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('550', '197', '0', '061c854ce15', '2015-10-28 00:10:23', null);
INSERT INTO `asthma_user_login_log` VALUES ('551', '198', '0', '051a6f0de2c', '2015-10-28 09:32:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('552', '198', '0', '051a6f0de2c', '2015-10-28 09:37:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('553', '7', '1', '05017b7c741', '2015-10-28 11:34:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('554', '7', '1', '05017b7c741', '2015-10-28 11:36:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('555', '7', '1', '05017b7c741', '2015-10-28 11:42:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('556', '1', '1', '010c5465fe5', '2015-10-28 11:42:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('557', '7', '1', '05017b7c741', '2015-10-28 11:49:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('558', '7', '1', '05017b7c741', '2015-10-28 12:20:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('559', '78', '1', '07011841a97', '2015-10-28 13:06:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('560', '35', '1', '09014980cc2', '2015-10-28 13:13:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('561', '35', '1', '09014980cc2', '2015-10-28 13:20:47', null);
INSERT INTO `asthma_user_login_log` VALUES ('562', '199', '1', '0a08d355837', '2015-10-28 15:17:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('563', '1', '1', '010c5465fe5', '2015-10-28 15:31:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('564', '1', '1', '', '2015-10-28 15:41:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('565', '1', '1', '010c5465fe5', '2015-10-28 15:49:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('566', '1', '1', '010c5465fe5', '2015-10-28 15:50:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('567', '1', '1', '', '2015-10-28 16:04:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('568', '85', '1', '0609731db1d', '2015-10-28 16:48:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('569', '200', '0', '05169c9d2c6', '2015-10-28 17:21:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('570', '201', '1', '070a9a50019', '2015-10-29 13:58:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('571', '2', '1', '060ebb7cf88', '2015-10-29 22:16:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('572', '3', '0', '01127b6a999', '2015-10-30 08:30:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('573', '1', '1', '0a068735f07', '2015-10-30 11:48:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('574', '203', '0', '071898e0b8a', '2015-10-30 12:50:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('575', '84', '0', '0016c7a7018', '2015-10-30 14:11:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('576', '204', '0', '05187a3c59b', '2015-10-30 14:44:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('577', '205', '1', '0a03a9f5f15', '2015-10-30 14:47:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('578', '206', '0', '05172a9c592', '2015-10-30 14:49:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('579', '207', '1', '020b8d46def', '2015-10-30 14:49:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('580', '187', '0', '05105edc5bd', '2015-10-30 19:23:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('581', '208', '1', '0907dbd17b6', '2015-10-31 14:57:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('582', '7', '1', '05017b7c741', '2015-10-31 17:17:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('583', '7', '1', '05017b7c741', '2015-10-31 17:44:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('584', '7', '1', '07011841a97', '2015-10-31 17:46:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('585', '7', '1', '0a0ab9554f9', '2015-10-31 18:00:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('586', '7', '1', '05017b7c741', '2015-10-31 18:15:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('587', '7', '1', '05017b7c741', '2015-10-31 19:04:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('588', '204', '1', '05017b7c741', '2015-10-31 19:20:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('589', '7', '1', '05017b7c741', '2015-10-31 22:01:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('590', '2', '1', '000d2ce6f78', '2015-11-01 11:48:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('591', '2', '1', '060ebb7cf88', '2015-11-01 11:52:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('592', '1', '1', '080bf63f247', '2015-11-01 12:15:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('593', '209', '1', '0805113f84d', '2015-11-01 16:31:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('594', '7', '1', '05017b7c741', '2015-11-02 08:56:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('595', '1', '1', '010c5465fe5', '2015-11-02 09:33:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('596', '1', '1', '060ebb7cf88', '2015-11-02 09:44:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('597', '2', '1', '060ebb7cf88', '2015-11-02 09:46:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('598', '2', '1', '060ebb7cf88', '2015-11-02 10:25:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('599', '7', '1', '05017b7c741', '2015-11-02 14:30:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('600', '7', '1', '05017b7c741', '2015-11-02 14:51:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('601', '187', '0', '05105edc5bd', '2015-11-03 08:47:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('602', '204', '1', '05017b7c741', '2015-11-03 08:48:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('603', '7', '1', '05017b7c741', '2015-11-03 08:51:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('604', '204', '1', '05017b7c741', '2015-11-03 08:52:57', null);
INSERT INTO `asthma_user_login_log` VALUES ('605', '204', '1', '05017b7c741', '2015-11-03 09:29:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('606', '7', '1', '05017b7c741', '2015-11-03 09:29:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('607', '204', '1', '05017b7c741', '2015-11-03 09:30:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('608', '7', '1', '05017b7c741', '2015-11-03 09:32:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('609', '7', '1', '05017b7c741', '2015-11-03 10:33:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('610', '6', '1', '0308378bb27', '2015-11-03 12:45:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('611', '176', '0', '031c735bcd6', '2015-11-03 13:29:23', null);
INSERT INTO `asthma_user_login_log` VALUES ('612', '210', '0', '0a11cb35d08', '2015-11-03 13:37:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('613', '210', '0', '0a11cb35d08', '2015-11-03 13:53:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('614', '204', '1', '05017b7c741', '2015-11-03 14:51:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('615', '7', '0', '05187a3c59b', '2015-11-03 14:58:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('616', '176', '0', '0718166199f', '2015-11-03 15:00:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('617', '176', '0', '0718166199f', '2015-11-03 15:04:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('618', '7', '1', '05017b7c741', '2015-11-03 15:05:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('619', '204', '1', '05017b7c741', '2015-11-03 15:07:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('620', '204', '1', '05017b7c741', '2015-11-03 15:10:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('621', '7', '1', '05017b7c741', '2015-11-03 15:11:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('622', '204', '1', '05017b7c741', '2015-11-03 15:13:07', null);
INSERT INTO `asthma_user_login_log` VALUES ('623', '204', '0', '05187a3c59b', '2015-11-03 15:14:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('624', '7', '1', '05017b7c741', '2015-11-03 15:18:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('625', '204', '0', '0718166199f', '2015-11-03 15:21:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('626', '204', '0', '0718166199f', '2015-11-03 15:22:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('627', '211', '0', '0116660a254', '2015-11-03 15:22:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('628', '204', '1', '05017b7c741', '2015-11-03 16:26:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('629', '7', '1', '05017b7c741', '2015-11-03 16:28:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('630', '204', '1', '05017b7c741', '2015-11-03 16:34:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('631', '7', '1', '05017b7c741', '2015-11-03 16:35:23', null);
INSERT INTO `asthma_user_login_log` VALUES ('632', '212', '0', '011cb92abfd', '2015-11-03 20:46:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('633', '213', '0', '041c64e7169', '2015-11-04 09:11:49', null);
INSERT INTO `asthma_user_login_log` VALUES ('634', '214', '1', '0002a0f61ab', '2015-11-04 11:04:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('635', '215', '0', '011d676ab22', '2015-11-04 13:11:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('636', '204', '1', '05017b7c741', '2015-11-04 13:56:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('637', '216', '1', '0a092665dfa', '2015-11-04 14:11:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('638', '217', '0', '0412bff783b', '2015-11-04 14:13:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('639', '219', '0', '021fcae6f01', '2015-11-04 14:30:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('640', '220', '0', '02104386f0a', '2015-11-04 15:44:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('641', '221', '0', '0119347aa80', '2015-11-05 09:08:13', null);
INSERT INTO `asthma_user_login_log` VALUES ('642', '3', '0', '01127b6a999', '2015-11-05 09:26:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('643', '7', '1', '05017b7c741', '2015-11-05 10:19:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('644', '222', '0', '0519a95d60d', '2015-11-05 19:12:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('645', '223', '0', '061690fcab5', '2015-11-06 14:09:13', null);
INSERT INTO `asthma_user_login_log` VALUES ('646', '44', '1', '070b2eb087d', '2015-11-06 19:04:57', null);
INSERT INTO `asthma_user_login_log` VALUES ('647', '224', '1', '040332346ae', '2015-11-07 15:45:00', null);
INSERT INTO `asthma_user_login_log` VALUES ('648', '225', '1', '070e17f3776', '2015-11-08 15:55:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('649', '226', '0', '031e8d09cc8', '2015-11-09 09:45:41', null);
INSERT INTO `asthma_user_login_log` VALUES ('650', '46', '1', '00074297996', '2015-11-09 10:09:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('651', '227', '1', '04097f3478f', '2015-11-09 11:24:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('652', '187', '0', '05105edc5bd', '2015-11-09 14:18:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('653', '228', '0', '031c9c09cd3', '2015-11-09 14:24:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('654', '204', '1', '05017b7c741', '2015-11-09 15:16:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('655', '204', '1', '05017b7c741', '2015-11-11 14:11:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('656', '7', '1', '05017b7c741', '2015-11-11 14:21:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('657', '204', '1', '05017b7c741', '2015-11-11 15:17:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('658', '204', '1', '05017b7c741', '2015-11-11 15:20:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('659', '204', '1', '05017b7c741', '2015-11-11 15:49:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('660', '7', '1', '05017b7c741', '2015-11-11 15:54:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('661', '229', '0', '011c52b97df', '2015-11-12 09:20:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('662', '84', '0', '0016c7a7018', '2015-11-12 09:28:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('663', '7', '0', '05187a3c59b', '2015-11-12 09:37:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('664', '59', '1', '090b00d031c', '2015-11-12 18:55:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('665', '44', '1', '01050c89740', '2015-11-13 10:19:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('666', '177', '0', '07111c300c5', '2015-11-14 16:33:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('667', '7', '0', '01127b6a999', '2015-11-16 15:45:48', null);
INSERT INTO `asthma_user_login_log` VALUES ('668', '231', '1', '01085f8908f', '2015-11-17 18:33:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('669', '4', '1', '07011841a97', '2015-11-18 13:16:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('670', '121', '1', '0a06d7666d2', '2015-11-18 22:46:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('671', '152', '1', '000cd1f590f', '2015-11-19 19:47:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('672', '232', '0', '04122f640b4', '2015-11-20 09:36:58', null);
INSERT INTO `asthma_user_login_log` VALUES ('673', '3', '0', '01127b6a999', '2015-11-20 13:45:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('674', '233', '1', '0a00dc36b67', '2015-11-23 17:32:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('675', '10', '0', '08111fff42c', '2015-11-24 15:15:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('676', '234', '0', '01127b6a999', '2015-11-24 15:55:13', null);
INSERT INTO `asthma_user_login_log` VALUES ('677', '234', '0', '01127b6a999', '2015-11-24 15:58:48', null);
INSERT INTO `asthma_user_login_log` VALUES ('678', '234', '1', '060ebb7cf88', '2015-11-24 16:08:04', null);
INSERT INTO `asthma_user_login_log` VALUES ('679', '84', '0', '0016c7a7018', '2015-11-24 16:17:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('680', '84', '0', '031c735bcd6', '2015-11-24 16:18:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('681', '234', '0', '031c735bcd6', '2015-11-24 16:22:06', null);
INSERT INTO `asthma_user_login_log` VALUES ('682', '234', '0', '031c735bcd6', '2015-11-24 16:25:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('683', '1', '0', '08111fff42c', '2015-11-24 16:52:49', null);
INSERT INTO `asthma_user_login_log` VALUES ('684', '235', '0', '00136ea57b9', '2015-11-24 17:58:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('685', '236', '1', '0105c579d34', '2015-11-24 19:07:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('686', '237', '0', '041544e4e60', '2015-11-24 23:37:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('687', '198', '0', '051a6f0de2c', '2015-11-25 11:46:49', null);
INSERT INTO `asthma_user_login_log` VALUES ('688', '176', '0', '0718166199f', '2015-11-25 12:03:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('689', '10', '0', '08111fff42c', '2015-11-25 13:48:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('690', '3', '0', '01127b6a999', '2015-11-25 16:39:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('691', '234', '0', '011a66a9c2c', '2015-11-26 15:37:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('692', '56', '1', '0a0a6eb5d61', '2015-11-29 10:11:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('693', '91', '0', '0710a331b3d', '2015-11-29 10:22:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('694', '238', '0', '071e57934bd', '2015-11-29 12:35:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('695', '239', '0', '071d8bb008c', '2015-11-29 12:47:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('696', '240', '1', '03044f494f7', '2015-11-29 23:23:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('697', '84', '0', '0016c7a7018', '2015-11-30 09:12:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('698', '5', '0', '0016c7a7018', '2015-11-30 10:27:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('699', '187', '0', '0016c7a7018', '2015-11-30 11:50:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('700', '152', '1', '000cd1f590f', '2015-11-30 18:54:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('701', '241', '0', '0a1356068a4', '2015-11-30 19:29:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('702', '238', '1', '000b40854f6', '2015-11-30 21:18:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('703', '43', '1', '07056c41818', '2015-12-01 13:33:47', null);
INSERT INTO `asthma_user_login_log` VALUES ('704', '242', '1', '0a0cd4e6f02', '2015-12-01 14:25:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('705', '209', '1', '0805113f84d', '2015-12-02 12:06:40', null);
INSERT INTO `asthma_user_login_log` VALUES ('706', '243', '1', '0808f90c3c0', '2015-12-02 15:40:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('707', '204', '1', '05017b7c741', '2015-12-03 08:46:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('708', '7', '1', '05017b7c741', '2015-12-03 08:48:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('709', '179', '1', '05017b7c741', '2015-12-03 10:36:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('710', '246', '0', '071495f3a84', '2015-12-03 10:40:17', null);
INSERT INTO `asthma_user_login_log` VALUES ('711', '245', '1', '05017b7c741', '2015-12-03 10:40:47', null);
INSERT INTO `asthma_user_login_log` VALUES ('712', '247', '0', '091c5502611', '2015-12-03 11:11:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('713', '51', '1', '0601ad3f846', '2015-12-03 16:27:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('714', '152', '1', '000cd1f590f', '2015-12-03 18:13:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('715', '6', '1', '0308378bb27', '2015-12-04 11:00:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('716', '248', '0', '05105edc5bd', '2015-12-05 14:41:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('717', '187', '0', '05105edc5bd', '2015-12-05 14:51:48', null);
INSERT INTO `asthma_user_login_log` VALUES ('718', '34', '1', '0303b59ba5c', '2015-12-05 14:57:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('719', '249', '1', '0a0732d6cc2', '2015-12-07 15:46:33', null);
INSERT INTO `asthma_user_login_log` VALUES ('720', '204', '1', '05017b7c741', '2015-12-07 16:18:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('721', '43', '1', '0309f09925d', '2015-12-07 16:46:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('722', '84', '0', '03125369246', '2015-12-07 17:44:05', null);
INSERT INTO `asthma_user_login_log` VALUES ('723', '233', '0', '041f211496a', '2015-12-08 10:10:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('724', '7', '1', '05017b7c741', '2015-12-09 21:50:30', null);
INSERT INTO `asthma_user_login_log` VALUES ('725', '206', '0', '081f226c070', '2015-12-10 09:24:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('726', '6', '1', '0308378bb27', '2015-12-10 09:34:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('727', '250', '0', '0417bf94d0b', '2015-12-10 18:19:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('728', '174', '0', '03172b9aaa3', '2015-12-11 11:47:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('729', '251', '1', '090c4f9137c', '2015-12-12 09:12:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('730', '252', '1', '0300d6a8c25', '2015-12-12 09:16:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('731', '253', '1', '00011214dbf', '2015-12-13 13:26:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('732', '204', '1', '030796a8fe0', '2015-12-14 09:07:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('733', '30', '0', '031ff7daf74', '2015-12-16 12:55:47', null);
INSERT INTO `asthma_user_login_log` VALUES ('734', '254', '0', '091fa4d3f01', '2015-12-16 15:10:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('735', '10', '1', '000b5a86477', '2015-12-18 14:09:01', null);
INSERT INTO `asthma_user_login_log` VALUES ('736', '204', '0', '05187a3c59b', '2015-12-19 09:07:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('737', '7', '1', '030796a8fe0', '2015-12-19 11:43:17', null);
INSERT INTO `asthma_user_login_log` VALUES ('738', '7', '0', '05187a3c59b', '2015-12-19 11:47:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('739', '204', '1', '000d2ce6f78', '2015-12-19 13:06:48', null);
INSERT INTO `asthma_user_login_log` VALUES ('740', '7', '1', '000d2ce6f78', '2015-12-19 13:07:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('741', '2', '1', '060ebb7cf88', '2015-12-19 13:44:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('742', '255', '0', '001cb45499d', '2015-12-20 16:49:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('743', '204', '1', '030796a8fe0', '2015-12-22 13:16:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('744', '187', '0', '05105edc5bd', '2015-12-23 14:36:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('745', '256', '1', '0203f85467d', '2015-12-24 09:26:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('746', '257', '1', '07053082f3d', '2015-12-25 08:51:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('747', '258', '1', '0103d918c2e', '2015-12-26 11:03:37', null);
INSERT INTO `asthma_user_login_log` VALUES ('748', '259', '0', '0318e8c8456', '2015-12-26 11:04:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('749', '84', '0', '0016c7a7018', '2015-12-28 10:30:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('750', '1', '1', '06076473011', '2015-12-28 15:13:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('751', '84', '1', '06076473011', '2015-12-28 16:24:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('752', '204', '1', '030796a8fe0', '2015-12-28 16:46:10', null);
INSERT INTO `asthma_user_login_log` VALUES ('753', '1', '1', '0005edf8870', '2015-12-29 09:55:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('754', '1', '1', '0005edf8870', '2015-12-29 09:55:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('755', '1', '1', '0005edf8870', '2015-12-29 09:55:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('756', '1', '1', '080c7d9d36a', '2015-12-30 11:22:23', null);
INSERT INTO `asthma_user_login_log` VALUES ('757', '2', '1', '06055b9e9c8', '2016-01-04 14:30:47', null);
INSERT INTO `asthma_user_login_log` VALUES ('758', '2', '1', '06055b9e9c8', '2016-01-04 14:36:46', null);
INSERT INTO `asthma_user_login_log` VALUES ('759', '260', '0', '021bd224e95', '2016-01-05 10:55:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('760', '1', '0', '08111fff42c', '2016-01-05 11:11:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('761', '7', '1', '030796a8fe0', '2016-01-05 11:55:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('762', '7', '1', '030796a8fe0', '2016-01-05 15:38:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('763', '261', '1', '03043c282f4', '2016-01-05 15:46:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('764', '46', '1', '020ec534e3e', '2016-01-05 23:50:11', null);
INSERT INTO `asthma_user_login_log` VALUES ('765', '3', '0', '01127b6a999', '2016-01-07 09:36:21', null);
INSERT INTO `asthma_user_login_log` VALUES ('766', '262', '0', '01127b6a999', '2016-01-07 09:47:14', null);
INSERT INTO `asthma_user_login_log` VALUES ('767', '3', '0', '01127b6a999', '2016-01-07 09:55:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('768', '3', '0', '01127b6a999', '2016-01-07 16:35:25', null);
INSERT INTO `asthma_user_login_log` VALUES ('769', '263', '0', '031cd3d82ba', '2016-01-07 23:14:08', null);
INSERT INTO `asthma_user_login_log` VALUES ('770', '56', '1', '0a0aa9a73e1', '2016-01-08 10:07:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('771', '256', '1', '0203f85467d', '2016-01-09 13:54:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('772', '206', '0', '081f226c070', '2016-01-12 09:27:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('773', '146', '0', '05105edc5bd', '2016-01-14 10:38:22', null);
INSERT INTO `asthma_user_login_log` VALUES ('774', '187', '0', '05105edc5bd', '2016-01-14 10:41:43', null);
INSERT INTO `asthma_user_login_log` VALUES ('775', '146', '0', '05105edc5bd', '2016-01-14 10:43:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('776', '187', '0', '05105edc5bd', '2016-01-14 10:45:57', null);
INSERT INTO `asthma_user_login_log` VALUES ('777', '264', '0', '02130683216', '2016-01-15 10:30:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('778', '84', '0', '0016c7a7018', '2016-01-15 13:57:45', null);
INSERT INTO `asthma_user_login_log` VALUES ('779', '265', '1', '02045ab34f5', '2016-01-18 22:12:34', null);
INSERT INTO `asthma_user_login_log` VALUES ('780', '152', '1', '000c6733a50', '2016-01-19 08:21:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('781', '152', '1', '000c6733a50', '2016-01-19 08:58:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('782', '146', '0', '05105edc5bd', '2016-01-19 09:03:51', null);
INSERT INTO `asthma_user_login_log` VALUES ('783', '187', '0', '05105edc5bd', '2016-01-19 09:06:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('784', '23', '0', '09194db4ec3', '2016-01-19 22:03:42', null);
INSERT INTO `asthma_user_login_log` VALUES ('785', '3', '0', '01127b6a999', '2016-01-20 12:32:32', null);
INSERT INTO `asthma_user_login_log` VALUES ('786', '146', '0', '05105edc5bd', '2016-01-20 16:34:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('787', '187', '0', '05105edc5bd', '2016-01-20 16:35:52', null);
INSERT INTO `asthma_user_login_log` VALUES ('788', '23', '0', '09194db4ec3', '2016-01-22 13:05:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('789', '5', '0', '0313f1efae7', '2016-01-24 02:51:35', null);
INSERT INTO `asthma_user_login_log` VALUES ('790', '173', '0', '0a1f0a60421', '2016-01-24 20:59:44', null);
INSERT INTO `asthma_user_login_log` VALUES ('791', '266', '1', '0a07e2304fe', '2016-01-25 17:26:09', null);
INSERT INTO `asthma_user_login_log` VALUES ('792', '28', '1', '030219eba5d', '2016-01-30 09:37:49', null);
INSERT INTO `asthma_user_login_log` VALUES ('793', '267', '0', '05192a781c4', '2016-01-30 17:42:38', null);
INSERT INTO `asthma_user_login_log` VALUES ('794', '6', '0', '05105edc5bd', '2016-02-03 10:28:50', null);
INSERT INTO `asthma_user_login_log` VALUES ('795', '3', '0', '05105edc5bd', '2016-02-03 10:46:53', null);
INSERT INTO `asthma_user_login_log` VALUES ('796', '187', '0', '05105edc5bd', '2016-02-03 12:11:56', null);
INSERT INTO `asthma_user_login_log` VALUES ('797', '6', '1', '0308378bb27', '2016-02-04 09:16:18', null);
INSERT INTO `asthma_user_login_log` VALUES ('798', '187', '0', '05105edc5bd', '2016-02-04 09:22:03', null);
INSERT INTO `asthma_user_login_log` VALUES ('799', '204', '1', '030796a8fe0', '2016-02-04 10:48:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('800', '3', '0', '01127b6a999', '2016-02-04 17:36:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('801', '2', '1', '06055b9e9c8', '2016-02-14 10:22:15', null);
INSERT INTO `asthma_user_login_log` VALUES ('802', '6', '0', '001b28431f6', '2016-02-18 11:22:36', null);
INSERT INTO `asthma_user_login_log` VALUES ('803', '3', '0', '01127b6a999', '2016-02-20 22:50:16', null);
INSERT INTO `asthma_user_login_log` VALUES ('804', '3', '0', '01127b6a999', '2016-02-21 17:55:13', null);
INSERT INTO `asthma_user_login_log` VALUES ('805', '268', '0', '061d60885b7', '2016-02-23 08:44:20', null);
INSERT INTO `asthma_user_login_log` VALUES ('806', '269', '1', '0a0f9cb13f7', '2016-02-23 13:57:26', null);
INSERT INTO `asthma_user_login_log` VALUES ('807', '7', '1', '030796a8fe0', '2016-02-23 16:08:02', null);
INSERT INTO `asthma_user_login_log` VALUES ('808', '270', '1', '020384f20d5', '2016-02-25 17:36:19', null);
INSERT INTO `asthma_user_login_log` VALUES ('809', '1', '1', '123', '2016-02-25 23:32:31', null);
INSERT INTO `asthma_user_login_log` VALUES ('810', '1', '1', '123', '2016-02-25 23:32:54', null);
INSERT INTO `asthma_user_login_log` VALUES ('811', '1', '1', '123', '2016-02-25 23:35:59', null);
INSERT INTO `asthma_user_login_log` VALUES ('812', '270', '1', '1111', '2016-02-26 00:22:24', null);
INSERT INTO `asthma_user_login_log` VALUES ('813', '270', '1', '1111', '2016-02-26 00:24:28', null);
INSERT INTO `asthma_user_login_log` VALUES ('814', '270', '1', '1111', '2016-02-26 00:25:12', null);
INSERT INTO `asthma_user_login_log` VALUES ('815', '270', '1', '1111', '2016-02-26 00:26:27', null);
INSERT INTO `asthma_user_login_log` VALUES ('816', '270', '1', '1111', '2016-02-26 00:26:39', null);
INSERT INTO `asthma_user_login_log` VALUES ('817', '270', '1', '1111', '2016-02-26 00:28:47', null);
INSERT INTO `asthma_user_login_log` VALUES ('818', '270', '1', '1111', '2016-02-26 00:29:29', null);
INSERT INTO `asthma_user_login_log` VALUES ('819', '270', '1', '1111', '2016-02-26 00:30:59', null);

-- ----------------------------
-- Table structure for com_area
-- ----------------------------
DROP TABLE IF EXISTS `com_area`;
CREATE TABLE `com_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '地区名称',
  `pinyin` varchar(100) DEFAULT '' COMMENT '拼音',
  `pid` bigint(20) DEFAULT '0' COMMENT '父级编号',
  `area_code` varchar(6) DEFAULT NULL,
  `zip_code` varchar(6) DEFAULT NULL COMMENT '邮编',
  `left_code` bigint(20) DEFAULT '0' COMMENT '左编码',
  `right_code` bigint(20) DEFAULT '0' COMMENT '右编码',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地区';

-- ----------------------------
-- Records of com_area
-- ----------------------------

-- ----------------------------
-- Table structure for com_state
-- ----------------------------
DROP TABLE IF EXISTS `com_state`;
CREATE TABLE `com_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '状态名称',
  `value` int(11) DEFAULT '0' COMMENT '状态值',
  `intro` text COMMENT '简介',
  `type` varchar(45) DEFAULT NULL COMMENT '状态类型',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='状态';

-- ----------------------------
-- Records of com_state
-- ----------------------------

-- ----------------------------
-- Table structure for sec_permission
-- ----------------------------
DROP TABLE IF EXISTS `sec_permission`;
CREATE TABLE `sec_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `method` varchar(10) NOT NULL COMMENT '方法',
  `value` varchar(50) NOT NULL COMMENT '值',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `intro` varchar(255) DEFAULT NULL COMMENT '简介',
  `pid` bigint(20) DEFAULT '0' COMMENT '父级id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限';

-- ----------------------------
-- Records of sec_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sec_role
-- ----------------------------
DROP TABLE IF EXISTS `sec_role`;
CREATE TABLE `sec_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `value` varchar(50) NOT NULL COMMENT '值',
  `intro` varchar(255) DEFAULT NULL COMMENT '简介',
  `pid` bigint(20) DEFAULT '0' COMMENT '父级id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sec_role
-- ----------------------------

-- ----------------------------
-- Table structure for sec_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sec_role_permission`;
CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限';

-- ----------------------------
-- Records of sec_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sec_token
-- ----------------------------
DROP TABLE IF EXISTS `sec_token`;
CREATE TABLE `sec_token` (
  `uuid` varchar(255) NOT NULL COMMENT '用户编码',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `expiration_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `used_to` int(11) NOT NULL COMMENT '0是注册，1是手机验证',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='认证';

-- ----------------------------
-- Records of sec_token
-- ----------------------------

-- ----------------------------
-- Table structure for sec_user
-- ----------------------------
DROP TABLE IF EXISTS `sec_user`;
CREATE TABLE `sec_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '登录名',
  `providername` varchar(50) NOT NULL COMMENT '提供者',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `avatar_url` varchar(255) DEFAULT NULL COMMENT '头像',
  `first_name` varchar(10) DEFAULT NULL COMMENT '名字',
  `last_name` varchar(10) DEFAULT NULL COMMENT '姓氏',
  `full_name` varchar(20) DEFAULT NULL COMMENT '全名',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of sec_user
-- ----------------------------

-- ----------------------------
-- Table structure for sec_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sec_user_role`;
CREATE TABLE `sec_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色';

-- ----------------------------
-- Records of sec_user_role
-- ----------------------------
