/*
Navicat MySQL Data Transfer

Source Server         : bang
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : renders

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-12-12 12:16:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `igoods`
-- ----------------------------
DROP TABLE IF EXISTS `igoods`;
CREATE TABLE `igoods` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT '',
  `title` varchar(100) DEFAULT '',
  `title1` varchar(100) DEFAULT '',
  `prices` float(7,3) DEFAULT NULL,
  `urls` varchar(2000) DEFAULT '',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of igoods
-- ----------------------------
INSERT INTO `igoods` VALUES ('1', 'https://mall3.iqiyipic.com/mall/20200308/9f/27/mall_5e64c33e0adcdccadc769f27_1x1.jpg', '入耳式蓝牙耳机', '迷你无线 自带充电仓', '38.900', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg，https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg，https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg，https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg，https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg');
INSERT INTO `igoods` VALUES ('2', 'https://mall0.iqiyipic.com/mall/20181108/cc/c0/mall_5be3ea65f6882e0d74e3ccc0_1x1.jpg', '入耳式蓝牙耳机', '迷你无线 自带充电仓', '25.900', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg，https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg，https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg，https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg，https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg');
INSERT INTO `igoods` VALUES ('3', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg', '快充充电宝', '迷你无线 移动电源', '26.000', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg，https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg，https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg，https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg，https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg');
INSERT INTO `igoods` VALUES ('4', 'https://mall5.iqiyipic.com/mall/20180823/44/cf/mall_5b7e4c9474d579560b5e44cf_1x1.jpg', '二合一耳机小话筒唱吧', '全民k歌 迷你一体式', '38.000', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg，https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg，https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg，https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg，https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg');
INSERT INTO `igoods` VALUES ('5', 'https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg', '多功能便携', '智能操作 颈椎按摩器', '79.000', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg，https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg，https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg，https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg，https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg');
INSERT INTO `igoods` VALUES ('6', 'https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg', '充电扫吸拖一体', '智能规避 扫地机器人', '139.000', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg，https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg，https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg，https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg，https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg');
INSERT INTO `igoods` VALUES ('7', 'https://mall9.iqiyipic.com/mall/20191224/49/1b/mall_5e01c7002455d729e8b0491b_1x1.png', '不锈钢保温杯子', '智能显示 温度显示', '70.000', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg，https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg，https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg，https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg，https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg');
INSERT INTO `igoods` VALUES ('8', 'https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg', '爱奇艺电视果5S PLUS', '人工智能投屏看电视', '289.000', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg，https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg，https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg，https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg，https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg');
INSERT INTO `igoods` VALUES ('9', 'https://mall1.iqiyipic.com/mall/20200407/bc/99/mall_b72cc2e58d6b46b6b6150ca111a2bc99_1x1.jpg', '整箱装抽纸', '本色竹浆 30包3层', '58.000', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg，https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg，https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg，https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg，https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg');
INSERT INTO `igoods` VALUES ('10', 'https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg', '飞科剃须刀', '全身水洗 充电式三头', '34.000', 'https://mall3.iqiyipic.com/mall/20190626/54/19/mall_5d133a11f6882e727dcd5419_1x1.jpg，https://mall7.iqiyipic.com/mall/20200701/80/a9/mall_1dc1adc483e44c5fa97555434c1680a9_1x1.jpg，https://mall8.iqiyipic.com/mall/20180516/d6/51/mall_5afc253414d45572184dd651_1x1.jpg，https://mall5.iqiyipic.com/mall/20190228/8b/95/mall_5c777e4ed2999d0921e08b95_1x1.jpg，https://mall0.iqiyipic.com/mall/20201005/f3/1a/mall_e053ccd68bd3485382c136bc12e9f31a_1x1.jpg');
