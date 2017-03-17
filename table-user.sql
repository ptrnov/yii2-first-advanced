/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : yii2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-18 04:07:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EMP_ID` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'LG.2015.000000',
  `avatar` text COLLATE utf8_unicode_ci,
  `avatarImage` text COLLATE utf8_unicode_ci,
  `POSITION_SITE` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ERP' COMMENT 'POSITION_SITE (APP POSITION)\r\nERP   = ERP web\r\nCRM = Crm web\r\nDB    = Dahboard Web\r\n',
  `POSITION_LOGIN` int(11) NOT NULL DEFAULT '0' COMMENT 'POSITION_LOGIN\r\nERP   =ERP [0]\r\nCRM =CRM [1-6 ]->index dashboard\r\nDB=Dashboard[1-4]- index dashboard',
  `POSITION_ACCESS` int(11) DEFAULT NULL COMMENT 'Access Index dashboard Android APP\r\n1 = manager, 2 = salesman hanya untuk android',
  `ONLINE` int(11) DEFAULT '0' COMMENT '0 = ofline and 1 = online ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'azLSTAYr7Y7TLsEAML-LsVq9cAXLyAWa', '$2y$13$h/0uc7IVHGsALByr.tWfhu4JNo8s5YUXBgficZrKEEYTYoUsV9k7q', null, 'ptr.nov@gmail.com', '10', '1431765676', '1431765676', '12345', 'LG.2015.000000', ' Yii::getAlias(\"@vendor/sintret/yii2-chat-adminlte/assets/img/avatar.png\");', ' Yii::getAlias(\"@vendor/sintret/yii2-chat-adminlte/assets/img/avatar.png\");', 'ERP', '0', null, '1');
INSERT INTO `user` VALUES ('2', 'piter', 'Uv-9xj_BA3sFvZbDOTRE19P_6Ki-0Fw9', '$2y$13$kRdcgW6LOzKy/csuVfyiB.LsX4P8gG0fFVP9nz0oraOtzgm0w0b7q', null, 'ptr.nov@gmail.com', '10', '1431766262', '1431766262', '', 'LG.2016.000004', null, null, 'ERP', '0', null, '1');
