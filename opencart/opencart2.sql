/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : opencart2

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2015-11-10 17:24:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `oc_address`
-- ----------------------------
DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_address
-- ----------------------------
INSERT INTO `oc_address` VALUES ('1', '1', 'Sonai', 'Mishra', '', 'Hadapsar Pune', '', 'Pune', '411028', '99', '1493', '');

-- ----------------------------
-- Table structure for `oc_affiliate`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate`;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_affiliate_activity`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate_activity`;
CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_affiliate_login`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate_login`;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate_login
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_affiliate_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate_transaction`;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_api`
-- ----------------------------
DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api
-- ----------------------------
INSERT INTO `oc_api` VALUES ('1', 't6ux1i7KfTSHO5FEKmKC2G4dekJVizNHMA7vA1suDkVC86LHyHE6MzW8OT2NdR9F', '', '', 'C6hkfB0L9uv0EzoB0eVs4bKWV496vlJ6PueSYEVfSwjgikeyPt8W85Wm0Xdjayqp0by3o9Nr8quEZOsdB1A2aR5ussVDd2lQxAgVSwdvCcSfnuTBK1YRPf1v75ka3z2uIblqScGsdHNyOIRartKibmLnjBMpqphF1uD3qAGhRog9NZnsldTrBl2Yj9Lw0WjT6638baeOcDLCjhW22Gzs8c6B6zhvY68aZ9G6ksOxBUO8Sic5glsmSMXhqiRnTYvY', '1', '2015-09-25 15:47:56', '2015-09-25 15:47:56');
INSERT INTO `oc_api` VALUES ('2', '4S3apBO8guMJaFhS1GbOxanTqHWXgwTxvfrXX4RezEO7GjSIofq2beHf6lz2JbfU', '', '', 'eGYs7KMWBuIIoa6WTRy376eEFdKtnekOFE7Zay9mGx5qFoc70byRWvsAFsY8A4hgjZYevypPCOjlYP05Q7qDn7zU8VdkPrWL5Hr78MNP1CG4jOGRi1bMwhyAtVbjW1ENJN3wD7nmiOfkmkP9sJDsxepFWsS6VZomPp69BG5XHwxniTQFuxilryYg1cApNUGZNf3j0mGfjs6DVaJjpz52dfAUPjlw7majEtrgieIA3B81C44ZcNLgHkegfEEQjRmG', '1', '2015-11-10 06:13:04', '2015-11-10 06:13:04');

-- ----------------------------
-- Table structure for `oc_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute
-- ----------------------------
INSERT INTO `oc_attribute` VALUES ('1', '6', '1');
INSERT INTO `oc_attribute` VALUES ('2', '6', '5');
INSERT INTO `oc_attribute` VALUES ('3', '6', '3');
INSERT INTO `oc_attribute` VALUES ('4', '3', '1');
INSERT INTO `oc_attribute` VALUES ('5', '3', '2');
INSERT INTO `oc_attribute` VALUES ('6', '3', '3');
INSERT INTO `oc_attribute` VALUES ('7', '3', '4');
INSERT INTO `oc_attribute` VALUES ('8', '3', '5');
INSERT INTO `oc_attribute` VALUES ('9', '3', '6');
INSERT INTO `oc_attribute` VALUES ('10', '3', '7');
INSERT INTO `oc_attribute` VALUES ('11', '3', '8');

-- ----------------------------
-- Table structure for `oc_attribute_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_description
-- ----------------------------
INSERT INTO `oc_attribute_description` VALUES ('1', '1', 'Description');
INSERT INTO `oc_attribute_description` VALUES ('2', '1', 'No. of Cores');
INSERT INTO `oc_attribute_description` VALUES ('4', '1', 'test 1');
INSERT INTO `oc_attribute_description` VALUES ('5', '1', 'test 2');
INSERT INTO `oc_attribute_description` VALUES ('6', '1', 'test 3');
INSERT INTO `oc_attribute_description` VALUES ('7', '1', 'test 4');
INSERT INTO `oc_attribute_description` VALUES ('8', '1', 'test 5');
INSERT INTO `oc_attribute_description` VALUES ('9', '1', 'test 6');
INSERT INTO `oc_attribute_description` VALUES ('10', '1', 'test 7');
INSERT INTO `oc_attribute_description` VALUES ('11', '1', 'test 8');
INSERT INTO `oc_attribute_description` VALUES ('3', '1', 'Clockspeed');
INSERT INTO `oc_attribute_description` VALUES ('1', '2', 'Description');
INSERT INTO `oc_attribute_description` VALUES ('2', '2', 'No. of Cores');
INSERT INTO `oc_attribute_description` VALUES ('4', '2', 'test 1');
INSERT INTO `oc_attribute_description` VALUES ('5', '2', 'test 2');
INSERT INTO `oc_attribute_description` VALUES ('6', '2', 'test 3');
INSERT INTO `oc_attribute_description` VALUES ('7', '2', 'test 4');
INSERT INTO `oc_attribute_description` VALUES ('8', '2', 'test 5');
INSERT INTO `oc_attribute_description` VALUES ('9', '2', 'test 6');
INSERT INTO `oc_attribute_description` VALUES ('10', '2', 'test 7');
INSERT INTO `oc_attribute_description` VALUES ('11', '2', 'test 8');
INSERT INTO `oc_attribute_description` VALUES ('3', '2', 'Clockspeed');

-- ----------------------------
-- Table structure for `oc_attribute_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_group
-- ----------------------------
INSERT INTO `oc_attribute_group` VALUES ('3', '2');
INSERT INTO `oc_attribute_group` VALUES ('4', '1');
INSERT INTO `oc_attribute_group` VALUES ('5', '3');
INSERT INTO `oc_attribute_group` VALUES ('6', '4');

-- ----------------------------
-- Table structure for `oc_attribute_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_group_description
-- ----------------------------
INSERT INTO `oc_attribute_group_description` VALUES ('3', '1', 'Memory');
INSERT INTO `oc_attribute_group_description` VALUES ('4', '1', 'Technical');
INSERT INTO `oc_attribute_group_description` VALUES ('5', '1', 'Motherboard');
INSERT INTO `oc_attribute_group_description` VALUES ('6', '1', 'Processor');
INSERT INTO `oc_attribute_group_description` VALUES ('3', '2', 'Memory');
INSERT INTO `oc_attribute_group_description` VALUES ('4', '2', 'Technical');
INSERT INTO `oc_attribute_group_description` VALUES ('5', '2', 'Motherboard');
INSERT INTO `oc_attribute_group_description` VALUES ('6', '2', 'Processor');

-- ----------------------------
-- Table structure for `oc_banner`
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner
-- ----------------------------
INSERT INTO `oc_banner` VALUES ('6', 'HP Products', '1');
INSERT INTO `oc_banner` VALUES ('7', 'Home Page Slideshow', '1');
INSERT INTO `oc_banner` VALUES ('8', 'Manufacturers', '1');

-- ----------------------------
-- Table structure for `oc_banner_image`
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner_image
-- ----------------------------
INSERT INTO `oc_banner_image` VALUES ('79', '7', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('102', '6', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'catalog/block-banner2.jpg', '1');
INSERT INTO `oc_banner_image` VALUES ('94', '8', '', 'catalog/demo/manufacturer/nfl.png', '0');
INSERT INTO `oc_banner_image` VALUES ('95', '8', '', 'catalog/demo/manufacturer/redbull.png', '0');
INSERT INTO `oc_banner_image` VALUES ('96', '8', '', 'catalog/demo/manufacturer/sony.png', '0');
INSERT INTO `oc_banner_image` VALUES ('91', '8', '', 'catalog/demo/manufacturer/cocacola.png', '0');
INSERT INTO `oc_banner_image` VALUES ('92', '8', '', 'catalog/demo/manufacturer/burgerking.png', '0');
INSERT INTO `oc_banner_image` VALUES ('93', '8', '', 'catalog/demo/manufacturer/canon.png', '0');
INSERT INTO `oc_banner_image` VALUES ('88', '8', '', 'catalog/demo/manufacturer/harley.png', '0');
INSERT INTO `oc_banner_image` VALUES ('89', '8', '', 'catalog/demo/manufacturer/dell.png', '0');
INSERT INTO `oc_banner_image` VALUES ('90', '8', '', 'catalog/demo/manufacturer/disney.png', '0');
INSERT INTO `oc_banner_image` VALUES ('80', '7', '', 'catalog/demo/banners/MacBookAir.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('97', '8', '', 'catalog/demo/manufacturer/starbucks.png', '0');
INSERT INTO `oc_banner_image` VALUES ('98', '8', '', 'catalog/demo/manufacturer/nintendo.png', '0');
INSERT INTO `oc_banner_image` VALUES ('101', '6', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/block-banner1.jpg', '0');

-- ----------------------------
-- Table structure for `oc_banner_image_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner_image_description
-- ----------------------------
INSERT INTO `oc_banner_image_description` VALUES ('79', '1', '7', 'iPhone 6');
INSERT INTO `oc_banner_image_description` VALUES ('102', '1', '6', 'Canon  Banner');
INSERT INTO `oc_banner_image_description` VALUES ('93', '1', '8', 'Canon');
INSERT INTO `oc_banner_image_description` VALUES ('92', '1', '8', 'Burger King');
INSERT INTO `oc_banner_image_description` VALUES ('91', '1', '8', 'Coca Cola');
INSERT INTO `oc_banner_image_description` VALUES ('90', '1', '8', 'Disney');
INSERT INTO `oc_banner_image_description` VALUES ('89', '1', '8', 'Dell');
INSERT INTO `oc_banner_image_description` VALUES ('80', '1', '7', 'MacBookAir');
INSERT INTO `oc_banner_image_description` VALUES ('88', '1', '8', 'Harley Davidson');
INSERT INTO `oc_banner_image_description` VALUES ('94', '1', '8', 'NFL');
INSERT INTO `oc_banner_image_description` VALUES ('95', '1', '8', 'RedBull');
INSERT INTO `oc_banner_image_description` VALUES ('96', '1', '8', 'Sony');
INSERT INTO `oc_banner_image_description` VALUES ('97', '1', '8', 'Starbucks');
INSERT INTO `oc_banner_image_description` VALUES ('98', '1', '8', 'Nintendo');
INSERT INTO `oc_banner_image_description` VALUES ('101', '1', '6', 'HP Banner');
INSERT INTO `oc_banner_image_description` VALUES ('79', '2', '7', 'iPhone 6');
INSERT INTO `oc_banner_image_description` VALUES ('102', '2', '6', 'Canon  Banner');
INSERT INTO `oc_banner_image_description` VALUES ('93', '2', '8', 'Canon');
INSERT INTO `oc_banner_image_description` VALUES ('92', '2', '8', 'Burger King');
INSERT INTO `oc_banner_image_description` VALUES ('91', '2', '8', 'Coca Cola');
INSERT INTO `oc_banner_image_description` VALUES ('90', '2', '8', 'Disney');
INSERT INTO `oc_banner_image_description` VALUES ('89', '2', '8', 'Dell');
INSERT INTO `oc_banner_image_description` VALUES ('80', '2', '7', 'MacBookAir');
INSERT INTO `oc_banner_image_description` VALUES ('88', '2', '8', 'Harley Davidson');
INSERT INTO `oc_banner_image_description` VALUES ('94', '2', '8', 'NFL');
INSERT INTO `oc_banner_image_description` VALUES ('95', '2', '8', 'RedBull');
INSERT INTO `oc_banner_image_description` VALUES ('96', '2', '8', 'Sony');
INSERT INTO `oc_banner_image_description` VALUES ('97', '2', '8', 'Starbucks');
INSERT INTO `oc_banner_image_description` VALUES ('98', '2', '8', 'Nintendo');
INSERT INTO `oc_banner_image_description` VALUES ('101', '2', '6', 'HP Banner');

-- ----------------------------
-- Table structure for `oc_category`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category
-- ----------------------------
INSERT INTO `oc_category` VALUES ('25', '', '0', '1', '1', '3', '1', '2009-01-31 01:04:25', '2015-05-19 18:33:05');
INSERT INTO `oc_category` VALUES ('27', '', '20', '0', '0', '2', '1', '2009-01-31 01:55:34', '2015-05-19 17:15:54');
INSERT INTO `oc_category` VALUES ('20', 'catalog/women_banner_new.png', '0', '1', '1', '1', '1', '2009-01-05 21:49:43', '2015-09-25 17:23:24');
INSERT INTO `oc_category` VALUES ('18', '', '0', '1', '0', '2', '1', '2009-01-05 21:49:15', '2015-09-25 17:22:56');
INSERT INTO `oc_category` VALUES ('17', '', '0', '1', '1', '4', '1', '2009-01-03 21:08:57', '2015-05-19 18:52:59');
INSERT INTO `oc_category` VALUES ('28', '', '25', '0', '0', '2', '1', '2009-02-02 13:11:12', '2015-05-19 18:38:21');
INSERT INTO `oc_category` VALUES ('26', '', '20', '0', '0', '1', '1', '2009-01-31 01:55:14', '2015-05-19 17:15:36');
INSERT INTO `oc_category` VALUES ('29', '', '25', '0', '0', '1', '1', '2009-02-02 13:11:37', '2015-05-19 18:36:07');
INSERT INTO `oc_category` VALUES ('30', '', '25', '0', '0', '3', '1', '2009-02-02 13:11:59', '2015-05-19 18:38:47');
INSERT INTO `oc_category` VALUES ('31', '', '25', '0', '0', '4', '1', '2009-02-03 14:17:24', '2015-05-19 18:40:32');
INSERT INTO `oc_category` VALUES ('32', '', '25', '0', '0', '5', '0', '2009-02-03 14:17:34', '2015-09-25 16:32:43');
INSERT INTO `oc_category` VALUES ('35', '', '26', '0', '0', '0', '1', '2010-09-17 10:06:48', '2015-05-20 14:37:11');
INSERT INTO `oc_category` VALUES ('45', '', '18', '0', '0', '1', '1', '2010-09-24 18:29:16', '2015-05-19 18:14:06');
INSERT INTO `oc_category` VALUES ('46', '', '18', '0', '0', '0', '1', '2010-09-24 18:29:31', '2015-05-19 18:12:10');
INSERT INTO `oc_category` VALUES ('57', '', '0', '1', '1', '3', '1', '2011-04-26 08:53:16', '2015-05-19 18:40:21');
INSERT INTO `oc_category` VALUES ('59', '', '20', '0', '1', '3', '1', '2015-05-19 17:16:17', '2015-05-19 18:07:59');
INSERT INTO `oc_category` VALUES ('60', '', '0', '0', '1', '0', '1', '2015-05-19 17:16:48', '2015-05-19 17:16:48');
INSERT INTO `oc_category` VALUES ('61', '', '20', '0', '1', '4', '1', '2015-05-19 17:16:49', '2015-05-19 18:08:40');
INSERT INTO `oc_category` VALUES ('62', '', '20', '0', '1', '5', '1', '2015-05-19 17:17:47', '2015-05-19 18:08:54');
INSERT INTO `oc_category` VALUES ('63', '', '61', '0', '1', '3', '1', '2015-05-19 18:05:53', '2015-05-19 18:32:00');
INSERT INTO `oc_category` VALUES ('64', '', '20', '0', '1', '6', '0', '2015-05-19 18:11:12', '2015-09-25 16:08:27');
INSERT INTO `oc_category` VALUES ('65', '', '18', '0', '1', '2', '1', '2015-05-19 18:13:21', '2015-05-19 18:14:26');
INSERT INTO `oc_category` VALUES ('66', '', '26', '0', '1', '2', '1', '2015-05-19 18:13:57', '2015-05-19 18:13:57');
INSERT INTO `oc_category` VALUES ('67', '', '18', '0', '1', '3', '1', '2015-05-19 18:15:58', '2015-05-19 18:15:58');
INSERT INTO `oc_category` VALUES ('68', '', '18', '0', '1', '4', '1', '2015-05-19 18:17:42', '2015-05-19 18:17:42');
INSERT INTO `oc_category` VALUES ('69', '', '18', '0', '1', '5', '0', '2015-05-19 18:18:21', '2015-09-25 16:09:19');
INSERT INTO `oc_category` VALUES ('70', '', '46', '0', '1', '0', '1', '2015-05-19 18:19:35', '2015-05-19 18:19:35');
INSERT INTO `oc_category` VALUES ('71', '', '26', '0', '1', '3', '1', '2015-05-19 18:19:36', '2015-05-19 18:19:36');
INSERT INTO `oc_category` VALUES ('72', '', '26', '0', '1', '4', '1', '2015-05-19 18:20:14', '2015-05-19 18:20:14');
INSERT INTO `oc_category` VALUES ('73', '', '46', '0', '1', '1', '1', '2015-05-19 18:20:52', '2015-05-19 18:20:52');
INSERT INTO `oc_category` VALUES ('74', '', '27', '0', '1', '1', '1', '2015-05-19 18:21:07', '2015-05-19 18:21:07');
INSERT INTO `oc_category` VALUES ('75', '', '27', '0', '1', '2', '1', '2015-05-19 18:21:47', '2015-05-19 18:21:47');
INSERT INTO `oc_category` VALUES ('76', '', '46', '0', '1', '2', '1', '2015-05-19 18:22:02', '2015-05-19 18:22:02');
INSERT INTO `oc_category` VALUES ('77', '', '27', '0', '1', '3', '1', '2015-05-19 18:22:27', '2015-05-19 18:22:27');
INSERT INTO `oc_category` VALUES ('78', '', '46', '0', '1', '3', '1', '2015-05-19 18:22:32', '2015-05-19 18:22:32');
INSERT INTO `oc_category` VALUES ('79', '', '27', '0', '1', '4', '1', '2015-05-19 18:23:07', '2015-05-19 18:23:07');
INSERT INTO `oc_category` VALUES ('80', '', '45', '0', '1', '0', '1', '2015-05-19 18:23:08', '2015-05-19 18:23:08');
INSERT INTO `oc_category` VALUES ('81', '', '45', '0', '1', '1', '1', '2015-05-19 18:23:27', '2015-05-19 18:23:27');
INSERT INTO `oc_category` VALUES ('82', '', '45', '0', '1', '2', '1', '2015-05-19 18:23:46', '2015-05-19 18:23:46');
INSERT INTO `oc_category` VALUES ('83', '', '59', '0', '1', '1', '1', '2015-05-19 18:24:02', '2015-05-19 18:24:02');
INSERT INTO `oc_category` VALUES ('84', '', '45', '0', '1', '3', '1', '2015-05-19 18:24:13', '2015-05-19 18:24:13');
INSERT INTO `oc_category` VALUES ('85', '', '65', '0', '1', '0', '1', '2015-05-19 18:24:37', '2015-05-19 18:24:37');
INSERT INTO `oc_category` VALUES ('86', '', '65', '0', '1', '1', '1', '2015-05-19 18:24:57', '2015-05-19 18:24:57');
INSERT INTO `oc_category` VALUES ('87', '', '59', '0', '1', '2', '1', '2015-05-19 18:25:07', '2015-05-19 18:25:07');
INSERT INTO `oc_category` VALUES ('88', '', '65', '0', '1', '2', '1', '2015-05-19 18:25:24', '2015-05-19 18:25:24');
INSERT INTO `oc_category` VALUES ('89', '', '65', '0', '1', '3', '1', '2015-05-19 18:25:44', '2015-05-19 18:25:44');
INSERT INTO `oc_category` VALUES ('90', '', '67', '0', '1', '0', '1', '2015-05-19 18:26:05', '2015-05-19 18:26:05');
INSERT INTO `oc_category` VALUES ('91', '', '59', '0', '1', '3', '1', '2015-05-19 18:26:18', '2015-05-19 18:26:18');
INSERT INTO `oc_category` VALUES ('92', '', '67', '0', '1', '1', '1', '2015-05-19 18:26:43', '2015-05-19 18:26:43');
INSERT INTO `oc_category` VALUES ('93', '', '67', '0', '1', '2', '1', '2015-05-19 18:27:11', '2015-05-19 18:27:11');
INSERT INTO `oc_category` VALUES ('94', '', '67', '0', '1', '3', '1', '2015-05-19 18:27:39', '2015-05-19 18:27:39');
INSERT INTO `oc_category` VALUES ('95', '', '59', '0', '1', '4', '1', '2015-05-19 18:28:04', '2015-05-19 18:28:04');
INSERT INTO `oc_category` VALUES ('96', '', '68', '0', '1', '0', '1', '2015-05-19 18:28:17', '2015-05-19 18:28:17');
INSERT INTO `oc_category` VALUES ('97', '', '68', '0', '1', '1', '1', '2015-05-19 18:28:44', '2015-05-19 18:28:44');
INSERT INTO `oc_category` VALUES ('98', '', '68', '0', '1', '2', '1', '2015-05-19 18:29:08', '2015-05-19 18:29:08');
INSERT INTO `oc_category` VALUES ('99', '', '61', '0', '1', '1', '1', '2015-05-19 18:29:32', '2015-05-19 18:29:32');
INSERT INTO `oc_category` VALUES ('100', '', '68', '0', '1', '3', '1', '2015-05-19 18:29:32', '2015-05-19 18:29:32');
INSERT INTO `oc_category` VALUES ('101', '', '69', '0', '1', '0', '1', '2015-05-19 18:29:55', '2015-05-19 18:29:55');
INSERT INTO `oc_category` VALUES ('102', '', '61', '0', '1', '2', '1', '2015-05-19 18:30:10', '2015-05-19 18:30:10');
INSERT INTO `oc_category` VALUES ('103', '', '69', '0', '1', '1', '1', '2015-05-19 18:30:20', '2015-05-19 18:30:20');
INSERT INTO `oc_category` VALUES ('104', '', '69', '0', '1', '2', '1', '2015-05-19 18:30:43', '2015-05-19 18:30:43');
INSERT INTO `oc_category` VALUES ('105', '', '69', '0', '1', '3', '1', '2015-05-19 18:31:04', '2015-05-19 18:31:04');
INSERT INTO `oc_category` VALUES ('106', '', '61', '0', '1', '4', '1', '2015-05-19 18:33:07', '2015-05-19 18:33:07');
INSERT INTO `oc_category` VALUES ('107', '', '25', '0', '1', '0', '1', '2015-05-19 18:33:36', '2015-05-19 18:33:36');
INSERT INTO `oc_category` VALUES ('108', '', '62', '0', '1', '1', '1', '2015-05-19 18:33:52', '2015-05-19 18:33:52');
INSERT INTO `oc_category` VALUES ('109', '', '107', '0', '1', '0', '1', '2015-05-19 18:34:14', '2015-05-19 18:34:14');
INSERT INTO `oc_category` VALUES ('110', '', '62', '0', '1', '2', '1', '2015-05-19 18:34:28', '2015-05-19 18:34:28');
INSERT INTO `oc_category` VALUES ('111', '', '107', '0', '1', '1', '1', '2015-05-19 18:34:40', '2015-05-19 18:34:40');
INSERT INTO `oc_category` VALUES ('112', '', '107', '0', '1', '2', '1', '2015-05-19 18:35:06', '2015-05-19 18:35:06');
INSERT INTO `oc_category` VALUES ('113', '', '62', '0', '1', '3', '1', '2015-05-19 18:35:13', '2015-05-19 18:35:13');
INSERT INTO `oc_category` VALUES ('114', '', '107', '0', '1', '3', '1', '2015-05-19 18:35:27', '2015-05-19 18:35:27');
INSERT INTO `oc_category` VALUES ('115', '', '62', '0', '1', '4', '1', '2015-05-19 18:36:14', '2015-05-19 18:36:14');
INSERT INTO `oc_category` VALUES ('116', '', '64', '0', '1', '1', '1', '2015-05-19 18:37:06', '2015-05-19 18:37:06');
INSERT INTO `oc_category` VALUES ('117', '', '64', '0', '1', '2', '1', '2015-05-19 18:37:56', '2015-05-19 18:37:56');
INSERT INTO `oc_category` VALUES ('118', '', '64', '0', '1', '3', '1', '2015-05-19 18:38:29', '2015-05-19 18:38:29');
INSERT INTO `oc_category` VALUES ('119', '', '64', '0', '1', '4', '1', '2015-05-19 18:39:01', '2015-05-19 18:39:01');
INSERT INTO `oc_category` VALUES ('120', '', '57', '0', '1', '1', '1', '2015-05-19 18:40:58', '2015-05-19 18:40:58');
INSERT INTO `oc_category` VALUES ('121', '', '120', '0', '1', '1', '1', '2015-05-19 18:41:47', '2015-05-19 18:41:47');
INSERT INTO `oc_category` VALUES ('122', '', '29', '0', '1', '0', '1', '2015-05-19 18:42:02', '2015-05-19 18:42:02');
INSERT INTO `oc_category` VALUES ('123', '', '120', '0', '1', '2', '1', '2015-05-19 18:42:22', '2015-05-19 18:42:22');
INSERT INTO `oc_category` VALUES ('124', '', '29', '0', '1', '1', '1', '2015-05-19 18:43:04', '2015-05-19 18:43:04');
INSERT INTO `oc_category` VALUES ('125', '', '120', '0', '1', '3', '1', '2015-05-19 18:43:15', '2015-05-19 18:43:15');
INSERT INTO `oc_category` VALUES ('126', '', '29', '0', '1', '2', '1', '2015-05-19 18:43:29', '2015-05-19 18:43:29');
INSERT INTO `oc_category` VALUES ('127', '', '120', '0', '1', '4', '1', '2015-05-19 18:43:53', '2015-05-19 18:43:53');
INSERT INTO `oc_category` VALUES ('128', '', '29', '0', '1', '3', '1', '2015-05-19 18:43:55', '2015-05-19 18:43:55');
INSERT INTO `oc_category` VALUES ('129', '', '57', '0', '1', '2', '1', '2015-05-19 18:44:29', '2015-05-19 18:44:29');
INSERT INTO `oc_category` VALUES ('130', '', '28', '0', '1', '0', '1', '2015-05-19 18:44:34', '2015-05-19 18:44:34');
INSERT INTO `oc_category` VALUES ('131', '', '129', '0', '1', '1', '1', '2015-05-19 18:45:04', '2015-05-19 18:45:04');
INSERT INTO `oc_category` VALUES ('132', '', '28', '0', '1', '1', '1', '2015-05-19 18:45:10', '2015-05-19 18:45:10');
INSERT INTO `oc_category` VALUES ('133', '', '28', '0', '1', '2', '1', '2015-05-19 18:45:33', '2015-05-19 18:45:33');
INSERT INTO `oc_category` VALUES ('134', '', '129', '0', '1', '2', '1', '2015-05-19 18:45:38', '2015-05-19 18:45:38');
INSERT INTO `oc_category` VALUES ('135', '', '28', '0', '1', '3', '1', '2015-05-19 18:45:53', '2015-05-19 18:45:53');
INSERT INTO `oc_category` VALUES ('136', '', '129', '0', '1', '3', '1', '2015-05-19 18:46:10', '2015-05-19 18:46:10');
INSERT INTO `oc_category` VALUES ('137', '', '30', '0', '1', '0', '1', '2015-05-19 18:46:21', '2015-05-19 18:46:21');
INSERT INTO `oc_category` VALUES ('138', '', '30', '0', '1', '1', '1', '2015-05-19 18:46:46', '2015-05-19 18:46:46');
INSERT INTO `oc_category` VALUES ('139', '', '129', '0', '1', '4', '1', '2015-05-19 18:46:48', '2015-05-19 18:46:48');
INSERT INTO `oc_category` VALUES ('140', '', '30', '0', '1', '2', '1', '2015-05-19 18:47:18', '2015-05-19 18:47:18');
INSERT INTO `oc_category` VALUES ('141', '', '57', '0', '1', '3', '1', '2015-05-19 18:47:34', '2015-05-19 18:47:34');
INSERT INTO `oc_category` VALUES ('142', '', '30', '0', '1', '3', '1', '2015-05-19 18:47:50', '2015-05-19 18:47:50');
INSERT INTO `oc_category` VALUES ('143', '', '141', '0', '1', '1', '1', '2015-05-19 18:48:09', '2015-05-19 18:48:09');
INSERT INTO `oc_category` VALUES ('144', '', '31', '0', '1', '0', '1', '2015-05-19 18:48:14', '2015-05-19 18:48:14');
INSERT INTO `oc_category` VALUES ('145', '', '31', '0', '1', '1', '1', '2015-05-19 18:48:38', '2015-05-19 18:48:38');
INSERT INTO `oc_category` VALUES ('146', '', '141', '0', '1', '2', '1', '2015-05-19 18:48:41', '2015-05-19 18:48:41');
INSERT INTO `oc_category` VALUES ('147', '', '31', '0', '1', '2', '1', '2015-05-19 18:49:04', '2015-05-19 18:49:04');
INSERT INTO `oc_category` VALUES ('148', '', '141', '0', '1', '3', '1', '2015-05-19 18:49:14', '2015-05-19 18:49:14');
INSERT INTO `oc_category` VALUES ('149', '', '31', '0', '1', '3', '1', '2015-05-19 18:49:27', '2015-05-19 18:49:27');
INSERT INTO `oc_category` VALUES ('150', '', '141', '0', '1', '4', '1', '2015-05-19 18:49:47', '2015-05-19 18:49:47');
INSERT INTO `oc_category` VALUES ('151', '', '32', '0', '1', '0', '1', '2015-05-19 18:50:06', '2015-05-19 18:50:06');
INSERT INTO `oc_category` VALUES ('152', '', '57', '0', '1', '4', '0', '2015-05-19 18:50:26', '2015-09-25 16:08:50');
INSERT INTO `oc_category` VALUES ('153', '', '32', '0', '1', '1', '1', '2015-05-19 18:50:33', '2015-05-19 18:50:33');
INSERT INTO `oc_category` VALUES ('154', '', '32', '0', '1', '2', '1', '2015-05-19 18:50:58', '2015-05-19 18:50:58');
INSERT INTO `oc_category` VALUES ('155', '', '152', '0', '1', '1', '1', '2015-05-19 18:50:58', '2015-05-19 18:50:58');
INSERT INTO `oc_category` VALUES ('156', '', '152', '0', '1', '2', '1', '2015-05-19 18:51:32', '2015-05-19 18:51:32');
INSERT INTO `oc_category` VALUES ('157', '', '32', '0', '1', '3', '1', '2015-05-19 18:51:43', '2015-05-19 18:51:43');
INSERT INTO `oc_category` VALUES ('158', '', '152', '0', '1', '3', '1', '2015-05-19 18:52:18', '2015-05-19 18:52:18');
INSERT INTO `oc_category` VALUES ('159', '', '152', '0', '1', '4', '1', '2015-05-19 18:52:54', '2015-05-19 18:52:54');

-- ----------------------------
-- Table structure for `oc_category_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_description
-- ----------------------------
INSERT INTO `oc_category_description` VALUES ('30', '1', 'Audio &amp; Video', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Audio &amp; Video', '', '');
INSERT INTO `oc_category_description` VALUES ('29', '1', 'Accesories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accesories', '', '');
INSERT INTO `oc_category_description` VALUES ('26', '1', 'Stylish Bag', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Stylish Bag', '', '');
INSERT INTO `oc_category_description` VALUES ('17', '1', 'Kids', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kids', '', '');
INSERT INTO `oc_category_description` VALUES ('25', '1', 'Electronics', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Electronics', '', '');
INSERT INTO `oc_category_description` VALUES ('20', '1', 'Women', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Women', 'Example of category description', '');
INSERT INTO `oc_category_description` VALUES ('35', '1', 'Clutch Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Clutch Handbags', '', '');
INSERT INTO `oc_category_description` VALUES ('18', '1', 'Men', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Men', '', '');
INSERT INTO `oc_category_description` VALUES ('46', '1', 'Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shoes', '', '');
INSERT INTO `oc_category_description` VALUES ('57', '1', 'Furniture', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Furniture', '', '');
INSERT INTO `oc_category_description` VALUES ('27', '1', 'Material Bag', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Material Bag', '', '');
INSERT INTO `oc_category_description` VALUES ('59', '1', 'Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shoes', '', '');
INSERT INTO `oc_category_description` VALUES ('60', '1', 'Jwellery', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Jwellery', '', '');
INSERT INTO `oc_category_description` VALUES ('61', '1', 'Jwellery', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Jwellery', '', '');
INSERT INTO `oc_category_description` VALUES ('62', '1', 'Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dresses', '', '');
INSERT INTO `oc_category_description` VALUES ('63', '1', 'Pendants', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Pendants', '', '');
INSERT INTO `oc_category_description` VALUES ('64', '1', 'Swimwear', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Swimwear', '', '');
INSERT INTO `oc_category_description` VALUES ('45', '1', 'Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dresses', '', '');
INSERT INTO `oc_category_description` VALUES ('65', '1', 'Jackets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Jackets', '', '');
INSERT INTO `oc_category_description` VALUES ('66', '1', 'Diaper Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Diaper Bags', '', '');
INSERT INTO `oc_category_description` VALUES ('67', '1', 'Watches', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Watches', '', '');
INSERT INTO `oc_category_description` VALUES ('68', '1', 'Sunglasses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sunglasses', '', '');
INSERT INTO `oc_category_description` VALUES ('69', '1', 'Accesories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accesories', '', '');
INSERT INTO `oc_category_description` VALUES ('70', '1', 'Sport Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sport Shoes', '', '');
INSERT INTO `oc_category_description` VALUES ('71', '1', 'Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bags', '', '');
INSERT INTO `oc_category_description` VALUES ('72', '1', 'Hobo handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Hobo handbags', '', '');
INSERT INTO `oc_category_description` VALUES ('73', '1', 'Casual Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Casual Shoes', '', '');
INSERT INTO `oc_category_description` VALUES ('74', '1', 'Beaded Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Beaded Handbags', '', '');
INSERT INTO `oc_category_description` VALUES ('75', '1', 'Fabric Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fabric Handbags', '', '');
INSERT INTO `oc_category_description` VALUES ('76', '1', 'Leather Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Leather Shoes', '', '');
INSERT INTO `oc_category_description` VALUES ('77', '1', 'Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Handbags', '', '');
INSERT INTO `oc_category_description` VALUES ('78', '1', 'Canvas Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Canvas Shoes', '', '');
INSERT INTO `oc_category_description` VALUES ('79', '1', 'Leather Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Leather Handbags', '', '');
INSERT INTO `oc_category_description` VALUES ('80', '1', 'Casual Dresse', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Casual Dresse', '', '');
INSERT INTO `oc_category_description` VALUES ('81', '1', 'Evening', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Evening', '', '');
INSERT INTO `oc_category_description` VALUES ('82', '1', 'Designer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Designer', '', '');
INSERT INTO `oc_category_description` VALUES ('83', '1', 'Flat Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Flat Shoes', '', '');
INSERT INTO `oc_category_description` VALUES ('84', '1', 'Party', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Party', '', '');
INSERT INTO `oc_category_description` VALUES ('85', '1', 'Coats', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Coats', '', '');
INSERT INTO `oc_category_description` VALUES ('86', '1', 'Formal Jackets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Formal Jackets', '', '');
INSERT INTO `oc_category_description` VALUES ('87', '1', 'Flat Sandals', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Flat Sandals', '', '');
INSERT INTO `oc_category_description` VALUES ('88', '1', 'Leather Jackets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Leather Jackets', '', '');
INSERT INTO `oc_category_description` VALUES ('89', '1', 'Blazers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Blazers', '', '');
INSERT INTO `oc_category_description` VALUES ('90', '1', 'Fasttrack', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fasttrack', '', '');
INSERT INTO `oc_category_description` VALUES ('91', '1', 'Boots', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Boots', '', '');
INSERT INTO `oc_category_description` VALUES ('92', '1', 'Casio', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Casio', '', '');
INSERT INTO `oc_category_description` VALUES ('93', '1', 'Titan', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Titan', '', '');
INSERT INTO `oc_category_description` VALUES ('94', '1', 'Tommy-Hilfiger', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tommy-Hilfiger', '', '');
INSERT INTO `oc_category_description` VALUES ('95', '1', 'Heels', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Heels', '', '');
INSERT INTO `oc_category_description` VALUES ('96', '1', 'Ray Ban', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Ray Ban', '', '');
INSERT INTO `oc_category_description` VALUES ('97', '1', 'Fasttrack', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fasttrack', '', '');
INSERT INTO `oc_category_description` VALUES ('98', '1', 'Police', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Police', '', '');
INSERT INTO `oc_category_description` VALUES ('99', '1', 'Bracelets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bracelets', '', '');
INSERT INTO `oc_category_description` VALUES ('100', '1', 'Oakley', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Oakley', '', '');
INSERT INTO `oc_category_description` VALUES ('101', '1', 'Backpacks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Backpacks', '', '');
INSERT INTO `oc_category_description` VALUES ('102', '1', 'Necklaces &amp; Pendent', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Necklaces &amp; Pendent', '', '');
INSERT INTO `oc_category_description` VALUES ('103', '1', 'Wallets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Wallets', '', '');
INSERT INTO `oc_category_description` VALUES ('104', '1', 'Laptops Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Laptops Bags', '', '');
INSERT INTO `oc_category_description` VALUES ('105', '1', 'Belts', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Belts', '', '');
INSERT INTO `oc_category_description` VALUES ('106', '1', 'Pins &amp; Brooches', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Pins &amp; Brooches', '', '');
INSERT INTO `oc_category_description` VALUES ('107', '1', 'Mobiles', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Mobiles', '', '');
INSERT INTO `oc_category_description` VALUES ('108', '1', 'Casual Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Casual Dresses', '', '');
INSERT INTO `oc_category_description` VALUES ('109', '1', 'Samsung', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Samsung', '', '');
INSERT INTO `oc_category_description` VALUES ('110', '1', 'Evening', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Evening', '', '');
INSERT INTO `oc_category_description` VALUES ('111', '1', 'Nokia', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nokia', '', '');
INSERT INTO `oc_category_description` VALUES ('112', '1', 'IPhone', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'IPhone', '', '');
INSERT INTO `oc_category_description` VALUES ('113', '1', 'Designer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Designer', '', '');
INSERT INTO `oc_category_description` VALUES ('114', '1', 'Sony', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sony', '', '');
INSERT INTO `oc_category_description` VALUES ('115', '1', 'Party', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Party', '', '');
INSERT INTO `oc_category_description` VALUES ('28', '1', 'Cameras', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Cameras', '', '');
INSERT INTO `oc_category_description` VALUES ('116', '1', 'Swimsuits', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Swimsuits', '', '');
INSERT INTO `oc_category_description` VALUES ('117', '1', 'Beach Clothing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Beach Clothing', '', '');
INSERT INTO `oc_category_description` VALUES ('118', '1', 'Clothing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Clothing', '', '');
INSERT INTO `oc_category_description` VALUES ('119', '1', 'Bikinis', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bikinis', '', '');
INSERT INTO `oc_category_description` VALUES ('31', '1', 'Computer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Computer', '', '');
INSERT INTO `oc_category_description` VALUES ('32', '1', 'Appliances', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Appliances', '', '');
INSERT INTO `oc_category_description` VALUES ('120', '1', 'Living Room', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Living Room', '', '');
INSERT INTO `oc_category_description` VALUES ('121', '1', 'Racks &amp; Cabinets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Racks &amp; Cabinets', '', '');
INSERT INTO `oc_category_description` VALUES ('122', '1', 'Mobile Memory Cards', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Mobile Memory Cards', '', '');
INSERT INTO `oc_category_description` VALUES ('123', '1', 'Sofas', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sofas', '', '');
INSERT INTO `oc_category_description` VALUES ('124', '1', 'Cases &amp; Covers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Cases &amp; Covers', '', '');
INSERT INTO `oc_category_description` VALUES ('125', '1', 'Chairs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Chairs', '', '');
INSERT INTO `oc_category_description` VALUES ('126', '1', 'Mobile Headphones', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Mobile Headphones', '', '');
INSERT INTO `oc_category_description` VALUES ('127', '1', 'Tables', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tables', '', '');
INSERT INTO `oc_category_description` VALUES ('128', '1', 'Bluetooth Headsets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bluetooth Headsets', '', '');
INSERT INTO `oc_category_description` VALUES ('129', '1', 'Dining &amp; Bar', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dining &amp; Bar', '', '');
INSERT INTO `oc_category_description` VALUES ('130', '1', 'Camcorders', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Camcorders', '', '');
INSERT INTO `oc_category_description` VALUES ('131', '1', 'Dining Table Sets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dining Table Sets', '', '');
INSERT INTO `oc_category_description` VALUES ('132', '1', 'Point &amp; Shoot', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Point &amp; Shoot', '', '');
INSERT INTO `oc_category_description` VALUES ('133', '1', 'Digital SLR', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Digital SLR', '', '');
INSERT INTO `oc_category_description` VALUES ('134', '1', 'Serving Trolleys', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Serving Trolleys', '', '');
INSERT INTO `oc_category_description` VALUES ('135', '1', 'Camera Accesories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Camera Accesories', '', '');
INSERT INTO `oc_category_description` VALUES ('136', '1', 'Bar Counters', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bar Counters', '', '');
INSERT INTO `oc_category_description` VALUES ('137', '1', 'MP3 Players', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'MP3 Players', '', '');
INSERT INTO `oc_category_description` VALUES ('138', '1', 'IPods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'IPods', '', '');
INSERT INTO `oc_category_description` VALUES ('139', '1', 'Dining Cabinets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dining Cabinets', '', '');
INSERT INTO `oc_category_description` VALUES ('140', '1', 'Speakers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Speakers', '', '');
INSERT INTO `oc_category_description` VALUES ('141', '1', 'Bedroom', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bedroom', '', '');
INSERT INTO `oc_category_description` VALUES ('142', '1', 'Video Players', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Video Players', '', '');
INSERT INTO `oc_category_description` VALUES ('143', '1', 'Beds', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Beds', '', '');
INSERT INTO `oc_category_description` VALUES ('144', '1', 'External Hard Disk', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'External Hard Disk', '', '');
INSERT INTO `oc_category_description` VALUES ('145', '1', 'Pendrives', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Pendrives', '', '');
INSERT INTO `oc_category_description` VALUES ('146', '1', 'Chest of Drawers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Chest of Drawers', '', '');
INSERT INTO `oc_category_description` VALUES ('147', '1', 'Headphones', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Headphones', '', '');
INSERT INTO `oc_category_description` VALUES ('148', '1', 'Wardrobes &amp; Almirahs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Wardrobes &amp; Almirahs', '', '');
INSERT INTO `oc_category_description` VALUES ('149', '1', 'PC Components', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'PC Components', '', '');
INSERT INTO `oc_category_description` VALUES ('150', '1', 'Nightstands', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nightstands', '', '');
INSERT INTO `oc_category_description` VALUES ('151', '1', 'Vaccum Cleaners', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Vaccum Cleaners', '', '');
INSERT INTO `oc_category_description` VALUES ('152', '1', 'Kitchen', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kitchen', '', '');
INSERT INTO `oc_category_description` VALUES ('153', '1', 'Indoor Lighting', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Indoor Lighting', '', '');
INSERT INTO `oc_category_description` VALUES ('154', '1', 'Kitchen Tools', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kitchen Tools', '', '');
INSERT INTO `oc_category_description` VALUES ('155', '1', 'Kitchen Racks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kitchen Racks', '', '');
INSERT INTO `oc_category_description` VALUES ('156', '1', 'Kitchen Fillings', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kitchen Fillings', '', '');
INSERT INTO `oc_category_description` VALUES ('157', '1', 'Water Purifier', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Water Purifier', '', '');
INSERT INTO `oc_category_description` VALUES ('158', '1', 'Wall Units', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Wall Units', '', '');
INSERT INTO `oc_category_description` VALUES ('159', '1', 'Benches &amp; Stools', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Benches &amp; Stools', '', '');
INSERT INTO `oc_category_description` VALUES ('30', '2', 'Audio &amp; Video', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('29', '2', 'Accesories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('26', '2', 'Stylish Bag', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('17', '2', 'Kids', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('25', '2', 'Electronics', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('20', '2', 'Women', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', '', 'Example of category description', '');
INSERT INTO `oc_category_description` VALUES ('35', '2', 'Clutch Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('18', '2', 'Men', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_category_description` VALUES ('46', '2', 'Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('57', '2', 'Furniture', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('27', '2', 'Material Bag', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('59', '2', 'Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('60', '2', 'Jwellery', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('61', '2', 'Jwellery', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('62', '2', 'Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('63', '2', 'Pendants', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('64', '2', 'Swimwear', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('45', '2', 'Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('65', '2', 'Jackets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('66', '2', 'Diaper Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('67', '2', 'Watches', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('68', '2', 'Sunglasses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('69', '2', 'Accesories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('70', '2', 'Sport Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('71', '2', 'Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('72', '2', 'Hobo handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('73', '2', 'Casual Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('74', '2', 'Beaded Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('75', '2', 'Fabric Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('76', '2', 'Leather Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('77', '2', 'Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('78', '2', 'Canvas Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('79', '2', 'Leather Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('80', '2', 'Casual Dresse', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('81', '2', 'Evening', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('82', '2', 'Designer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('83', '2', 'Flat Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('84', '2', 'Party', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('85', '2', 'Coats', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('86', '2', 'Formal Jackets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('87', '2', 'Flat Sandals', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('88', '2', 'Leather Jackets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('89', '2', 'Blazers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('90', '2', 'Fasttrack', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('91', '2', 'Boots', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('92', '2', 'Casio', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('93', '2', 'Titan', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('94', '2', 'Tommy-Hilfiger', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('95', '2', 'Heels', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('96', '2', 'Ray Ban', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('97', '2', 'Fasttrack', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('98', '2', 'Police', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('99', '2', 'Bracelets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('100', '2', 'Oakley', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('101', '2', 'Backpacks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('102', '2', 'Necklaces &amp; Pendent', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('103', '2', 'Wallets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('104', '2', 'Laptops Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('105', '2', 'Belts', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('106', '2', 'Pins &amp; Brooches', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('107', '2', 'Mobiles', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('108', '2', 'Casual Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('109', '2', 'Samsung', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('110', '2', 'Evening', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('111', '2', 'Nokia', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('112', '2', 'IPhone', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('113', '2', 'Designer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('114', '2', 'Sony', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('115', '2', 'Party', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('28', '2', 'Cameras', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('116', '2', 'Swimsuits', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('117', '2', 'Beach Clothing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('118', '2', 'Clothing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('119', '2', 'Bikinis', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('31', '2', 'Computer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('32', '2', 'Appliances', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('120', '2', 'Living Room', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('121', '2', 'Racks &amp; Cabinets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('122', '2', 'Mobile Memory Cards', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('123', '2', 'Sofas', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('124', '2', 'Cases &amp; Covers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('125', '2', 'Chairs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('126', '2', 'Mobile Headphones', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('127', '2', 'Tables', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('128', '2', 'Bluetooth Headsets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('129', '2', 'Dining &amp; Bar', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('130', '2', 'Camcorders', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('131', '2', 'Dining Table Sets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('132', '2', 'Point &amp; Shoot', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('133', '2', 'Digital SLR', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('134', '2', 'Serving Trolleys', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('135', '2', 'Camera Accesories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('136', '2', 'Bar Counters', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('137', '2', 'MP3 Players', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('138', '2', 'IPods', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('139', '2', 'Dining Cabinets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('140', '2', 'Speakers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('141', '2', 'Bedroom', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('142', '2', 'Video Players', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('143', '2', 'Beds', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('144', '2', 'External Hard Disk', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('145', '2', 'Pendrives', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('146', '2', 'Chest of Drawers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('147', '2', 'Headphones', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('148', '2', 'Wardrobes &amp; Almirahs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('149', '2', 'PC Components', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('150', '2', 'Nightstands', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('151', '2', 'Vaccum Cleaners', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('152', '2', 'Kitchen', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('153', '2', 'Indoor Lighting', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('154', '2', 'Kitchen Tools', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('155', '2', 'Kitchen Racks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('156', '2', 'Kitchen Fillings', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('157', '2', 'Water Purifier', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('158', '2', 'Wall Units', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_category_description` VALUES ('159', '2', 'Benches &amp; Stools', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '');

-- ----------------------------
-- Table structure for `oc_category_filter`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_filter
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_category_path`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_path
-- ----------------------------
INSERT INTO `oc_category_path` VALUES ('25', '25', '0');
INSERT INTO `oc_category_path` VALUES ('28', '28', '1');
INSERT INTO `oc_category_path` VALUES ('28', '25', '0');
INSERT INTO `oc_category_path` VALUES ('35', '35', '2');
INSERT INTO `oc_category_path` VALUES ('35', '20', '0');
INSERT INTO `oc_category_path` VALUES ('35', '26', '1');
INSERT INTO `oc_category_path` VALUES ('29', '29', '1');
INSERT INTO `oc_category_path` VALUES ('29', '25', '0');
INSERT INTO `oc_category_path` VALUES ('30', '30', '1');
INSERT INTO `oc_category_path` VALUES ('30', '25', '0');
INSERT INTO `oc_category_path` VALUES ('31', '31', '1');
INSERT INTO `oc_category_path` VALUES ('31', '25', '0');
INSERT INTO `oc_category_path` VALUES ('32', '32', '1');
INSERT INTO `oc_category_path` VALUES ('32', '25', '0');
INSERT INTO `oc_category_path` VALUES ('20', '20', '0');
INSERT INTO `oc_category_path` VALUES ('27', '27', '1');
INSERT INTO `oc_category_path` VALUES ('27', '20', '0');
INSERT INTO `oc_category_path` VALUES ('26', '26', '1');
INSERT INTO `oc_category_path` VALUES ('26', '20', '0');
INSERT INTO `oc_category_path` VALUES ('18', '18', '0');
INSERT INTO `oc_category_path` VALUES ('45', '45', '1');
INSERT INTO `oc_category_path` VALUES ('45', '18', '0');
INSERT INTO `oc_category_path` VALUES ('46', '46', '1');
INSERT INTO `oc_category_path` VALUES ('46', '18', '0');
INSERT INTO `oc_category_path` VALUES ('17', '17', '0');
INSERT INTO `oc_category_path` VALUES ('57', '57', '0');
INSERT INTO `oc_category_path` VALUES ('59', '20', '0');
INSERT INTO `oc_category_path` VALUES ('60', '60', '0');
INSERT INTO `oc_category_path` VALUES ('61', '20', '0');
INSERT INTO `oc_category_path` VALUES ('61', '61', '1');
INSERT INTO `oc_category_path` VALUES ('62', '20', '0');
INSERT INTO `oc_category_path` VALUES ('59', '59', '1');
INSERT INTO `oc_category_path` VALUES ('62', '62', '1');
INSERT INTO `oc_category_path` VALUES ('63', '63', '2');
INSERT INTO `oc_category_path` VALUES ('63', '61', '1');
INSERT INTO `oc_category_path` VALUES ('63', '20', '0');
INSERT INTO `oc_category_path` VALUES ('64', '64', '1');
INSERT INTO `oc_category_path` VALUES ('64', '20', '0');
INSERT INTO `oc_category_path` VALUES ('65', '65', '1');
INSERT INTO `oc_category_path` VALUES ('65', '18', '0');
INSERT INTO `oc_category_path` VALUES ('66', '66', '2');
INSERT INTO `oc_category_path` VALUES ('66', '26', '1');
INSERT INTO `oc_category_path` VALUES ('66', '20', '0');
INSERT INTO `oc_category_path` VALUES ('67', '67', '1');
INSERT INTO `oc_category_path` VALUES ('67', '18', '0');
INSERT INTO `oc_category_path` VALUES ('68', '68', '1');
INSERT INTO `oc_category_path` VALUES ('68', '18', '0');
INSERT INTO `oc_category_path` VALUES ('69', '69', '1');
INSERT INTO `oc_category_path` VALUES ('69', '18', '0');
INSERT INTO `oc_category_path` VALUES ('70', '70', '2');
INSERT INTO `oc_category_path` VALUES ('70', '46', '1');
INSERT INTO `oc_category_path` VALUES ('70', '18', '0');
INSERT INTO `oc_category_path` VALUES ('71', '71', '2');
INSERT INTO `oc_category_path` VALUES ('71', '26', '1');
INSERT INTO `oc_category_path` VALUES ('71', '20', '0');
INSERT INTO `oc_category_path` VALUES ('72', '72', '2');
INSERT INTO `oc_category_path` VALUES ('72', '26', '1');
INSERT INTO `oc_category_path` VALUES ('72', '20', '0');
INSERT INTO `oc_category_path` VALUES ('73', '73', '2');
INSERT INTO `oc_category_path` VALUES ('73', '46', '1');
INSERT INTO `oc_category_path` VALUES ('73', '18', '0');
INSERT INTO `oc_category_path` VALUES ('74', '74', '2');
INSERT INTO `oc_category_path` VALUES ('74', '27', '1');
INSERT INTO `oc_category_path` VALUES ('74', '20', '0');
INSERT INTO `oc_category_path` VALUES ('75', '75', '2');
INSERT INTO `oc_category_path` VALUES ('75', '27', '1');
INSERT INTO `oc_category_path` VALUES ('75', '20', '0');
INSERT INTO `oc_category_path` VALUES ('76', '76', '2');
INSERT INTO `oc_category_path` VALUES ('76', '46', '1');
INSERT INTO `oc_category_path` VALUES ('76', '18', '0');
INSERT INTO `oc_category_path` VALUES ('77', '77', '2');
INSERT INTO `oc_category_path` VALUES ('77', '27', '1');
INSERT INTO `oc_category_path` VALUES ('77', '20', '0');
INSERT INTO `oc_category_path` VALUES ('78', '78', '2');
INSERT INTO `oc_category_path` VALUES ('78', '46', '1');
INSERT INTO `oc_category_path` VALUES ('78', '18', '0');
INSERT INTO `oc_category_path` VALUES ('79', '79', '2');
INSERT INTO `oc_category_path` VALUES ('79', '27', '1');
INSERT INTO `oc_category_path` VALUES ('79', '20', '0');
INSERT INTO `oc_category_path` VALUES ('80', '80', '2');
INSERT INTO `oc_category_path` VALUES ('80', '45', '1');
INSERT INTO `oc_category_path` VALUES ('80', '18', '0');
INSERT INTO `oc_category_path` VALUES ('81', '81', '2');
INSERT INTO `oc_category_path` VALUES ('81', '45', '1');
INSERT INTO `oc_category_path` VALUES ('81', '18', '0');
INSERT INTO `oc_category_path` VALUES ('82', '82', '2');
INSERT INTO `oc_category_path` VALUES ('82', '45', '1');
INSERT INTO `oc_category_path` VALUES ('82', '18', '0');
INSERT INTO `oc_category_path` VALUES ('83', '83', '2');
INSERT INTO `oc_category_path` VALUES ('83', '59', '1');
INSERT INTO `oc_category_path` VALUES ('83', '20', '0');
INSERT INTO `oc_category_path` VALUES ('84', '84', '2');
INSERT INTO `oc_category_path` VALUES ('84', '45', '1');
INSERT INTO `oc_category_path` VALUES ('84', '18', '0');
INSERT INTO `oc_category_path` VALUES ('85', '85', '2');
INSERT INTO `oc_category_path` VALUES ('85', '65', '1');
INSERT INTO `oc_category_path` VALUES ('85', '18', '0');
INSERT INTO `oc_category_path` VALUES ('86', '86', '2');
INSERT INTO `oc_category_path` VALUES ('86', '65', '1');
INSERT INTO `oc_category_path` VALUES ('86', '18', '0');
INSERT INTO `oc_category_path` VALUES ('87', '87', '2');
INSERT INTO `oc_category_path` VALUES ('87', '59', '1');
INSERT INTO `oc_category_path` VALUES ('87', '20', '0');
INSERT INTO `oc_category_path` VALUES ('88', '88', '2');
INSERT INTO `oc_category_path` VALUES ('88', '65', '1');
INSERT INTO `oc_category_path` VALUES ('88', '18', '0');
INSERT INTO `oc_category_path` VALUES ('89', '89', '2');
INSERT INTO `oc_category_path` VALUES ('89', '65', '1');
INSERT INTO `oc_category_path` VALUES ('89', '18', '0');
INSERT INTO `oc_category_path` VALUES ('90', '90', '2');
INSERT INTO `oc_category_path` VALUES ('90', '67', '1');
INSERT INTO `oc_category_path` VALUES ('90', '18', '0');
INSERT INTO `oc_category_path` VALUES ('91', '91', '2');
INSERT INTO `oc_category_path` VALUES ('91', '59', '1');
INSERT INTO `oc_category_path` VALUES ('91', '20', '0');
INSERT INTO `oc_category_path` VALUES ('92', '92', '2');
INSERT INTO `oc_category_path` VALUES ('92', '67', '1');
INSERT INTO `oc_category_path` VALUES ('92', '18', '0');
INSERT INTO `oc_category_path` VALUES ('93', '93', '2');
INSERT INTO `oc_category_path` VALUES ('93', '67', '1');
INSERT INTO `oc_category_path` VALUES ('93', '18', '0');
INSERT INTO `oc_category_path` VALUES ('94', '94', '2');
INSERT INTO `oc_category_path` VALUES ('94', '67', '1');
INSERT INTO `oc_category_path` VALUES ('94', '18', '0');
INSERT INTO `oc_category_path` VALUES ('95', '95', '2');
INSERT INTO `oc_category_path` VALUES ('95', '59', '1');
INSERT INTO `oc_category_path` VALUES ('95', '20', '0');
INSERT INTO `oc_category_path` VALUES ('96', '96', '2');
INSERT INTO `oc_category_path` VALUES ('96', '68', '1');
INSERT INTO `oc_category_path` VALUES ('96', '18', '0');
INSERT INTO `oc_category_path` VALUES ('97', '97', '2');
INSERT INTO `oc_category_path` VALUES ('97', '68', '1');
INSERT INTO `oc_category_path` VALUES ('97', '18', '0');
INSERT INTO `oc_category_path` VALUES ('98', '98', '2');
INSERT INTO `oc_category_path` VALUES ('98', '68', '1');
INSERT INTO `oc_category_path` VALUES ('98', '18', '0');
INSERT INTO `oc_category_path` VALUES ('99', '99', '2');
INSERT INTO `oc_category_path` VALUES ('99', '61', '1');
INSERT INTO `oc_category_path` VALUES ('99', '20', '0');
INSERT INTO `oc_category_path` VALUES ('100', '100', '2');
INSERT INTO `oc_category_path` VALUES ('100', '68', '1');
INSERT INTO `oc_category_path` VALUES ('100', '18', '0');
INSERT INTO `oc_category_path` VALUES ('101', '101', '2');
INSERT INTO `oc_category_path` VALUES ('101', '69', '1');
INSERT INTO `oc_category_path` VALUES ('101', '18', '0');
INSERT INTO `oc_category_path` VALUES ('102', '102', '2');
INSERT INTO `oc_category_path` VALUES ('102', '61', '1');
INSERT INTO `oc_category_path` VALUES ('102', '20', '0');
INSERT INTO `oc_category_path` VALUES ('103', '103', '2');
INSERT INTO `oc_category_path` VALUES ('103', '69', '1');
INSERT INTO `oc_category_path` VALUES ('103', '18', '0');
INSERT INTO `oc_category_path` VALUES ('104', '104', '2');
INSERT INTO `oc_category_path` VALUES ('104', '69', '1');
INSERT INTO `oc_category_path` VALUES ('104', '18', '0');
INSERT INTO `oc_category_path` VALUES ('105', '105', '2');
INSERT INTO `oc_category_path` VALUES ('105', '69', '1');
INSERT INTO `oc_category_path` VALUES ('105', '18', '0');
INSERT INTO `oc_category_path` VALUES ('106', '106', '2');
INSERT INTO `oc_category_path` VALUES ('106', '61', '1');
INSERT INTO `oc_category_path` VALUES ('106', '20', '0');
INSERT INTO `oc_category_path` VALUES ('107', '107', '1');
INSERT INTO `oc_category_path` VALUES ('107', '25', '0');
INSERT INTO `oc_category_path` VALUES ('108', '108', '2');
INSERT INTO `oc_category_path` VALUES ('108', '62', '1');
INSERT INTO `oc_category_path` VALUES ('108', '20', '0');
INSERT INTO `oc_category_path` VALUES ('109', '109', '2');
INSERT INTO `oc_category_path` VALUES ('109', '107', '1');
INSERT INTO `oc_category_path` VALUES ('109', '25', '0');
INSERT INTO `oc_category_path` VALUES ('110', '110', '2');
INSERT INTO `oc_category_path` VALUES ('110', '62', '1');
INSERT INTO `oc_category_path` VALUES ('110', '20', '0');
INSERT INTO `oc_category_path` VALUES ('111', '111', '2');
INSERT INTO `oc_category_path` VALUES ('111', '107', '1');
INSERT INTO `oc_category_path` VALUES ('111', '25', '0');
INSERT INTO `oc_category_path` VALUES ('112', '112', '2');
INSERT INTO `oc_category_path` VALUES ('112', '107', '1');
INSERT INTO `oc_category_path` VALUES ('112', '25', '0');
INSERT INTO `oc_category_path` VALUES ('113', '113', '2');
INSERT INTO `oc_category_path` VALUES ('113', '62', '1');
INSERT INTO `oc_category_path` VALUES ('113', '20', '0');
INSERT INTO `oc_category_path` VALUES ('114', '114', '2');
INSERT INTO `oc_category_path` VALUES ('114', '107', '1');
INSERT INTO `oc_category_path` VALUES ('114', '25', '0');
INSERT INTO `oc_category_path` VALUES ('115', '115', '2');
INSERT INTO `oc_category_path` VALUES ('115', '62', '1');
INSERT INTO `oc_category_path` VALUES ('115', '20', '0');
INSERT INTO `oc_category_path` VALUES ('116', '116', '2');
INSERT INTO `oc_category_path` VALUES ('116', '64', '1');
INSERT INTO `oc_category_path` VALUES ('116', '20', '0');
INSERT INTO `oc_category_path` VALUES ('117', '117', '2');
INSERT INTO `oc_category_path` VALUES ('117', '64', '1');
INSERT INTO `oc_category_path` VALUES ('117', '20', '0');
INSERT INTO `oc_category_path` VALUES ('118', '118', '2');
INSERT INTO `oc_category_path` VALUES ('118', '64', '1');
INSERT INTO `oc_category_path` VALUES ('118', '20', '0');
INSERT INTO `oc_category_path` VALUES ('119', '119', '2');
INSERT INTO `oc_category_path` VALUES ('119', '64', '1');
INSERT INTO `oc_category_path` VALUES ('119', '20', '0');
INSERT INTO `oc_category_path` VALUES ('120', '120', '1');
INSERT INTO `oc_category_path` VALUES ('120', '57', '0');
INSERT INTO `oc_category_path` VALUES ('121', '121', '2');
INSERT INTO `oc_category_path` VALUES ('121', '120', '1');
INSERT INTO `oc_category_path` VALUES ('121', '57', '0');
INSERT INTO `oc_category_path` VALUES ('122', '122', '2');
INSERT INTO `oc_category_path` VALUES ('122', '29', '1');
INSERT INTO `oc_category_path` VALUES ('122', '25', '0');
INSERT INTO `oc_category_path` VALUES ('123', '123', '2');
INSERT INTO `oc_category_path` VALUES ('123', '120', '1');
INSERT INTO `oc_category_path` VALUES ('123', '57', '0');
INSERT INTO `oc_category_path` VALUES ('124', '124', '2');
INSERT INTO `oc_category_path` VALUES ('124', '29', '1');
INSERT INTO `oc_category_path` VALUES ('124', '25', '0');
INSERT INTO `oc_category_path` VALUES ('125', '125', '2');
INSERT INTO `oc_category_path` VALUES ('125', '120', '1');
INSERT INTO `oc_category_path` VALUES ('125', '57', '0');
INSERT INTO `oc_category_path` VALUES ('126', '126', '2');
INSERT INTO `oc_category_path` VALUES ('126', '29', '1');
INSERT INTO `oc_category_path` VALUES ('126', '25', '0');
INSERT INTO `oc_category_path` VALUES ('127', '127', '2');
INSERT INTO `oc_category_path` VALUES ('127', '120', '1');
INSERT INTO `oc_category_path` VALUES ('127', '57', '0');
INSERT INTO `oc_category_path` VALUES ('128', '128', '2');
INSERT INTO `oc_category_path` VALUES ('128', '29', '1');
INSERT INTO `oc_category_path` VALUES ('128', '25', '0');
INSERT INTO `oc_category_path` VALUES ('129', '129', '1');
INSERT INTO `oc_category_path` VALUES ('129', '57', '0');
INSERT INTO `oc_category_path` VALUES ('130', '130', '2');
INSERT INTO `oc_category_path` VALUES ('130', '28', '1');
INSERT INTO `oc_category_path` VALUES ('130', '25', '0');
INSERT INTO `oc_category_path` VALUES ('131', '131', '2');
INSERT INTO `oc_category_path` VALUES ('131', '129', '1');
INSERT INTO `oc_category_path` VALUES ('131', '57', '0');
INSERT INTO `oc_category_path` VALUES ('132', '132', '2');
INSERT INTO `oc_category_path` VALUES ('132', '28', '1');
INSERT INTO `oc_category_path` VALUES ('132', '25', '0');
INSERT INTO `oc_category_path` VALUES ('133', '133', '2');
INSERT INTO `oc_category_path` VALUES ('133', '28', '1');
INSERT INTO `oc_category_path` VALUES ('133', '25', '0');
INSERT INTO `oc_category_path` VALUES ('134', '134', '2');
INSERT INTO `oc_category_path` VALUES ('134', '129', '1');
INSERT INTO `oc_category_path` VALUES ('134', '57', '0');
INSERT INTO `oc_category_path` VALUES ('135', '135', '2');
INSERT INTO `oc_category_path` VALUES ('135', '28', '1');
INSERT INTO `oc_category_path` VALUES ('135', '25', '0');
INSERT INTO `oc_category_path` VALUES ('136', '136', '2');
INSERT INTO `oc_category_path` VALUES ('136', '129', '1');
INSERT INTO `oc_category_path` VALUES ('136', '57', '0');
INSERT INTO `oc_category_path` VALUES ('137', '137', '2');
INSERT INTO `oc_category_path` VALUES ('137', '30', '1');
INSERT INTO `oc_category_path` VALUES ('137', '25', '0');
INSERT INTO `oc_category_path` VALUES ('138', '138', '2');
INSERT INTO `oc_category_path` VALUES ('138', '30', '1');
INSERT INTO `oc_category_path` VALUES ('138', '25', '0');
INSERT INTO `oc_category_path` VALUES ('139', '139', '2');
INSERT INTO `oc_category_path` VALUES ('139', '129', '1');
INSERT INTO `oc_category_path` VALUES ('139', '57', '0');
INSERT INTO `oc_category_path` VALUES ('140', '140', '2');
INSERT INTO `oc_category_path` VALUES ('140', '30', '1');
INSERT INTO `oc_category_path` VALUES ('140', '25', '0');
INSERT INTO `oc_category_path` VALUES ('141', '141', '1');
INSERT INTO `oc_category_path` VALUES ('141', '57', '0');
INSERT INTO `oc_category_path` VALUES ('142', '142', '2');
INSERT INTO `oc_category_path` VALUES ('142', '30', '1');
INSERT INTO `oc_category_path` VALUES ('142', '25', '0');
INSERT INTO `oc_category_path` VALUES ('143', '143', '2');
INSERT INTO `oc_category_path` VALUES ('143', '141', '1');
INSERT INTO `oc_category_path` VALUES ('143', '57', '0');
INSERT INTO `oc_category_path` VALUES ('144', '144', '2');
INSERT INTO `oc_category_path` VALUES ('144', '31', '1');
INSERT INTO `oc_category_path` VALUES ('144', '25', '0');
INSERT INTO `oc_category_path` VALUES ('145', '145', '2');
INSERT INTO `oc_category_path` VALUES ('145', '31', '1');
INSERT INTO `oc_category_path` VALUES ('145', '25', '0');
INSERT INTO `oc_category_path` VALUES ('146', '146', '2');
INSERT INTO `oc_category_path` VALUES ('146', '141', '1');
INSERT INTO `oc_category_path` VALUES ('146', '57', '0');
INSERT INTO `oc_category_path` VALUES ('147', '147', '2');
INSERT INTO `oc_category_path` VALUES ('147', '31', '1');
INSERT INTO `oc_category_path` VALUES ('147', '25', '0');
INSERT INTO `oc_category_path` VALUES ('148', '148', '2');
INSERT INTO `oc_category_path` VALUES ('148', '141', '1');
INSERT INTO `oc_category_path` VALUES ('148', '57', '0');
INSERT INTO `oc_category_path` VALUES ('149', '149', '2');
INSERT INTO `oc_category_path` VALUES ('149', '31', '1');
INSERT INTO `oc_category_path` VALUES ('149', '25', '0');
INSERT INTO `oc_category_path` VALUES ('150', '150', '2');
INSERT INTO `oc_category_path` VALUES ('150', '141', '1');
INSERT INTO `oc_category_path` VALUES ('150', '57', '0');
INSERT INTO `oc_category_path` VALUES ('151', '151', '2');
INSERT INTO `oc_category_path` VALUES ('151', '32', '1');
INSERT INTO `oc_category_path` VALUES ('151', '25', '0');
INSERT INTO `oc_category_path` VALUES ('152', '152', '1');
INSERT INTO `oc_category_path` VALUES ('152', '57', '0');
INSERT INTO `oc_category_path` VALUES ('153', '153', '2');
INSERT INTO `oc_category_path` VALUES ('153', '32', '1');
INSERT INTO `oc_category_path` VALUES ('153', '25', '0');
INSERT INTO `oc_category_path` VALUES ('154', '154', '2');
INSERT INTO `oc_category_path` VALUES ('154', '32', '1');
INSERT INTO `oc_category_path` VALUES ('154', '25', '0');
INSERT INTO `oc_category_path` VALUES ('155', '155', '2');
INSERT INTO `oc_category_path` VALUES ('155', '152', '1');
INSERT INTO `oc_category_path` VALUES ('155', '57', '0');
INSERT INTO `oc_category_path` VALUES ('156', '156', '2');
INSERT INTO `oc_category_path` VALUES ('156', '152', '1');
INSERT INTO `oc_category_path` VALUES ('156', '57', '0');
INSERT INTO `oc_category_path` VALUES ('157', '157', '2');
INSERT INTO `oc_category_path` VALUES ('157', '32', '1');
INSERT INTO `oc_category_path` VALUES ('157', '25', '0');
INSERT INTO `oc_category_path` VALUES ('158', '158', '2');
INSERT INTO `oc_category_path` VALUES ('158', '152', '1');
INSERT INTO `oc_category_path` VALUES ('158', '57', '0');
INSERT INTO `oc_category_path` VALUES ('159', '159', '2');
INSERT INTO `oc_category_path` VALUES ('159', '152', '1');
INSERT INTO `oc_category_path` VALUES ('159', '57', '0');

-- ----------------------------
-- Table structure for `oc_category_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_to_layout
-- ----------------------------
INSERT INTO `oc_category_to_layout` VALUES ('20', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('27', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('26', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('59', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('60', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('61', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('62', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('63', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('18', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('64', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('46', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('45', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('65', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('66', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('67', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('68', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('69', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('70', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('71', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('72', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('73', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('74', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('75', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('76', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('77', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('78', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('79', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('80', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('81', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('82', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('83', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('84', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('85', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('86', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('87', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('88', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('89', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('90', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('91', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('92', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('93', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('94', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('95', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('96', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('97', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('98', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('99', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('100', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('101', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('102', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('103', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('104', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('105', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('25', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('106', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('107', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('108', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('109', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('110', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('111', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('112', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('113', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('114', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('29', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('115', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('28', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('116', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('30', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('117', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('118', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('119', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('31', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('32', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('57', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('120', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('121', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('122', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('123', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('124', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('125', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('126', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('127', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('128', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('129', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('130', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('131', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('132', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('133', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('134', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('135', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('136', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('137', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('138', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('139', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('140', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('141', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('142', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('143', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('144', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('145', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('146', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('147', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('148', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('149', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('150', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('151', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('152', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('153', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('154', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('155', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('156', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('157', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('158', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('159', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('17', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('35', '0', '0');

-- ----------------------------
-- Table structure for `oc_category_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_to_store
-- ----------------------------
INSERT INTO `oc_category_to_store` VALUES ('17', '0');
INSERT INTO `oc_category_to_store` VALUES ('18', '0');
INSERT INTO `oc_category_to_store` VALUES ('20', '0');
INSERT INTO `oc_category_to_store` VALUES ('25', '0');
INSERT INTO `oc_category_to_store` VALUES ('26', '0');
INSERT INTO `oc_category_to_store` VALUES ('27', '0');
INSERT INTO `oc_category_to_store` VALUES ('28', '0');
INSERT INTO `oc_category_to_store` VALUES ('29', '0');
INSERT INTO `oc_category_to_store` VALUES ('30', '0');
INSERT INTO `oc_category_to_store` VALUES ('31', '0');
INSERT INTO `oc_category_to_store` VALUES ('32', '0');
INSERT INTO `oc_category_to_store` VALUES ('35', '0');
INSERT INTO `oc_category_to_store` VALUES ('45', '0');
INSERT INTO `oc_category_to_store` VALUES ('46', '0');
INSERT INTO `oc_category_to_store` VALUES ('57', '0');
INSERT INTO `oc_category_to_store` VALUES ('59', '0');
INSERT INTO `oc_category_to_store` VALUES ('60', '0');
INSERT INTO `oc_category_to_store` VALUES ('61', '0');
INSERT INTO `oc_category_to_store` VALUES ('62', '0');
INSERT INTO `oc_category_to_store` VALUES ('63', '0');
INSERT INTO `oc_category_to_store` VALUES ('64', '0');
INSERT INTO `oc_category_to_store` VALUES ('65', '0');
INSERT INTO `oc_category_to_store` VALUES ('66', '0');
INSERT INTO `oc_category_to_store` VALUES ('67', '0');
INSERT INTO `oc_category_to_store` VALUES ('68', '0');
INSERT INTO `oc_category_to_store` VALUES ('69', '0');
INSERT INTO `oc_category_to_store` VALUES ('70', '0');
INSERT INTO `oc_category_to_store` VALUES ('71', '0');
INSERT INTO `oc_category_to_store` VALUES ('72', '0');
INSERT INTO `oc_category_to_store` VALUES ('73', '0');
INSERT INTO `oc_category_to_store` VALUES ('74', '0');
INSERT INTO `oc_category_to_store` VALUES ('75', '0');
INSERT INTO `oc_category_to_store` VALUES ('76', '0');
INSERT INTO `oc_category_to_store` VALUES ('77', '0');
INSERT INTO `oc_category_to_store` VALUES ('78', '0');
INSERT INTO `oc_category_to_store` VALUES ('79', '0');
INSERT INTO `oc_category_to_store` VALUES ('80', '0');
INSERT INTO `oc_category_to_store` VALUES ('81', '0');
INSERT INTO `oc_category_to_store` VALUES ('82', '0');
INSERT INTO `oc_category_to_store` VALUES ('83', '0');
INSERT INTO `oc_category_to_store` VALUES ('84', '0');
INSERT INTO `oc_category_to_store` VALUES ('85', '0');
INSERT INTO `oc_category_to_store` VALUES ('86', '0');
INSERT INTO `oc_category_to_store` VALUES ('87', '0');
INSERT INTO `oc_category_to_store` VALUES ('88', '0');
INSERT INTO `oc_category_to_store` VALUES ('89', '0');
INSERT INTO `oc_category_to_store` VALUES ('90', '0');
INSERT INTO `oc_category_to_store` VALUES ('91', '0');
INSERT INTO `oc_category_to_store` VALUES ('92', '0');
INSERT INTO `oc_category_to_store` VALUES ('93', '0');
INSERT INTO `oc_category_to_store` VALUES ('94', '0');
INSERT INTO `oc_category_to_store` VALUES ('95', '0');
INSERT INTO `oc_category_to_store` VALUES ('96', '0');
INSERT INTO `oc_category_to_store` VALUES ('97', '0');
INSERT INTO `oc_category_to_store` VALUES ('98', '0');
INSERT INTO `oc_category_to_store` VALUES ('99', '0');
INSERT INTO `oc_category_to_store` VALUES ('100', '0');
INSERT INTO `oc_category_to_store` VALUES ('101', '0');
INSERT INTO `oc_category_to_store` VALUES ('102', '0');
INSERT INTO `oc_category_to_store` VALUES ('103', '0');
INSERT INTO `oc_category_to_store` VALUES ('104', '0');
INSERT INTO `oc_category_to_store` VALUES ('105', '0');
INSERT INTO `oc_category_to_store` VALUES ('106', '0');
INSERT INTO `oc_category_to_store` VALUES ('107', '0');
INSERT INTO `oc_category_to_store` VALUES ('108', '0');
INSERT INTO `oc_category_to_store` VALUES ('109', '0');
INSERT INTO `oc_category_to_store` VALUES ('110', '0');
INSERT INTO `oc_category_to_store` VALUES ('111', '0');
INSERT INTO `oc_category_to_store` VALUES ('112', '0');
INSERT INTO `oc_category_to_store` VALUES ('113', '0');
INSERT INTO `oc_category_to_store` VALUES ('114', '0');
INSERT INTO `oc_category_to_store` VALUES ('115', '0');
INSERT INTO `oc_category_to_store` VALUES ('116', '0');
INSERT INTO `oc_category_to_store` VALUES ('117', '0');
INSERT INTO `oc_category_to_store` VALUES ('118', '0');
INSERT INTO `oc_category_to_store` VALUES ('119', '0');
INSERT INTO `oc_category_to_store` VALUES ('120', '0');
INSERT INTO `oc_category_to_store` VALUES ('121', '0');
INSERT INTO `oc_category_to_store` VALUES ('122', '0');
INSERT INTO `oc_category_to_store` VALUES ('123', '0');
INSERT INTO `oc_category_to_store` VALUES ('124', '0');
INSERT INTO `oc_category_to_store` VALUES ('125', '0');
INSERT INTO `oc_category_to_store` VALUES ('126', '0');
INSERT INTO `oc_category_to_store` VALUES ('127', '0');
INSERT INTO `oc_category_to_store` VALUES ('128', '0');
INSERT INTO `oc_category_to_store` VALUES ('129', '0');
INSERT INTO `oc_category_to_store` VALUES ('130', '0');
INSERT INTO `oc_category_to_store` VALUES ('131', '0');
INSERT INTO `oc_category_to_store` VALUES ('132', '0');
INSERT INTO `oc_category_to_store` VALUES ('133', '0');
INSERT INTO `oc_category_to_store` VALUES ('134', '0');
INSERT INTO `oc_category_to_store` VALUES ('135', '0');
INSERT INTO `oc_category_to_store` VALUES ('136', '0');
INSERT INTO `oc_category_to_store` VALUES ('137', '0');
INSERT INTO `oc_category_to_store` VALUES ('138', '0');
INSERT INTO `oc_category_to_store` VALUES ('139', '0');
INSERT INTO `oc_category_to_store` VALUES ('140', '0');
INSERT INTO `oc_category_to_store` VALUES ('141', '0');
INSERT INTO `oc_category_to_store` VALUES ('142', '0');
INSERT INTO `oc_category_to_store` VALUES ('143', '0');
INSERT INTO `oc_category_to_store` VALUES ('144', '0');
INSERT INTO `oc_category_to_store` VALUES ('145', '0');
INSERT INTO `oc_category_to_store` VALUES ('146', '0');
INSERT INTO `oc_category_to_store` VALUES ('147', '0');
INSERT INTO `oc_category_to_store` VALUES ('148', '0');
INSERT INTO `oc_category_to_store` VALUES ('149', '0');
INSERT INTO `oc_category_to_store` VALUES ('150', '0');
INSERT INTO `oc_category_to_store` VALUES ('151', '0');
INSERT INTO `oc_category_to_store` VALUES ('152', '0');
INSERT INTO `oc_category_to_store` VALUES ('153', '0');
INSERT INTO `oc_category_to_store` VALUES ('154', '0');
INSERT INTO `oc_category_to_store` VALUES ('155', '0');
INSERT INTO `oc_category_to_store` VALUES ('156', '0');
INSERT INTO `oc_category_to_store` VALUES ('157', '0');
INSERT INTO `oc_category_to_store` VALUES ('158', '0');
INSERT INTO `oc_category_to_store` VALUES ('159', '0');

-- ----------------------------
-- Table structure for `oc_country`
-- ----------------------------
DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_country
-- ----------------------------
INSERT INTO `oc_country` VALUES ('1', 'Afghanistan', 'AF', 'AFG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('2', 'Albania', 'AL', 'ALB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('3', 'Algeria', 'DZ', 'DZA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('4', 'American Samoa', 'AS', 'ASM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('5', 'Andorra', 'AD', 'AND', '', '0', '1');
INSERT INTO `oc_country` VALUES ('6', 'Angola', 'AO', 'AGO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('7', 'Anguilla', 'AI', 'AIA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('8', 'Antarctica', 'AQ', 'ATA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('9', 'Antigua and Barbuda', 'AG', 'ATG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('10', 'Argentina', 'AR', 'ARG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('11', 'Armenia', 'AM', 'ARM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('12', 'Aruba', 'AW', 'ABW', '', '0', '1');
INSERT INTO `oc_country` VALUES ('13', 'Australia', 'AU', 'AUS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('14', 'Austria', 'AT', 'AUT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('15', 'Azerbaijan', 'AZ', 'AZE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('16', 'Bahamas', 'BS', 'BHS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('17', 'Bahrain', 'BH', 'BHR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('18', 'Bangladesh', 'BD', 'BGD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('19', 'Barbados', 'BB', 'BRB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('20', 'Belarus', 'BY', 'BLR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('21', 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '0', '1');
INSERT INTO `oc_country` VALUES ('22', 'Belize', 'BZ', 'BLZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('23', 'Benin', 'BJ', 'BEN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('24', 'Bermuda', 'BM', 'BMU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('25', 'Bhutan', 'BT', 'BTN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('26', 'Bolivia', 'BO', 'BOL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('27', 'Bosnia and Herzegovina', 'BA', 'BIH', '', '0', '1');
INSERT INTO `oc_country` VALUES ('28', 'Botswana', 'BW', 'BWA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('29', 'Bouvet Island', 'BV', 'BVT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('30', 'Brazil', 'BR', 'BRA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('31', 'British Indian Ocean Territory', 'IO', 'IOT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('32', 'Brunei Darussalam', 'BN', 'BRN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('33', 'Bulgaria', 'BG', 'BGR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('34', 'Burkina Faso', 'BF', 'BFA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('35', 'Burundi', 'BI', 'BDI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('36', 'Cambodia', 'KH', 'KHM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('37', 'Cameroon', 'CM', 'CMR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('38', 'Canada', 'CA', 'CAN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('39', 'Cape Verde', 'CV', 'CPV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('40', 'Cayman Islands', 'KY', 'CYM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('41', 'Central African Republic', 'CF', 'CAF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('42', 'Chad', 'TD', 'TCD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('43', 'Chile', 'CL', 'CHL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('44', 'China', 'CN', 'CHN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('45', 'Christmas Island', 'CX', 'CXR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('46', 'Cocos (Keeling) Islands', 'CC', 'CCK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('47', 'Colombia', 'CO', 'COL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('48', 'Comoros', 'KM', 'COM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('49', 'Congo', 'CG', 'COG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('50', 'Cook Islands', 'CK', 'COK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('51', 'Costa Rica', 'CR', 'CRI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('52', 'Cote D\'Ivoire', 'CI', 'CIV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('53', 'Croatia', 'HR', 'HRV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('54', 'Cuba', 'CU', 'CUB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('55', 'Cyprus', 'CY', 'CYP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('56', 'Czech Republic', 'CZ', 'CZE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('57', 'Denmark', 'DK', 'DNK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('58', 'Djibouti', 'DJ', 'DJI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('59', 'Dominica', 'DM', 'DMA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('60', 'Dominican Republic', 'DO', 'DOM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('61', 'East Timor', 'TL', 'TLS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('62', 'Ecuador', 'EC', 'ECU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('63', 'Egypt', 'EG', 'EGY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('64', 'El Salvador', 'SV', 'SLV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('65', 'Equatorial Guinea', 'GQ', 'GNQ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('66', 'Eritrea', 'ER', 'ERI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('67', 'Estonia', 'EE', 'EST', '', '0', '1');
INSERT INTO `oc_country` VALUES ('68', 'Ethiopia', 'ET', 'ETH', '', '0', '1');
INSERT INTO `oc_country` VALUES ('69', 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('70', 'Faroe Islands', 'FO', 'FRO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('71', 'Fiji', 'FJ', 'FJI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('72', 'Finland', 'FI', 'FIN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('74', 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '1', '1');
INSERT INTO `oc_country` VALUES ('75', 'French Guiana', 'GF', 'GUF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('76', 'French Polynesia', 'PF', 'PYF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('77', 'French Southern Territories', 'TF', 'ATF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('78', 'Gabon', 'GA', 'GAB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('79', 'Gambia', 'GM', 'GMB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('80', 'Georgia', 'GE', 'GEO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('81', 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '1', '1');
INSERT INTO `oc_country` VALUES ('82', 'Ghana', 'GH', 'GHA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('83', 'Gibraltar', 'GI', 'GIB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('84', 'Greece', 'GR', 'GRC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('85', 'Greenland', 'GL', 'GRL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('86', 'Grenada', 'GD', 'GRD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('87', 'Guadeloupe', 'GP', 'GLP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('88', 'Guam', 'GU', 'GUM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('89', 'Guatemala', 'GT', 'GTM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('90', 'Guinea', 'GN', 'GIN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('91', 'Guinea-Bissau', 'GW', 'GNB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('92', 'Guyana', 'GY', 'GUY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('93', 'Haiti', 'HT', 'HTI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('94', 'Heard and Mc Donald Islands', 'HM', 'HMD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('95', 'Honduras', 'HN', 'HND', '', '0', '1');
INSERT INTO `oc_country` VALUES ('96', 'Hong Kong', 'HK', 'HKG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('97', 'Hungary', 'HU', 'HUN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('98', 'Iceland', 'IS', 'ISL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('99', 'India', 'IN', 'IND', '', '0', '1');
INSERT INTO `oc_country` VALUES ('100', 'Indonesia', 'ID', 'IDN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('101', 'Iran (Islamic Republic of)', 'IR', 'IRN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('102', 'Iraq', 'IQ', 'IRQ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('103', 'Ireland', 'IE', 'IRL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('104', 'Israel', 'IL', 'ISR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('105', 'Italy', 'IT', 'ITA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('106', 'Jamaica', 'JM', 'JAM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('107', 'Japan', 'JP', 'JPN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('108', 'Jordan', 'JO', 'JOR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('109', 'Kazakhstan', 'KZ', 'KAZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('110', 'Kenya', 'KE', 'KEN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('111', 'Kiribati', 'KI', 'KIR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('112', 'North Korea', 'KP', 'PRK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('113', 'Korea, Republic of', 'KR', 'KOR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('114', 'Kuwait', 'KW', 'KWT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('115', 'Kyrgyzstan', 'KG', 'KGZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('116', 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('117', 'Latvia', 'LV', 'LVA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('118', 'Lebanon', 'LB', 'LBN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('119', 'Lesotho', 'LS', 'LSO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('120', 'Liberia', 'LR', 'LBR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('121', 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('122', 'Liechtenstein', 'LI', 'LIE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('123', 'Lithuania', 'LT', 'LTU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('124', 'Luxembourg', 'LU', 'LUX', '', '0', '1');
INSERT INTO `oc_country` VALUES ('125', 'Macau', 'MO', 'MAC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('126', 'FYROM', 'MK', 'MKD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('127', 'Madagascar', 'MG', 'MDG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('128', 'Malawi', 'MW', 'MWI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('129', 'Malaysia', 'MY', 'MYS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('130', 'Maldives', 'MV', 'MDV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('131', 'Mali', 'ML', 'MLI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('132', 'Malta', 'MT', 'MLT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('133', 'Marshall Islands', 'MH', 'MHL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('134', 'Martinique', 'MQ', 'MTQ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('135', 'Mauritania', 'MR', 'MRT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('136', 'Mauritius', 'MU', 'MUS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('137', 'Mayotte', 'YT', 'MYT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('138', 'Mexico', 'MX', 'MEX', '', '0', '1');
INSERT INTO `oc_country` VALUES ('139', 'Micronesia, Federated States of', 'FM', 'FSM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('140', 'Moldova, Republic of', 'MD', 'MDA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('141', 'Monaco', 'MC', 'MCO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('142', 'Mongolia', 'MN', 'MNG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('143', 'Montserrat', 'MS', 'MSR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('144', 'Morocco', 'MA', 'MAR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('145', 'Mozambique', 'MZ', 'MOZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('146', 'Myanmar', 'MM', 'MMR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('147', 'Namibia', 'NA', 'NAM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('148', 'Nauru', 'NR', 'NRU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('149', 'Nepal', 'NP', 'NPL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('150', 'Netherlands', 'NL', 'NLD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('151', 'Netherlands Antilles', 'AN', 'ANT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('152', 'New Caledonia', 'NC', 'NCL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('153', 'New Zealand', 'NZ', 'NZL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('154', 'Nicaragua', 'NI', 'NIC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('155', 'Niger', 'NE', 'NER', '', '0', '1');
INSERT INTO `oc_country` VALUES ('156', 'Nigeria', 'NG', 'NGA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('157', 'Niue', 'NU', 'NIU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('158', 'Norfolk Island', 'NF', 'NFK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('159', 'Northern Mariana Islands', 'MP', 'MNP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('160', 'Norway', 'NO', 'NOR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('161', 'Oman', 'OM', 'OMN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('162', 'Pakistan', 'PK', 'PAK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('163', 'Palau', 'PW', 'PLW', '', '0', '1');
INSERT INTO `oc_country` VALUES ('164', 'Panama', 'PA', 'PAN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('165', 'Papua New Guinea', 'PG', 'PNG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('166', 'Paraguay', 'PY', 'PRY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('167', 'Peru', 'PE', 'PER', '', '0', '1');
INSERT INTO `oc_country` VALUES ('168', 'Philippines', 'PH', 'PHL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('169', 'Pitcairn', 'PN', 'PCN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('170', 'Poland', 'PL', 'POL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('171', 'Portugal', 'PT', 'PRT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('172', 'Puerto Rico', 'PR', 'PRI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('173', 'Qatar', 'QA', 'QAT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('174', 'Reunion', 'RE', 'REU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('175', 'Romania', 'RO', 'ROM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('176', 'Russian Federation', 'RU', 'RUS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('177', 'Rwanda', 'RW', 'RWA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('178', 'Saint Kitts and Nevis', 'KN', 'KNA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('179', 'Saint Lucia', 'LC', 'LCA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('180', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('181', 'Samoa', 'WS', 'WSM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('182', 'San Marino', 'SM', 'SMR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('183', 'Sao Tome and Principe', 'ST', 'STP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('184', 'Saudi Arabia', 'SA', 'SAU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('185', 'Senegal', 'SN', 'SEN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('186', 'Seychelles', 'SC', 'SYC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('187', 'Sierra Leone', 'SL', 'SLE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('188', 'Singapore', 'SG', 'SGP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('189', 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', '0', '1');
INSERT INTO `oc_country` VALUES ('190', 'Slovenia', 'SI', 'SVN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('191', 'Solomon Islands', 'SB', 'SLB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('192', 'Somalia', 'SO', 'SOM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('193', 'South Africa', 'ZA', 'ZAF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('194', 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', '0', '1');
INSERT INTO `oc_country` VALUES ('195', 'Spain', 'ES', 'ESP', '', '0', '1');
INSERT INTO `oc_country` VALUES ('196', 'Sri Lanka', 'LK', 'LKA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('197', 'St. Helena', 'SH', 'SHN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('198', 'St. Pierre and Miquelon', 'PM', 'SPM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('199', 'Sudan', 'SD', 'SDN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('200', 'Suriname', 'SR', 'SUR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('201', 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('202', 'Swaziland', 'SZ', 'SWZ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('203', 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '1', '1');
INSERT INTO `oc_country` VALUES ('204', 'Switzerland', 'CH', 'CHE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('205', 'Syrian Arab Republic', 'SY', 'SYR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('206', 'Taiwan', 'TW', 'TWN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('207', 'Tajikistan', 'TJ', 'TJK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('208', 'Tanzania, United Republic of', 'TZ', 'TZA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('209', 'Thailand', 'TH', 'THA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('210', 'Togo', 'TG', 'TGO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('211', 'Tokelau', 'TK', 'TKL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('212', 'Tonga', 'TO', 'TON', '', '0', '1');
INSERT INTO `oc_country` VALUES ('213', 'Trinidad and Tobago', 'TT', 'TTO', '', '0', '1');
INSERT INTO `oc_country` VALUES ('214', 'Tunisia', 'TN', 'TUN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('215', 'Turkey', 'TR', 'TUR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('216', 'Turkmenistan', 'TM', 'TKM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('217', 'Turks and Caicos Islands', 'TC', 'TCA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('218', 'Tuvalu', 'TV', 'TUV', '', '0', '1');
INSERT INTO `oc_country` VALUES ('219', 'Uganda', 'UG', 'UGA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('220', 'Ukraine', 'UA', 'UKR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('221', 'United Arab Emirates', 'AE', 'ARE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('222', 'United Kingdom', 'GB', 'GBR', '', '1', '1');
INSERT INTO `oc_country` VALUES ('223', 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '0', '1');
INSERT INTO `oc_country` VALUES ('224', 'United States Minor Outlying Islands', 'UM', 'UMI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('225', 'Uruguay', 'UY', 'URY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('226', 'Uzbekistan', 'UZ', 'UZB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('227', 'Vanuatu', 'VU', 'VUT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('228', 'Vatican City State (Holy See)', 'VA', 'VAT', '', '0', '1');
INSERT INTO `oc_country` VALUES ('229', 'Venezuela', 'VE', 'VEN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('230', 'Viet Nam', 'VN', 'VNM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('231', 'Virgin Islands (British)', 'VG', 'VGB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('232', 'Virgin Islands (U.S.)', 'VI', 'VIR', '', '0', '1');
INSERT INTO `oc_country` VALUES ('233', 'Wallis and Futuna Islands', 'WF', 'WLF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('234', 'Western Sahara', 'EH', 'ESH', '', '0', '1');
INSERT INTO `oc_country` VALUES ('235', 'Yemen', 'YE', 'YEM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('237', 'Democratic Republic of Congo', 'CD', 'COD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('238', 'Zambia', 'ZM', 'ZMB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('239', 'Zimbabwe', 'ZW', 'ZWE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('242', 'Montenegro', 'ME', 'MNE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('243', 'Serbia', 'RS', 'SRB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('244', 'Aaland Islands', 'AX', 'ALA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('245', 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', '0', '1');
INSERT INTO `oc_country` VALUES ('246', 'Curacao', 'CW', 'CUW', '', '0', '1');
INSERT INTO `oc_country` VALUES ('247', 'Palestinian Territory, Occupied', 'PS', 'PSE', '', '0', '1');
INSERT INTO `oc_country` VALUES ('248', 'South Sudan', 'SS', 'SSD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('249', 'St. Barthelemy', 'BL', 'BLM', '', '0', '1');
INSERT INTO `oc_country` VALUES ('250', 'St. Martin (French part)', 'MF', 'MAF', '', '0', '1');
INSERT INTO `oc_country` VALUES ('251', 'Canary Islands', 'IC', 'ICA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('252', 'Ascension Island (British)', 'AC', 'ASC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('253', 'Kosovo, Republic of', 'XK', 'UNK', '', '0', '1');
INSERT INTO `oc_country` VALUES ('254', 'Isle of Man', 'IM', 'IMN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('255', 'Tristan da Cunha', 'TA', 'SHN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('256', 'Guernsey', 'GG', 'GGY', '', '0', '1');
INSERT INTO `oc_country` VALUES ('257', 'Jersey', 'JE', 'JEY', '', '0', '1');

-- ----------------------------
-- Table structure for `oc_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon
-- ----------------------------
INSERT INTO `oc_coupon` VALUES ('4', '-10% Discount', '2222', 'P', '10.0000', '0', '0', '0.0000', '2014-01-01', '2020-01-01', '10', '10', '0', '2009-01-27 13:55:03');
INSERT INTO `oc_coupon` VALUES ('5', 'Free Shipping', '3333', 'P', '0.0000', '0', '1', '100.0000', '2014-01-01', '2014-02-01', '10', '10', '0', '2009-03-14 21:13:53');
INSERT INTO `oc_coupon` VALUES ('6', '-10.00 Discount', '1111', 'F', '10.0000', '0', '0', '10.0000', '2014-01-01', '2020-01-01', '100000', '10000', '0', '2009-03-14 21:15:18');

-- ----------------------------
-- Table structure for `oc_coupon_category`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_category
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_coupon_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_coupon_product`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_product
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_currency`
-- ----------------------------
DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_currency
-- ----------------------------
INSERT INTO `oc_currency` VALUES ('1', 'Pound Sterling', 'GBP', '£', '', '2', '0.66189998', '0', '2015-11-10 17:17:28');
INSERT INTO `oc_currency` VALUES ('2', '人民币', 'USD', '￥', '', '2', '1.00000000', '1', '2015-11-10 17:22:11');
INSERT INTO `oc_currency` VALUES ('3', 'Euro', 'EUR', '', '€', '2', '0.93030000', '0', '2015-11-10 17:14:57');

-- ----------------------------
-- Table structure for `oc_customer`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer
-- ----------------------------
INSERT INTO `oc_customer` VALUES ('1', '1', '0', 'Sonai', 'Mishra', 'saylib4@gmail.com', '09987878787', '', 'b72bbb9d38b0b83c37238cf57840f8d52617b320', '23887544d', 'a:0:{}', '', '0', '1', '', '::1', '1', '1', '0', '', '2015-09-25 17:25:16');

-- ----------------------------
-- Table structure for `oc_customer_activity`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_activity
-- ----------------------------
INSERT INTO `oc_customer_activity` VALUES ('1', '1', 'register', 'a:2:{s:11:\"customer_id\";i:1;s:4:\"name\";s:12:\"Sonai Mishra\";}', '::1', '2015-09-25 17:25:23');
INSERT INTO `oc_customer_activity` VALUES ('2', '1', 'order_account', 'a:3:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Sonai Mishra\";s:8:\"order_id\";i:1;}', '::1', '2015-09-25 17:25:42');
INSERT INTO `oc_customer_activity` VALUES ('3', '1', 'edit', 'a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Sonai Mishra\";}', '::1', '2015-09-25 17:36:29');
INSERT INTO `oc_customer_activity` VALUES ('4', '1', 'edit', 'a:2:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:12:\"Sonai Mishra\";}', '::1', '2015-09-25 17:36:36');

-- ----------------------------
-- Table structure for `oc_customer_ban_ip`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_ban_ip`;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_ban_ip
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_group
-- ----------------------------
INSERT INTO `oc_customer_group` VALUES ('1', '0', '1');

-- ----------------------------
-- Table structure for `oc_customer_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_group_description
-- ----------------------------
INSERT INTO `oc_customer_group_description` VALUES ('1', '1', 'Default', 'test');
INSERT INTO `oc_customer_group_description` VALUES ('1', '2', 'Default', 'test');

-- ----------------------------
-- Table structure for `oc_customer_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_ip`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_ip
-- ----------------------------
INSERT INTO `oc_customer_ip` VALUES ('1', '1', '::1', '2015-09-25 17:25:24');

-- ----------------------------
-- Table structure for `oc_customer_login`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_login
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_online`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_online
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_reward`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_reward
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_customer_group
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field_value`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_value
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field_value_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_value_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_download`
-- ----------------------------
DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_download_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_event`
-- ----------------------------
DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_event
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_extension`
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_extension
-- ----------------------------
INSERT INTO `oc_extension` VALUES ('23', 'payment', 'cod');
INSERT INTO `oc_extension` VALUES ('22', 'total', 'shipping');
INSERT INTO `oc_extension` VALUES ('57', 'total', 'sub_total');
INSERT INTO `oc_extension` VALUES ('58', 'total', 'tax');
INSERT INTO `oc_extension` VALUES ('59', 'total', 'total');
INSERT INTO `oc_extension` VALUES ('410', 'module', 'banner');
INSERT INTO `oc_extension` VALUES ('426', 'module', 'carousel');
INSERT INTO `oc_extension` VALUES ('390', 'total', 'credit');
INSERT INTO `oc_extension` VALUES ('387', 'shipping', 'flat');
INSERT INTO `oc_extension` VALUES ('349', 'total', 'handling');
INSERT INTO `oc_extension` VALUES ('350', 'total', 'low_order_fee');
INSERT INTO `oc_extension` VALUES ('389', 'total', 'coupon');
INSERT INTO `oc_extension` VALUES ('413', 'module', 'category');
INSERT INTO `oc_extension` VALUES ('408', 'module', 'account');
INSERT INTO `oc_extension` VALUES ('393', 'total', 'reward');
INSERT INTO `oc_extension` VALUES ('398', 'total', 'voucher');
INSERT INTO `oc_extension` VALUES ('407', 'payment', 'free_checkout');
INSERT INTO `oc_extension` VALUES ('427', 'module', 'featured');
INSERT INTO `oc_extension` VALUES ('419', 'module', 'slideshow');
INSERT INTO `oc_extension` VALUES ('428', 'module', 'custom_block_inside_menu');
INSERT INTO `oc_extension` VALUES ('429', 'module', 'custom_subcategory_thumbnail');
INSERT INTO `oc_extension` VALUES ('430', 'module', 'magikastra');
INSERT INTO `oc_extension` VALUES ('431', 'module', 'magikblog');
INSERT INTO `oc_extension` VALUES ('432', 'module', 'magikblog_category');
INSERT INTO `oc_extension` VALUES ('433', 'module', 'magikblog_latestpost');
INSERT INTO `oc_extension` VALUES ('434', 'module', 'magikblog_homepage');
INSERT INTO `oc_extension` VALUES ('435', 'module', 'magikslider');
INSERT INTO `oc_extension` VALUES ('436', 'module', 'newslettersubscription');
INSERT INTO `oc_extension` VALUES ('437', 'module', 'recommended');
INSERT INTO `oc_extension` VALUES ('438', 'module', 'category_product_slider');
INSERT INTO `oc_extension` VALUES ('439', 'module', 'bestseller');
INSERT INTO `oc_extension` VALUES ('440', 'module', 'html');

-- ----------------------------
-- Table structure for `oc_filter`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_filter_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_filter_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_group
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_filter_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_group_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_geo_zone`
-- ----------------------------
DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_geo_zone
-- ----------------------------
INSERT INTO `oc_geo_zone` VALUES ('3', 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25');
INSERT INTO `oc_geo_zone` VALUES ('4', 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- ----------------------------
-- Table structure for `oc_information`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information
-- ----------------------------
INSERT INTO `oc_information` VALUES ('3', '1', '3', '1');
INSERT INTO `oc_information` VALUES ('4', '1', '1', '1');
INSERT INTO `oc_information` VALUES ('5', '1', '4', '1');
INSERT INTO `oc_information` VALUES ('6', '1', '2', '1');

-- ----------------------------
-- Table structure for `oc_information_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_description
-- ----------------------------
INSERT INTO `oc_information_description` VALUES ('4', '1', 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_information_description` VALUES ('5', '1', 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_information_description` VALUES ('3', '1', 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_information_description` VALUES ('6', '1', 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_information_description` VALUES ('4', '2', 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_information_description` VALUES ('5', '2', 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_information_description` VALUES ('3', '2', 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_information_description` VALUES ('6', '2', 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', '');

-- ----------------------------
-- Table structure for `oc_information_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_to_layout
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_information_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_to_store
-- ----------------------------
INSERT INTO `oc_information_to_store` VALUES ('3', '0');
INSERT INTO `oc_information_to_store` VALUES ('4', '0');
INSERT INTO `oc_information_to_store` VALUES ('5', '0');
INSERT INTO `oc_information_to_store` VALUES ('6', '0');

-- ----------------------------
-- Table structure for `oc_language`
-- ----------------------------
DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_language
-- ----------------------------
INSERT INTO `oc_language` VALUES ('2', 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', '1', '0');
INSERT INTO `oc_language` VALUES ('1', '简体中文', 'cn', 'zh_CN', 'cn.png', 'chinese', '1', '1');

-- ----------------------------
-- Table structure for `oc_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout
-- ----------------------------
INSERT INTO `oc_layout` VALUES ('1', 'Home');
INSERT INTO `oc_layout` VALUES ('2', 'Product');
INSERT INTO `oc_layout` VALUES ('3', 'Category');
INSERT INTO `oc_layout` VALUES ('4', 'Default');
INSERT INTO `oc_layout` VALUES ('5', 'Manufacturer');
INSERT INTO `oc_layout` VALUES ('6', 'Account');
INSERT INTO `oc_layout` VALUES ('7', 'Checkout');
INSERT INTO `oc_layout` VALUES ('8', 'Contact');
INSERT INTO `oc_layout` VALUES ('9', 'Sitemap');
INSERT INTO `oc_layout` VALUES ('10', 'Affiliate');
INSERT INTO `oc_layout` VALUES ('11', 'Information');
INSERT INTO `oc_layout` VALUES ('12', 'Compare');
INSERT INTO `oc_layout` VALUES ('13', 'Search');
INSERT INTO `oc_layout` VALUES ('14', 'magik blog');

-- ----------------------------
-- Table structure for `oc_layout_module`
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout_module
-- ----------------------------
INSERT INTO `oc_layout_module` VALUES ('2', '4', '0', 'content_top', '0');
INSERT INTO `oc_layout_module` VALUES ('3', '4', '0', 'content_top', '1');
INSERT INTO `oc_layout_module` VALUES ('20', '5', '0', 'column_left', '2');
INSERT INTO `oc_layout_module` VALUES ('69', '10', 'affiliate', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('142', '6', 'account', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('138', '1', 'html.38', 'content_bottom', '1');
INSERT INTO `oc_layout_module` VALUES ('137', '1', 'featured.28', 'content_top', '5');
INSERT INTO `oc_layout_module` VALUES ('72', '3', 'category', 'column_left', '1');
INSERT INTO `oc_layout_module` VALUES ('73', '3', 'banner.30', 'column_left', '2');
INSERT INTO `oc_layout_module` VALUES ('136', '1', 'bestseller.34', 'content_top', '4');
INSERT INTO `oc_layout_module` VALUES ('135', '1', 'html.33', 'content_top', '3');
INSERT INTO `oc_layout_module` VALUES ('133', '1', 'category_product_slider.36', 'content_top', '7');
INSERT INTO `oc_layout_module` VALUES ('134', '1', 'html.32', 'content_top', '2');
INSERT INTO `oc_layout_module` VALUES ('132', '1', 'magikslider.31', 'content_top', '1');
INSERT INTO `oc_layout_module` VALUES ('131', '1', 'html.35', 'content_top', '6');
INSERT INTO `oc_layout_module` VALUES ('130', '1', 'recommended.37', 'column_left', '1');
INSERT INTO `oc_layout_module` VALUES ('129', '1', 'magikblog_homepage', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('139', '1', 'html.39', 'content_bottom', '2');
INSERT INTO `oc_layout_module` VALUES ('140', '14', 'magikblog_latestpost', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('141', '14', 'magikblog_category', 'column_right', '2');

-- ----------------------------
-- Table structure for `oc_layout_route`
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout_route
-- ----------------------------
INSERT INTO `oc_layout_route` VALUES ('73', '6', '0', 'account/%');
INSERT INTO `oc_layout_route` VALUES ('17', '10', '0', 'affiliate/%');
INSERT INTO `oc_layout_route` VALUES ('44', '3', '0', 'product/category');
INSERT INTO `oc_layout_route` VALUES ('68', '1', '0', 'common/home');
INSERT INTO `oc_layout_route` VALUES ('20', '2', '0', 'product/product');
INSERT INTO `oc_layout_route` VALUES ('24', '11', '0', 'information/information');
INSERT INTO `oc_layout_route` VALUES ('23', '7', '0', 'checkout/%');
INSERT INTO `oc_layout_route` VALUES ('31', '8', '0', 'information/contact');
INSERT INTO `oc_layout_route` VALUES ('32', '9', '0', 'information/sitemap');
INSERT INTO `oc_layout_route` VALUES ('34', '4', '0', '');
INSERT INTO `oc_layout_route` VALUES ('45', '5', '0', 'product/manufacturer');
INSERT INTO `oc_layout_route` VALUES ('52', '12', '0', 'product/compare');
INSERT INTO `oc_layout_route` VALUES ('53', '13', '0', 'product/search');
INSERT INTO `oc_layout_route` VALUES ('72', '14', '0', 'magikblog/category');
INSERT INTO `oc_layout_route` VALUES ('71', '14', '0', 'magikblog/article/view');
INSERT INTO `oc_layout_route` VALUES ('70', '14', '0', 'magikblog/article/tag');
INSERT INTO `oc_layout_route` VALUES ('69', '14', '0', 'magikblog/article');

-- ----------------------------
-- Table structure for `oc_length_class`
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_length_class
-- ----------------------------
INSERT INTO `oc_length_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_length_class` VALUES ('2', '10.00000000');
INSERT INTO `oc_length_class` VALUES ('3', '0.39370000');

-- ----------------------------
-- Table structure for `oc_length_class_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_length_class_description
-- ----------------------------
INSERT INTO `oc_length_class_description` VALUES ('1', '1', 'Centimeter', 'cm');
INSERT INTO `oc_length_class_description` VALUES ('2', '1', 'Millimeter', 'mm');
INSERT INTO `oc_length_class_description` VALUES ('3', '1', 'Inch', 'in');
INSERT INTO `oc_length_class_description` VALUES ('1', '2', 'Centimeter', 'cm');
INSERT INTO `oc_length_class_description` VALUES ('2', '2', 'Millimeter', 'mm');
INSERT INTO `oc_length_class_description` VALUES ('3', '2', 'Inch', 'in');

-- ----------------------------
-- Table structure for `oc_location`
-- ----------------------------
DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_location
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_magikblog`
-- ----------------------------
DROP TABLE IF EXISTS `oc_magikblog`;
CREATE TABLE `oc_magikblog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publish_date` date NOT NULL DEFAULT '0000-00-00',
  `display_order` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_magikblog
-- ----------------------------
INSERT INTO `oc_magikblog` VALUES ('1', 'catalog/blog-img3.jpg', 'admin', '2015-09-25', '0', '1', '');
INSERT INTO `oc_magikblog` VALUES ('2', 'catalog/blog-img2.jpg', 'admin', '2015-09-25', '1', '1', '');
INSERT INTO `oc_magikblog` VALUES ('3', 'catalog/blog-img1.jpg', 'admin', '2015-09-25', '2', '1', '');
INSERT INTO `oc_magikblog` VALUES ('4', 'catalog/blog-img4.jpg', 'admin', '2015-09-25', '3', '1', '');

-- ----------------------------
-- Table structure for `oc_magikblogcategory`
-- ----------------------------
DROP TABLE IF EXISTS `oc_magikblogcategory`;
CREATE TABLE `oc_magikblogcategory` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `display_order` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_magikblogcategory
-- ----------------------------
INSERT INTO `oc_magikblogcategory` VALUES ('1', '0', '', '', '0', '1');
INSERT INTO `oc_magikblogcategory` VALUES ('2', '0', '', '', '1', '1');

-- ----------------------------
-- Table structure for `oc_magikblogcategory_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_magikblogcategory_description`;
CREATE TABLE `oc_magikblogcategory_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` text,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_magikblogcategory_description
-- ----------------------------
INSERT INTO `oc_magikblogcategory_description` VALUES ('1', '1', 'Category First', 'desc first category', 'CategoryFirst', '', '');
INSERT INTO `oc_magikblogcategory_description` VALUES ('2', '1', 'Category Second', 'desc second category', 'CategorySecond', '', '');

-- ----------------------------
-- Table structure for `oc_magikblogcategory_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_magikblogcategory_to_store`;
CREATE TABLE `oc_magikblogcategory_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_magikblogcategory_to_store
-- ----------------------------
INSERT INTO `oc_magikblogcategory_to_store` VALUES ('1', '0');
INSERT INTO `oc_magikblogcategory_to_store` VALUES ('2', '0');

-- ----------------------------
-- Table structure for `oc_magikblog_comment`
-- ----------------------------
DROP TABLE IF EXISTS `oc_magikblog_comment`;
CREATE TABLE `oc_magikblog_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned NOT NULL,
  `comment` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_magikblog_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_magikblog_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_magikblog_description`;
CREATE TABLE `oc_magikblog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) unsigned NOT NULL,
  `name` text,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_magikblog_description
-- ----------------------------
INSERT INTO `oc_magikblog_description` VALUES ('1', '1', 'Pellentesque habitant morbi ', 'Fusce ac pharetra urna. Duis non lacus sit amet lacus interdum facilisis sed non est. Ut mi metus, semper eu dictum nec, condimentum sed sapien. Nullam lobortis nunc semper ipsum luctus ut viverra ante eleifend. Nunc pretium velit sed augue luctus accumsan.\r\n\r\nAliquam laoreet consequat malesuada. Integer vitae diam sed dolor euismod laoreet eget ac felis. Donec non erat sed elit bibendum sodales. Donec eu cursus velit. Proin nunc lacus, gravida mollis dictum ut, vulputate eu turpis. Sed felis sapien, commodo in iaculis in, feugiat sed enim. Sed nunc ipsum, fermentum varius dignissim vitae, blandit et ante.Maecenas sagittis, lorem sed congue egestas, lectus purus congue nisl, ac molestie enim ligula nec eros. Sed leo tortor, tincidunt sit amet elementum vel, eleifend at orci. Maecenas ut turpis felis. Donec sit amet quam sem, et aliquet est.\r\n\r\nQuisque nisl lectus, accumsan et euismod eu, sollicitudin ac augue. In sit amet urna magna. Curabitur imperdiet urna nec purus egestas eget aliquet purus iaculis. Nunc porttitor blandit imperdiet. Nulla facilisi. Cras odio ipsum, vehicula nec vehicula sed, convallis scelerisque quam. Phasellus ut odio dui, ut fermentum neque.\r\n\r\nCurabitur at vestibulum sem. Aliquam vehicula neque ac nibh suscipit ultrices. Morbi interdum accumsan arcu nec scelerisque. Phasellus eget purus nulla. Suspendisse quam est, tempor quis consectetur non, interdum vitae diam. Pellentesque volutpat mollis ligula in laoreet. Aenean est dui, sagittis in consequat at, adipiscing at risus. Sed suscipit, est vitae aliquam molestie, sem dolor dignissim leo, eget imperdiet enim urna in justo. Mauris pulvinar tortor lorem. Aliquam sed nisl in ipsum tincidunt ultrices.\r\n\r\nNullam commodo lobortis nibh, vitae accumsan velit dapibus sed. Nunc ac sem eu libero pretium faucib. Quisque et semper odio. Praesent tortor ligula, imperdiet sed aliquet ut, pharetra at nisi. Etiam sit amet molestie est. Donec id turpis vitae leo viverra adipiscing at sed nisi. Donec ut justo nunc. Vivamu bibendum erat ac nunc sollicitudin lacinia. Phasellus sed lacus magna.', 'Pellentesque', '', '', '');
INSERT INTO `oc_magikblog_description` VALUES ('2', '1', 'Morbintesque habitant morbi', 'Fusce ac pharetra urna. Duis non lacus sit amet lacus interdum facilisis sed non est. Ut mi metus, semper eu dictum nec, condimentum sed sapien. Nullam lobortis nunc semper ipsum luctus ut viverra ante eleifend. Nunc pretium velit sed augue luctus accumsan.\r\n\r\nAliquam laoreet consequat malesuada. Integer vitae diam sed dolor euismod laoreet eget ac felis. Donec non erat sed elit bibendum sodales. Donec eu cursus velit. Proin nunc lacus, gravida mollis dictum ut, vulputate eu turpis. Sed felis sapien, commodo in iaculis in, feugiat sed enim. Sed nunc ipsum, fermentum varius dignissim vitae, blandit et ante.Maecenas sagittis, lorem sed congue egestas, lectus purus congue nisl, ac molestie enim ligula nec eros. Sed leo tortor, tincidunt sit amet elementum vel, eleifend at orci. Maecenas ut turpis felis. Donec sit amet quam sem, et aliquet est.\r\n\r\nQuisque nisl lectus, accumsan et euismod eu, sollicitudin ac augue. In sit amet urna magna. Curabitur imperdiet urna nec purus egestas eget aliquet purus iaculis. Nunc porttitor blandit imperdiet. Nulla facilisi. Cras odio ipsum, vehicula nec vehicula sed, convallis scelerisque quam. Phasellus ut odio dui, ut fermentum neque.\r\n\r\nCurabitur at vestibulum sem. Aliquam vehicula neque ac nibh suscipit ultrices. Morbi interdum accumsan arcu nec scelerisque. Phasellus eget purus nulla. Suspendisse quam est, tempor quis consectetur non, interdum vitae diam. Pellentesque volutpat mollis ligula in laoreet. Aenean est dui, sagittis in consequat at, adipiscing at risus. Sed suscipit, est vitae aliquam molestie, sem dolor dignissim leo, eget imperdiet enim urna in justo. Mauris pulvinar tortor lorem. Aliquam sed nisl in ipsum tincidunt ultrices.\r\n\r\nNullam commodo lobortis nibh, vitae accumsan velit dapibus sed. Nunc ac sem eu libero pretium faucib. Quisque et semper odio. Praesent tortor ligula, imperdiet sed aliquet ut, pharetra at nisi. Etiam sit amet molestie est. Donec id turpis vitae leo viverra adipiscing at sed nisi. Donec ut justo nunc. Vivamu bibendum erat ac nunc sollicitudin lacinia. Phasellus sed lacus magna.', 'Morbintesque', '', '', '');
INSERT INTO `oc_magikblog_description` VALUES ('3', '1', 'Malesuada', 'Fusce ac pharetra urna. Duis non lacus sit amet lacus interdum facilisis sed non est. Ut mi metus, semper eu dictum nec, condimentum sed sapien. Nullam lobortis nunc semper ipsum luctus ut viverra ante eleifend. Nunc pretium velit sed augue luctus accumsan.\r\n\r\nAliquam laoreet consequat malesuada. Integer vitae diam sed dolor euismod laoreet eget ac felis. Donec non erat sed elit bibendum sodales. Donec eu cursus velit. Proin nunc lacus, gravida mollis dictum ut, vulputate eu turpis. Sed felis sapien, commodo in iaculis in, feugiat sed enim. Sed nunc ipsum, fermentum varius dignissim vitae, blandit et ante.Maecenas sagittis, lorem sed congue egestas, lectus purus congue nisl, ac molestie enim ligula nec eros. Sed leo tortor, tincidunt sit amet elementum vel, eleifend at orci. Maecenas ut turpis felis. Donec sit amet quam sem, et aliquet est.\r\n\r\nQuisque nisl lectus, accumsan et euismod eu, sollicitudin ac augue. In sit amet urna magna. Curabitur imperdiet urna nec purus egestas eget aliquet purus iaculis. Nunc porttitor blandit imperdiet. Nulla facilisi. Cras odio ipsum, vehicula nec vehicula sed, convallis scelerisque quam. Phasellus ut odio dui, ut fermentum neque.\r\n\r\nCurabitur at vestibulum sem. Aliquam vehicula neque ac nibh suscipit ultrices. Morbi interdum accumsan arcu nec scelerisque. Phasellus eget purus nulla. Suspendisse quam est, tempor quis consectetur non, interdum vitae diam. Pellentesque volutpat mollis ligula in laoreet. Aenean est dui, sagittis in consequat at, adipiscing at risus. Sed suscipit, est vitae aliquam molestie, sem dolor dignissim leo, eget imperdiet enim urna in justo. Mauris pulvinar tortor lorem. Aliquam sed nisl in ipsum tincidunt ultrices.\r\n\r\nNullam commodo lobortis nibh, vitae accumsan velit dapibus sed. Nunc ac sem eu libero pretium faucib. Quisque et semper odio. Praesent tortor ligula, imperdiet sed aliquet ut, pharetra at nisi. Etiam sit amet molestie est. Donec id turpis vitae leo viverra adipiscing at sed nisi. Donec ut justo nunc. Vivamu bibendum erat ac nunc sollicitudin lacinia. Phasellus sed lacus magna.', 'malesuada', '', '', '');
INSERT INTO `oc_magikblog_description` VALUES ('4', '1', 'Habitantesque habitant morbi', 'Fusce ac pharetra urna. Duis non lacus sit amet lacus interdum facilisis sed non est. Ut mi metus, semper eu dictum nec, condimentum sed sapien. Nullam lobortis nunc semper ipsum luctus ut viverra ante eleifend. Nunc pretium velit sed augue luctus accumsan.\r\n\r\nAliquam laoreet consequat malesuada. Integer vitae diam sed dolor euismod laoreet eget ac felis. Donec non erat sed elit bibendum sodales. Donec eu cursus velit. Proin nunc lacus, gravida mollis dictum ut, vulputate eu turpis. Sed felis sapien, commodo in iaculis in, feugiat sed enim. Sed nunc ipsum, fermentum varius dignissim vitae, blandit et ante.Maecenas sagittis, lorem sed congue egestas, lectus purus congue nisl, ac molestie enim ligula nec eros. Sed leo tortor, tincidunt sit amet elementum vel, eleifend at orci. Maecenas ut turpis felis. Donec sit amet quam sem, et aliquet est.\r\n\r\nQuisque nisl lectus, accumsan et euismod eu, sollicitudin ac augue. In sit amet urna magna. Curabitur imperdiet urna nec purus egestas eget aliquet purus iaculis. Nunc porttitor blandit imperdiet. Nulla facilisi. Cras odio ipsum, vehicula nec vehicula sed, convallis scelerisque quam. Phasellus ut odio dui, ut fermentum neque.\r\n\r\nCurabitur at vestibulum sem. Aliquam vehicula neque ac nibh suscipit ultrices. Morbi interdum accumsan arcu nec scelerisque. Phasellus eget purus nulla. Suspendisse quam est, tempor quis consectetur non, interdum vitae diam. Pellentesque volutpat mollis ligula in laoreet. Aenean est dui, sagittis in consequat at, adipiscing at risus. Sed suscipit, est vitae aliquam molestie, sem dolor dignissim leo, eget imperdiet enim urna in justo. Mauris pulvinar tortor lorem. Aliquam sed nisl in ipsum tincidunt ultrices.\r\n\r\nNullam commodo lobortis nibh, vitae accumsan velit dapibus sed. Nunc ac sem eu libero pretium faucib. Quisque et semper odio. Praesent tortor ligula, imperdiet sed aliquet ut, pharetra at nisi. Etiam sit amet molestie est. Donec id turpis vitae leo viverra adipiscing at sed nisi. Donec ut justo nunc. Vivamu bibendum erat ac nunc sollicitudin lacinia. Phasellus sed lacus magna.', 'Habitantesque', '', '', '');

-- ----------------------------
-- Table structure for `oc_magikblog_to_category`
-- ----------------------------
DROP TABLE IF EXISTS `oc_magikblog_to_category`;
CREATE TABLE `oc_magikblog_to_category` (
  `blog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_magikblog_to_category
-- ----------------------------
INSERT INTO `oc_magikblog_to_category` VALUES ('1', '1');
INSERT INTO `oc_magikblog_to_category` VALUES ('1', '2');
INSERT INTO `oc_magikblog_to_category` VALUES ('2', '1');
INSERT INTO `oc_magikblog_to_category` VALUES ('2', '2');
INSERT INTO `oc_magikblog_to_category` VALUES ('3', '1');
INSERT INTO `oc_magikblog_to_category` VALUES ('3', '2');
INSERT INTO `oc_magikblog_to_category` VALUES ('4', '1');
INSERT INTO `oc_magikblog_to_category` VALUES ('4', '2');

-- ----------------------------
-- Table structure for `oc_magikblog_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_magikblog_to_store`;
CREATE TABLE `oc_magikblog_to_store` (
  `blog_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_magikblog_to_store
-- ----------------------------
INSERT INTO `oc_magikblog_to_store` VALUES ('1', '0');
INSERT INTO `oc_magikblog_to_store` VALUES ('2', '0');
INSERT INTO `oc_magikblog_to_store` VALUES ('3', '0');
INSERT INTO `oc_magikblog_to_store` VALUES ('4', '0');

-- ----------------------------
-- Table structure for `oc_manufacturer`
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_manufacturer
-- ----------------------------
INSERT INTO `oc_manufacturer` VALUES ('5', 'HTC', 'catalog/b-logo4.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('6', 'Palm', 'catalog/b-logo5.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('7', 'Hewlett-Packard', 'catalog/b-logo3.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('8', 'Apple', 'catalog/b-logo1.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('9', 'Canon', 'catalog/b-logo2.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('10', 'Sony', 'catalog/b-logo6.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('11', 'Red bull', 'catalog/b-logo1.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('12', 'sprite', 'catalog/b-logo3.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('13', 'Disney', 'catalog/b-logo5.png', '0');

-- ----------------------------
-- Table structure for `oc_manufacturer_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_manufacturer_to_store
-- ----------------------------
INSERT INTO `oc_manufacturer_to_store` VALUES ('5', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('6', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('7', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('8', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('9', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('10', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('11', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('12', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('13', '0');

-- ----------------------------
-- Table structure for `oc_marketing`
-- ----------------------------
DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_marketing
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_modification`
-- ----------------------------
DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_modification
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_module`
-- ----------------------------
DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_module
-- ----------------------------
INSERT INTO `oc_module` VALUES ('30', 'Banner - Category', 'banner', 'a:5:{s:4:\"name\";s:17:\"Banner - Category\";s:9:\"banner_id\";s:1:\"6\";s:5:\"width\";s:3:\"262\";s:6:\"height\";s:3:\"430\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('29', 'Home Page', 'carousel', 'a:5:{s:4:\"name\";s:20:\"Carousel - Home Page\";s:9:\"banner_id\";s:1:\"8\";s:5:\"width\";s:3:\"130\";s:6:\"height\";s:3:\"100\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('28', 'featured-products', 'featured', 'a:6:{s:4:\"name\";s:17:\"featured-products\";s:7:\"product\";a:12:{i:0;s:2:\"43\";i:1;s:2:\"40\";i:2;s:2:\"31\";i:3;s:2:\"42\";i:4;s:2:\"35\";i:5;s:2:\"29\";i:6;s:2:\"30\";i:7;s:2:\"44\";i:8;s:2:\"48\";i:9;s:2:\"46\";i:10;s:2:\"47\";i:11;s:2:\"28\";}s:5:\"limit\";s:2:\"10\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"850\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('31', 'magikslider', 'magikslider', 'a:5:{s:4:\"name\";s:11:\"magikslider\";s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:3:\"500\";s:6:\"status\";s:1:\"1\";s:17:\"magikslider_image\";a:5:{i:0;a:4:{s:23:\"magikslider_image_title\";a:1:{i:1;a:1:{s:5:\"title\";s:14:\"Slider image 1\";}}s:4:\"link\";s:29:\"http://www.magikcommerce.com/\";s:5:\"image\";s:20:\"catalog/slide-bg.jpg\";s:29:\"magikslider_image_description\";a:1:{i:1;a:1:{s:11:\"description\";s:239:\"&lt;h2&gt;Hello there!&lt;/h2&gt;\r\n&lt;h3&gt;Welcome to Astra&lt;/h3&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec cursus.&lt;/p&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;shop-btn&quot;&gt;shop now!&lt;/a&gt;\";}}}i:1;a:4:{s:23:\"magikslider_image_title\";a:1:{i:1;a:1:{s:5:\"title\";s:14:\"Slider image 2\";}}s:4:\"link\";s:29:\"http://www.magikcommerce.com/\";s:5:\"image\";s:22:\"catalog/slide-bg-1.jpg\";s:29:\"magikslider_image_description\";a:1:{i:1;a:1:{s:11:\"description\";s:77:\"&lt;h2&gt;Multipurpose Theme&lt;/h2&gt;\r\n&lt;h3&gt;... be creative&lt;/h3&gt;\";}}}i:2;a:4:{s:23:\"magikslider_image_title\";a:1:{i:1;a:1:{s:5:\"title\";s:14:\"Slider image 3\";}}s:4:\"link\";s:29:\"http://www.magikcommerce.com/\";s:5:\"image\";s:22:\"catalog/slide-bg-3.jpg\";s:29:\"magikslider_image_description\";a:1:{i:1;a:1:{s:11:\"description\";s:198:\"&lt;h2&gt;Powerfull &amp; Responsive&lt;/h2&gt;\r\n&lt;h4&gt;Optimized for minor resolutions &amp; mobile devices.&lt;/h4&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;shop-btn&quot;&gt;Purchase&lt;/a&gt;\";}}}i:3;a:4:{s:23:\"magikslider_image_title\";a:1:{i:1;a:1:{s:5:\"title\";s:14:\"Slider image 4\";}}s:4:\"link\";s:29:\"http://www.magikcommerce.com/\";s:5:\"image\";s:22:\"catalog/slide-bg-2.jpg\";s:29:\"magikslider_image_description\";a:1:{i:1;a:1:{s:11:\"description\";s:273:\"&lt;h2 style=&quot;color:#fff&quot;&gt;LOVE IT, ENJOY IT&lt;/h2&gt;\r\n&lt;h5 style=&quot;color:#999&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec cursus.&lt;/h5&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;shop-btn center&quot;&gt;Buy theme!&lt;/a&gt;\";}}}i:4;a:4:{s:23:\"magikslider_image_title\";a:1:{i:1;a:1:{s:5:\"title\";s:14:\"Slider image 5\";}}s:4:\"link\";s:29:\"http://www.magikcommerce.com/\";s:5:\"image\";s:22:\"catalog/slide-bg-4.jpg\";s:29:\"magikslider_image_description\";a:1:{i:1;a:1:{s:11:\"description\";s:101:\"&lt;h1&gt;Customizable Theme&lt;/h1&gt;\r\n&lt;h6&gt;You can change colors of every element.&lt;/h6&gt;\";}}}}}');
INSERT INTO `oc_module` VALUES ('32', 'service-section', 'html', 'a:3:{s:4:\"name\";s:15:\"service-section\";s:18:\"module_description\";a:1:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:984:\"&lt;div class=&quot;service-section&quot;&gt;\r\n&lt;div class=&quot;container&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3 col-xs-12 message&quot;&gt;\r\n&lt;span&gt;\r\n&lt;strong&gt;Return &amp;amp; Exchange&lt;/strong&gt; Lorem ipsum dolor sit amet, consectetur \r\n&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3 col-xs-12 message&quot;&gt;\r\n&lt;span&gt;\r\n&lt;strong&gt;Free Shipping&lt;/strong&gt; Lorem ipsum dolor sit amet, consectetur\r\n&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3 col-xs-12 message&quot;&gt;\r\n&lt;span&gt;\r\n&lt;strong&gt;50% Off&lt;/strong&gt; Lorem ipsum dolor sit amet, consectetur\r\n&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3 col-xs-12 message last&quot;&gt;\r\n&lt;span&gt;\r\n&lt;strong&gt;Need help?&lt;/strong&gt; Lorem ipsum dolor sit amet, consectetur\r\n&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\";}}s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('33', 'promo-banner-section', 'html', 'a:3:{s:4:\"name\";s:20:\"promo-banner-section\";s:18:\"module_description\";a:1:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:499:\"&lt;div class=&quot;promo-banner-section container wow bounceInUp animated&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-6 col-xs-12&quot;&gt;\r\n&lt;img alt=&quot;promo-banner2&quot; src=&quot;catalog/view/theme/astragrey/image/promo-banner1.png&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-sm-6 col-xs-12&quot;&gt;\r\n&lt;img alt=&quot;promo-banner4&quot; src=&quot;catalog/view/theme/astragrey/image/promo-banner2.png&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\";}}s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('34', 'bestseller-products', 'bestseller', 'a:5:{s:4:\"name\";s:19:\"bestseller-products\";s:5:\"limit\";s:2:\"10\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"850\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('35', 'middle-promo-banner-section', 'html', 'a:3:{s:4:\"name\";s:27:\"middle-promo-banner-section\";s:18:\"module_description\";a:1:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:501:\"&lt;div class=&quot;promo-banner-section container wow bounceInDown animated&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-6 col-xs-12&quot;&gt;\r\n&lt;img alt=&quot;promo-banner2&quot; src=&quot;catalog/view/theme/astragrey/image/promo-banner3.png&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-sm-6 col-xs-12&quot;&gt;\r\n&lt;img alt=&quot;promo-banner4&quot; src=&quot;catalog/view/theme/astragrey/image/promo-banner4.png&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\";}}s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('36', 'category-product-slider', 'category_product_slider', 'a:6:{s:4:\"name\";s:23:\"category-product-slider\";s:5:\"limit\";s:2:\"10\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"850\";s:14:\"category_name1\";s:2:\"20\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('37', 'recommened-products', 'recommended', 'a:6:{s:4:\"name\";s:19:\"recommened-products\";s:7:\"product\";a:7:{i:0;s:2:\"47\";i:1;s:2:\"28\";i:2;s:2:\"41\";i:3;s:2:\"36\";i:4;s:2:\"34\";i:5;s:2:\"30\";i:6;s:2:\"40\";}s:5:\"limit\";s:1:\"6\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"850\";s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('38', 'our-features-box', 'html', 'a:3:{s:4:\"name\";s:16:\"our-features-box\";s:18:\"module_description\";a:1:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:1399:\"&lt;div class=&quot;our-features-box&quot;&gt;\r\n&lt;div class=&quot;container&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-md-4 col-xs-12 col-sm-4 wow bounceInLeft animated&quot;&gt;\r\n&lt;div class=&quot;feature-box&quot;&gt;\r\n&lt;div class=&quot;icon-reponsive&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div class=&quot;content&quot;&gt;Responsive Theme \r\n&lt;span&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec cursus mi nec lectus tempor. &lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-md-4 col-xs-12 col-sm-4 wow bounceInUp animated&quot;&gt;\r\n&lt;div class=&quot;feature-box&quot;&gt;\r\n&lt;div class=&quot;icon-admin&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div class=&quot;content&quot;&gt;Powerful Admin Panel \r\n&lt;span&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec cursus mi nec lectus tempor. &lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-md-4 col-xs-12 col-sm-4 wow bounceInRight animated&quot;&gt;\r\n&lt;div class=&quot;feature-box&quot;&gt;\r\n&lt;div class=&quot;icon-support&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div class=&quot;content&quot;&gt;Premium Support \r\n&lt;span&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec cursus mi nec lectus tempor. &lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\";}}s:6:\"status\";s:1:\"1\";}');
INSERT INTO `oc_module` VALUES ('39', 'offer-banner-section', 'html', 'a:3:{s:4:\"name\";s:20:\"offer-banner-section\";s:18:\"module_description\";a:1:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:1129:\"&lt;div class=&quot;offer-banner-section bounceInUp animated&quot;&gt;\r\n&lt;div class=&quot;container&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-md-3 col-sm-6 col-xs-12&quot;&gt;\r\n&lt;div class=&quot;col&quot;&gt;\r\n&lt;img src=&quot;catalog/view/theme/astragrey/image/offer-banner1.png&quot; alt=&quot;offer banner1&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-md-3 col-sm-6 col-xs-12&quot;&gt;\r\n&lt;div class=&quot;col&quot;&gt;\r\n&lt;img src=&quot;catalog/view/theme/astragrey/image/offer-banner2.png&quot; alt=&quot;offer banner2&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-md-3 col-sm-6 col-xs-12&quot;&gt;\r\n&lt;div class=&quot;col&quot;&gt;\r\n&lt;img src=&quot;catalog/view/theme/astragrey/image/offer-banner3.png&quot; alt=&quot;offer banner3&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;col-md-3 col-sm-6 col-xs-12&quot;&gt;\r\n&lt;div class=&quot;col last&quot;&gt;\r\n&lt;img src=&quot;catalog/view/theme/astragrey/image/offer-banner4.png&quot; alt=&quot;offer banner4&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\";}}s:6:\"status\";s:1:\"1\";}');

-- ----------------------------
-- Table structure for `oc_newslettersubscription`
-- ----------------------------
DROP TABLE IF EXISTS `oc_newslettersubscription`;
CREATE TABLE `oc_newslettersubscription` (
  `subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_newslettersubscription
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_option`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option
-- ----------------------------
INSERT INTO `oc_option` VALUES ('1', 'radio', '1');
INSERT INTO `oc_option` VALUES ('2', 'checkbox', '2');
INSERT INTO `oc_option` VALUES ('4', 'text', '3');
INSERT INTO `oc_option` VALUES ('5', 'select', '4');
INSERT INTO `oc_option` VALUES ('6', 'textarea', '5');
INSERT INTO `oc_option` VALUES ('7', 'file', '6');
INSERT INTO `oc_option` VALUES ('8', 'date', '7');
INSERT INTO `oc_option` VALUES ('9', 'time', '8');
INSERT INTO `oc_option` VALUES ('10', 'datetime', '9');
INSERT INTO `oc_option` VALUES ('11', 'select', '10');
INSERT INTO `oc_option` VALUES ('12', 'date', '11');

-- ----------------------------
-- Table structure for `oc_option_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_description
-- ----------------------------
INSERT INTO `oc_option_description` VALUES ('1', '1', 'Radio');
INSERT INTO `oc_option_description` VALUES ('2', '1', 'Checkbox');
INSERT INTO `oc_option_description` VALUES ('4', '1', 'Text');
INSERT INTO `oc_option_description` VALUES ('6', '1', 'Textarea');
INSERT INTO `oc_option_description` VALUES ('8', '1', 'Date');
INSERT INTO `oc_option_description` VALUES ('7', '1', 'File');
INSERT INTO `oc_option_description` VALUES ('5', '1', 'Select');
INSERT INTO `oc_option_description` VALUES ('9', '1', 'Time');
INSERT INTO `oc_option_description` VALUES ('10', '1', 'Date &amp; Time');
INSERT INTO `oc_option_description` VALUES ('12', '1', 'Delivery Date');
INSERT INTO `oc_option_description` VALUES ('11', '1', 'Size');
INSERT INTO `oc_option_description` VALUES ('1', '2', 'Radio');
INSERT INTO `oc_option_description` VALUES ('2', '2', 'Checkbox');
INSERT INTO `oc_option_description` VALUES ('4', '2', 'Text');
INSERT INTO `oc_option_description` VALUES ('6', '2', 'Textarea');
INSERT INTO `oc_option_description` VALUES ('8', '2', 'Date');
INSERT INTO `oc_option_description` VALUES ('7', '2', 'File');
INSERT INTO `oc_option_description` VALUES ('5', '2', 'Select');
INSERT INTO `oc_option_description` VALUES ('9', '2', 'Time');
INSERT INTO `oc_option_description` VALUES ('10', '2', 'Date &amp; Time');
INSERT INTO `oc_option_description` VALUES ('12', '2', 'Delivery Date');
INSERT INTO `oc_option_description` VALUES ('11', '2', 'Size');

-- ----------------------------
-- Table structure for `oc_option_value`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_value
-- ----------------------------
INSERT INTO `oc_option_value` VALUES ('43', '1', '', '3');
INSERT INTO `oc_option_value` VALUES ('32', '1', '', '1');
INSERT INTO `oc_option_value` VALUES ('45', '2', '', '4');
INSERT INTO `oc_option_value` VALUES ('44', '2', '', '3');
INSERT INTO `oc_option_value` VALUES ('42', '5', '', '4');
INSERT INTO `oc_option_value` VALUES ('41', '5', '', '3');
INSERT INTO `oc_option_value` VALUES ('39', '5', '', '1');
INSERT INTO `oc_option_value` VALUES ('40', '5', '', '2');
INSERT INTO `oc_option_value` VALUES ('31', '1', '', '2');
INSERT INTO `oc_option_value` VALUES ('23', '2', '', '1');
INSERT INTO `oc_option_value` VALUES ('24', '2', '', '2');
INSERT INTO `oc_option_value` VALUES ('46', '11', '', '1');
INSERT INTO `oc_option_value` VALUES ('47', '11', '', '2');
INSERT INTO `oc_option_value` VALUES ('48', '11', '', '3');

-- ----------------------------
-- Table structure for `oc_option_value_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_value_description
-- ----------------------------
INSERT INTO `oc_option_value_description` VALUES ('43', '1', '1', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('32', '1', '1', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('45', '1', '2', 'Checkbox 4');
INSERT INTO `oc_option_value_description` VALUES ('44', '1', '2', 'Checkbox 3');
INSERT INTO `oc_option_value_description` VALUES ('31', '1', '1', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('42', '1', '5', 'Yellow');
INSERT INTO `oc_option_value_description` VALUES ('41', '1', '5', 'Green');
INSERT INTO `oc_option_value_description` VALUES ('39', '1', '5', 'Red');
INSERT INTO `oc_option_value_description` VALUES ('40', '1', '5', 'Blue');
INSERT INTO `oc_option_value_description` VALUES ('23', '1', '2', 'Checkbox 1');
INSERT INTO `oc_option_value_description` VALUES ('24', '1', '2', 'Checkbox 2');
INSERT INTO `oc_option_value_description` VALUES ('48', '1', '11', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('47', '1', '11', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('46', '1', '11', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('43', '2', '1', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('32', '2', '1', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('45', '2', '2', 'Checkbox 4');
INSERT INTO `oc_option_value_description` VALUES ('44', '2', '2', 'Checkbox 3');
INSERT INTO `oc_option_value_description` VALUES ('31', '2', '1', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('42', '2', '5', 'Yellow');
INSERT INTO `oc_option_value_description` VALUES ('41', '2', '5', 'Green');
INSERT INTO `oc_option_value_description` VALUES ('39', '2', '5', 'Red');
INSERT INTO `oc_option_value_description` VALUES ('40', '2', '5', 'Blue');
INSERT INTO `oc_option_value_description` VALUES ('23', '2', '2', 'Checkbox 1');
INSERT INTO `oc_option_value_description` VALUES ('24', '2', '2', 'Checkbox 2');
INSERT INTO `oc_option_value_description` VALUES ('48', '2', '11', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('47', '2', '11', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('46', '2', '11', 'Small');

-- ----------------------------
-- Table structure for `oc_order`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order
-- ----------------------------
INSERT INTO `oc_order` VALUES ('1', '0', 'INV-2013-00', '0', 'Your Store', 'http://localhost/php/astrademo/', '1', '1', 'Sonai', 'Mishra', 'saylib4@gmail.com', '09987878787', '', 'b:0;', 'Sonai', 'Mishra', '', 'Hadapsar Pune', '', 'Pune', '411028', 'India', '99', 'Maharashtra', '1493', '', 'b:0;', 'Cash On Delivery', 'cod', 'Sonai', 'Mishra', '', 'Hadapsar Pune', '', 'Pune', '411028', 'India', '99', 'Maharashtra', '1493', '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '1144.9900', '1', '0', '0.0000', '0', '', '1', '2', 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'en-US,en;q=0.8', '2015-09-25 17:25:33', '2015-09-25 17:25:35');

-- ----------------------------
-- Table structure for `oc_order_custom_field`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_custom_field`;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_custom_field
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_history
-- ----------------------------
INSERT INTO `oc_order_history` VALUES ('1', '1', '1', '0', '', '2015-09-25 17:25:35');

-- ----------------------------
-- Table structure for `oc_order_option`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_option
-- ----------------------------
INSERT INTO `oc_order_option` VALUES ('1', '1', '6', '226', '15', 'Select', 'Red', 'select');

-- ----------------------------
-- Table structure for `oc_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_product
-- ----------------------------
INSERT INTO `oc_order_product` VALUES ('1', '1', '43', 'Bata Women\'s Fashion Sandals', 'Product 16', '1', '500.0000', '500.0000', '0.0000', '600');
INSERT INTO `oc_order_product` VALUES ('2', '1', '31', 'Alessia74 Handbag', 'Product 4', '1', '80.0000', '80.0000', '0.0000', '0');
INSERT INTO `oc_order_product` VALUES ('3', '1', '34', ' Vanca Women\'s Top', 'Product 7', '1', '100.0000', '100.0000', '0.0000', '0');
INSERT INTO `oc_order_product` VALUES ('4', '1', '28', 'HTC Touch HD', 'Product 1', '1', '100.0000', '100.0000', '0.0000', '400');
INSERT INTO `oc_order_product` VALUES ('5', '1', '29', 'Butterflies Women\'s Handbag', 'Product 2', '1', '279.9900', '279.9900', '0.0000', '0');
INSERT INTO `oc_order_product` VALUES ('6', '1', '30', 'Canon EOS 5D', 'Product 3', '1', '80.0000', '80.0000', '0.0000', '200');

-- ----------------------------
-- Table structure for `oc_order_recurring`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_recurring_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_recurring_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_status`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_status
-- ----------------------------
INSERT INTO `oc_order_status` VALUES ('2', '1', 'Processing');
INSERT INTO `oc_order_status` VALUES ('3', '1', 'Shipped');
INSERT INTO `oc_order_status` VALUES ('7', '1', 'Canceled');
INSERT INTO `oc_order_status` VALUES ('5', '1', 'Complete');
INSERT INTO `oc_order_status` VALUES ('8', '1', 'Denied');
INSERT INTO `oc_order_status` VALUES ('9', '1', 'Canceled Reversal');
INSERT INTO `oc_order_status` VALUES ('10', '1', 'Failed');
INSERT INTO `oc_order_status` VALUES ('11', '1', 'Refunded');
INSERT INTO `oc_order_status` VALUES ('12', '1', 'Reversed');
INSERT INTO `oc_order_status` VALUES ('13', '1', 'Chargeback');
INSERT INTO `oc_order_status` VALUES ('1', '1', 'Pending');
INSERT INTO `oc_order_status` VALUES ('16', '1', 'Voided');
INSERT INTO `oc_order_status` VALUES ('15', '1', 'Processed');
INSERT INTO `oc_order_status` VALUES ('14', '1', 'Expired');
INSERT INTO `oc_order_status` VALUES ('2', '2', 'Processing');
INSERT INTO `oc_order_status` VALUES ('3', '2', 'Shipped');
INSERT INTO `oc_order_status` VALUES ('7', '2', 'Canceled');
INSERT INTO `oc_order_status` VALUES ('5', '2', 'Complete');
INSERT INTO `oc_order_status` VALUES ('8', '2', 'Denied');
INSERT INTO `oc_order_status` VALUES ('9', '2', 'Canceled Reversal');
INSERT INTO `oc_order_status` VALUES ('10', '2', 'Failed');
INSERT INTO `oc_order_status` VALUES ('11', '2', 'Refunded');
INSERT INTO `oc_order_status` VALUES ('12', '2', 'Reversed');
INSERT INTO `oc_order_status` VALUES ('13', '2', 'Chargeback');
INSERT INTO `oc_order_status` VALUES ('1', '2', 'Pending');
INSERT INTO `oc_order_status` VALUES ('16', '2', 'Voided');
INSERT INTO `oc_order_status` VALUES ('15', '2', 'Processed');
INSERT INTO `oc_order_status` VALUES ('14', '2', 'Expired');

-- ----------------------------
-- Table structure for `oc_order_total`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_total
-- ----------------------------
INSERT INTO `oc_order_total` VALUES ('1', '1', 'sub_total', 'Sub-Total', '1139.9900', '1');
INSERT INTO `oc_order_total` VALUES ('2', '1', 'shipping', 'Flat Shipping Rate', '5.0000', '3');
INSERT INTO `oc_order_total` VALUES ('3', '1', 'total', 'Total', '1144.9900', '9');

-- ----------------------------
-- Table structure for `oc_order_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product
-- ----------------------------
INSERT INTO `oc_product` VALUES ('28', 'Product 1', '', '', '', '', '', '', '', '939', '7', 'catalog/p12.jpg', '5', '1', '100.0000', '200', '9', '2009-02-03', '146.40000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 16:06:50', '2015-05-20 10:42:16');
INSERT INTO `oc_product` VALUES ('29', 'Product 2', '', '', '', '', '', '', '', '999', '6', 'catalog/p50.jpg', '6', '1', '279.9900', '0', '9', '2009-02-03', '133.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '0', '2009-02-03 16:42:17', '2015-05-20 10:37:24');
INSERT INTO `oc_product` VALUES ('30', 'Product 3', '', '', '', '', '', '', '', '7', '6', 'catalog/p10.jpg', '9', '1', '100.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 16:59:00', '2015-05-20 10:38:19');
INSERT INTO `oc_product` VALUES ('31', 'Product 4', '', '', '', '', '', '', '', '1000', '6', 'catalog/p52.jpg', '0', '1', '80.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '3', '1', '1', '0', '1', '0', '2009-02-03 17:00:10', '2015-05-20 10:29:52');
INSERT INTO `oc_product` VALUES ('32', 'Product 5', '', '', '', '', '', '', '', '999', '6', 'catalog/p29.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 17:07:26', '2015-05-20 10:56:01');
INSERT INTO `oc_product` VALUES ('33', 'Product 6', '', '', '', '', '', '', '', '1000', '6', 'catalog/p18.jpg', '0', '1', '200.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 17:08:31', '2015-05-19 17:49:33');
INSERT INTO `oc_product` VALUES ('34', 'Product 7', '', '', '', '', '', '', '', '1000', '6', 'catalog/p3.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '1', '2009-02-03 18:07:54', '2015-05-20 10:25:38');
INSERT INTO `oc_product` VALUES ('35', 'Product 8', '', '', '', '', '', '', '', '1000', '5', 'catalog/p4.jpg', '0', '0', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 18:08:31', '2015-05-20 10:34:35');
INSERT INTO `oc_product` VALUES ('36', 'Product 9', '', '', '', '', '', '', '', '994', '6', 'catalog/p16.jpg', '8', '0', '100.0000', '100', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 18:09:19', '2015-05-19 17:50:59');
INSERT INTO `oc_product` VALUES ('40', 'product 11', '', '', '', '', '', '', '', '970', '5', 'catalog/p48.jpg', '8', '1', '101.0000', '0', '9', '2009-02-03', '10.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '1', '2009-02-03 21:07:12', '2015-05-20 10:40:04');
INSERT INTO `oc_product` VALUES ('41', 'Product 14', '', '', '', '', '', '', '', '977', '5', 'catalog/p3.jpg', '8', '1', '100.0000', '0', '9', '2009-02-03', '5.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '0', '1', '0', '2009-02-03 21:07:26', '2015-05-20 10:45:09');
INSERT INTO `oc_product` VALUES ('42', 'Product 15', '', '', '', '', '', '', '', '990', '5', 'catalog/p1.jpg', '8', '1', '100.0000', '400', '9', '2009-02-04', '12.50000000', '1', '1.00000000', '2.00000000', '3.00000000', '1', '1', '2', '0', '1', '0', '2009-02-03 21:07:37', '2015-05-20 10:32:47');
INSERT INTO `oc_product` VALUES ('43', 'Product 16', '', '', '', '', '', '', '', '929', '5', 'catalog/p69.jpg', '8', '0', '500.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:07:49', '2015-05-20 10:35:38');
INSERT INTO `oc_product` VALUES ('44', 'Product 17', '', '', '', '', '', '', '', '1000', '5', 'catalog/p28.jpg', '8', '1', '1000.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:08:00', '2015-05-20 10:38:59');
INSERT INTO `oc_product` VALUES ('45', 'Product 18', '', '', '', '', '', '', '', '998', '5', 'catalog/p30.jpg', '8', '1', '2000.0000', '0', '0', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:08:17', '2015-05-20 10:46:36');
INSERT INTO `oc_product` VALUES ('46', 'Product 19', '', '', '', '', '', '', '', '1000', '5', 'catalog/p6.jpg', '10', '1', '1000.0000', '0', '9', '2009-02-03', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-03 21:08:29', '2015-05-20 10:50:54');
INSERT INTO `oc_product` VALUES ('47', 'Product 21', '', '', '', '', '', '', '', '1000', '5', 'catalog/p11.jpg', '7', '1', '100.0000', '400', '9', '2009-02-03', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '0', '1', '0', '1', '0', '2009-02-03 21:08:40', '2015-05-20 10:40:55');
INSERT INTO `oc_product` VALUES ('48', 'product 20', 'test 1', '', '', '', '', '', 'test 2', '995', '5', 'catalog/p19.jpg', '8', '1', '100.0000', '0', '9', '2009-02-08', '1.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '2', '1', '1', '0', '1', '0', '2009-02-08 17:21:51', '2015-05-20 10:48:43');
INSERT INTO `oc_product` VALUES ('49', 'SAM1', '', '', '', '', '', '', '', '0', '8', 'catalog/p14.jpg', '0', '1', '199.9900', '0', '9', '2011-04-25', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2011-04-26 08:57:34', '2015-05-20 10:47:41');

-- ----------------------------
-- Table structure for `oc_product_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_attribute
-- ----------------------------
INSERT INTO `oc_product_attribute` VALUES ('43', '4', '1', '8gb');
INSERT INTO `oc_product_attribute` VALUES ('47', '2', '1', '4');
INSERT INTO `oc_product_attribute` VALUES ('42', '3', '1', '100mhz');
INSERT INTO `oc_product_attribute` VALUES ('47', '4', '1', '16GB');
INSERT INTO `oc_product_attribute` VALUES ('43', '2', '1', '1');
INSERT INTO `oc_product_attribute` VALUES ('43', '4', '2', '8gb');
INSERT INTO `oc_product_attribute` VALUES ('47', '2', '2', '4');
INSERT INTO `oc_product_attribute` VALUES ('42', '3', '2', '100mhz');
INSERT INTO `oc_product_attribute` VALUES ('47', '4', '2', '16GB');
INSERT INTO `oc_product_attribute` VALUES ('43', '2', '2', '1');

-- ----------------------------
-- Table structure for `oc_product_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_description
-- ----------------------------
INSERT INTO `oc_product_description` VALUES ('40', '1', 'Fastrack Modern Wallet ', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'Fastrack Black Mens Wallet ', '', '');
INSERT INTO `oc_product_description` VALUES ('28', '1', 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Canon\'s press material', '', '');
INSERT INTO `oc_product_description` VALUES ('45', '1', 'Polo T-Shirt for Men ', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Polo T-Shirt for Men ', '', '');
INSERT INTO `oc_product_description` VALUES ('36', '1', 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Long Sleeve Top', '', '');
INSERT INTO `oc_product_description` VALUES ('46', '1', 'Women\'s Cotton Shirt', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel\'s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Women\'s Cotton Shirt', '', '');
INSERT INTO `oc_product_description` VALUES ('47', '1', 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office&lt;/p&gt;\r\n', '', 'Canon\'s press material', '', '');
INSERT INTO `oc_product_description` VALUES ('41', '1', 'Moda Women\'s Slim Fit ', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'Moda Women\'s Slim Fit ', '', '');
INSERT INTO `oc_product_description` VALUES ('33', '1', 'Long Sleeve Top', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;\r\n', '', 'Long Sleeve Top', '', '');
INSERT INTO `oc_product_description` VALUES ('34', '1', ' Vanca Women\'s Top', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', ' Vanca Women\'s Top', '', '');
INSERT INTO `oc_product_description` VALUES ('31', '1', 'Alessia74 Handbag', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon\'s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon\'s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera\'s new features. The D300 features a new 51-point autofocus system with Nikon\'s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera\'s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Alessia74 Handbag', '', '');
INSERT INTO `oc_product_description` VALUES ('49', '1', 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', '');
INSERT INTO `oc_product_description` VALUES ('42', '1', 'American Crew Men\'s Comfort', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'American Crew Men\'s Comfort', '', '');
INSERT INTO `oc_product_description` VALUES ('30', '1', 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'Canon\'s press material', '', '');
INSERT INTO `oc_product_description` VALUES ('48', '1', 'W for Woman Top', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'W for Woman Top', '', '');
INSERT INTO `oc_product_description` VALUES ('32', '1', 'Zink London Shirt', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', 'Zink London Shirt', '', '');
INSERT INTO `oc_product_description` VALUES ('43', '1', 'Bata Women\'s Fashion Sandals', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Bata Women\'s Fashion Sandals', '', '');
INSERT INTO `oc_product_description` VALUES ('44', '1', 'Clifton Mens Black Shorts', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'Clifton Mens Black Shorts', '', '');
INSERT INTO `oc_product_description` VALUES ('29', '1', 'Butterflies Women\'s Handbag', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Butterflies Women\'s Handbag', '', '');
INSERT INTO `oc_product_description` VALUES ('35', '1', 'American Crew Men\'s Comfort Fit', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'American Crew Men\'s Comfort Fit', '', '');
INSERT INTO `oc_product_description` VALUES ('40', '2', 'Fastrack Modern Wallet ', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('28', '2', 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('45', '2', 'Polo T-Shirt for Men ', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('36', '2', 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('46', '2', 'Women\'s Cotton Shirt', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel\'s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('47', '2', 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('41', '2', 'Moda Women\'s Slim Fit ', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('33', '2', 'Long Sleeve Top', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('34', '2', ' Vanca Women\'s Top', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('31', '2', 'Alessia74 Handbag', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon\'s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon\'s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera\'s new features. The D300 features a new 51-point autofocus system with Nikon\'s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera\'s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('49', '2', 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('42', '2', 'American Crew Men\'s Comfort', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('30', '2', 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('48', '2', 'W for Woman Top', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('32', '2', 'Zink London Shirt', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('43', '2', 'Bata Women\'s Fashion Sandals', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('44', '2', 'Clifton Mens Black Shorts', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('29', '2', 'Butterflies Women\'s Handbag', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` VALUES ('35', '2', 'American Crew Men\'s Comfort Fit', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', '', '', '');

-- ----------------------------
-- Table structure for `oc_product_discount`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=456 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_discount
-- ----------------------------
INSERT INTO `oc_product_discount` VALUES ('455', '42', '1', '30', '1', '66.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_discount` VALUES ('454', '42', '1', '20', '1', '77.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_discount` VALUES ('453', '42', '1', '10', '1', '88.0000', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for `oc_product_filter`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_filter
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_image`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2541 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_image
-- ----------------------------
INSERT INTO `oc_product_image` VALUES ('2480', '30', 'catalog/p11.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2497', '47', 'catalog/p4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2500', '28', 'catalog/p15.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2508', '41', 'catalog/p6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2524', '48', 'catalog/p18.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2404', '36', 'catalog/p12.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2403', '36', 'catalog/p15.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2449', '34', 'catalog/p6.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2448', '34', 'catalog/p19.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2540', '32', 'catalog/p28.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2539', '32', 'catalog/p1.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2538', '32', 'catalog/p30.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2475', '43', 'catalog/p61.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2474', '43', 'catalog/p62.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2483', '44', 'catalog/p1.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2482', '44', 'catalog/p30.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2514', '45', 'catalog/p1.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2513', '45', 'catalog/p2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2457', '31', 'catalog/p49.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2456', '31', 'catalog/p50.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2478', '29', 'catalog/p52.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2534', '46', 'catalog/p5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2533', '46', 'catalog/p11.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2523', '48', 'catalog/p5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2522', '48', 'catalog/p4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2487', '40', 'catalog/p52.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2486', '40', 'catalog/p51.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2479', '30', 'catalog/p17.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2496', '47', 'catalog/p19.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2499', '28', 'catalog/p13.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2507', '41', 'catalog/p4.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2485', '40', 'catalog/p50.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2484', '40', 'catalog/p49.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2521', '48', 'catalog/p8.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2402', '36', 'catalog/p14.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2401', '36', 'catalog/p13.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2447', '34', 'catalog/p17.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2446', '34', 'catalog/p11.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2537', '32', 'catalog/p7.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2536', '32', 'catalog/p19.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2535', '32', 'catalog/p18.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2473', '43', 'catalog/p64.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2472', '43', 'catalog/p69.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2481', '44', 'catalog/p2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2512', '45', 'catalog/p28.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2455', '31', 'catalog/p51.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2454', '31', 'catalog/p48.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2477', '29', 'catalog/p49.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2532', '46', 'catalog/p9.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2531', '46', 'catalog/p8.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2520', '49', 'catalog/p12.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2519', '49', 'catalog/p16.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2518', '49', 'catalog/p15.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2517', '49', 'catalog/p13.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2516', '49', 'catalog/p21.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2515', '49', 'catalog/p22.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2467', '42', 'catalog/p28.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2466', '42', 'catalog/p29.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2465', '42', 'catalog/p2.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2464', '42', 'catalog/p28.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2463', '42', 'catalog/p1.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2495', '47', 'catalog/p18.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2494', '47', 'catalog/p10.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2498', '28', 'catalog/p14.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2506', '41', 'catalog/p8.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2505', '41', 'catalog/p9.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2530', '46', 'catalog/p11.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2398', '33', 'catalog/p10.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2399', '33', 'catalog/p19.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2400', '33', 'catalog/p5.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2476', '29', 'catalog/p48.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2471', '35', 'catalog/p19.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2470', '35', 'catalog/p18.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2469', '35', 'catalog/p11.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2468', '35', 'catalog/p10.jpg', '0');
INSERT INTO `oc_product_image` VALUES ('2493', '47', 'catalog/p17.jpg', '0');

-- ----------------------------
-- Table structure for `oc_product_option`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option
-- ----------------------------
INSERT INTO `oc_product_option` VALUES ('224', '35', '11', '', '1');
INSERT INTO `oc_product_option` VALUES ('225', '47', '12', '2011-04-22', '1');
INSERT INTO `oc_product_option` VALUES ('222', '42', '7', '', '1');
INSERT INTO `oc_product_option` VALUES ('219', '42', '8', '2011-02-20', '1');
INSERT INTO `oc_product_option` VALUES ('208', '42', '4', 'test', '1');
INSERT INTO `oc_product_option` VALUES ('218', '42', '1', '', '1');
INSERT INTO `oc_product_option` VALUES ('217', '42', '5', '', '1');
INSERT INTO `oc_product_option` VALUES ('226', '30', '5', '', '1');
INSERT INTO `oc_product_option` VALUES ('209', '42', '6', '', '1');
INSERT INTO `oc_product_option` VALUES ('223', '42', '2', '', '1');
INSERT INTO `oc_product_option` VALUES ('220', '42', '10', '2011-02-20 22:25', '1');
INSERT INTO `oc_product_option` VALUES ('221', '42', '9', '22:25', '1');

-- ----------------------------
-- Table structure for `oc_product_option_value`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option_value
-- ----------------------------
INSERT INTO `oc_product_option_value` VALUES ('7', '218', '42', '1', '43', '300', '1', '30.0000', '+', '3', '+', '30.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('5', '218', '42', '1', '32', '96', '1', '10.0000', '+', '1', '+', '10.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('1', '217', '42', '5', '41', '100', '0', '1.0000', '+', '0', '+', '1.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('6', '218', '42', '1', '31', '146', '1', '20.0000', '+', '2', '-', '20.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('2', '217', '42', '5', '42', '200', '1', '2.0000', '+', '0', '+', '2.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('4', '217', '42', '5', '39', '92', '1', '4.0000', '+', '0', '+', '4.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('11', '223', '42', '2', '45', '3998', '1', '40.0000', '+', '0', '+', '40.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('13', '224', '35', '11', '47', '10', '1', '10.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('14', '224', '35', '11', '48', '15', '1', '15.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('16', '226', '30', '5', '40', '5', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('15', '226', '30', '5', '39', '2', '1', '0.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('3', '217', '42', '5', '40', '300', '0', '3.0000', '+', '0', '+', '3.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('10', '223', '42', '2', '44', '2696', '1', '30.0000', '+', '0', '+', '30.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('8', '223', '42', '2', '23', '48', '1', '10.0000', '+', '0', '+', '10.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('12', '224', '35', '11', '46', '0', '1', '5.0000', '+', '0', '+', '0.00000000', '+');
INSERT INTO `oc_product_option_value` VALUES ('9', '223', '42', '2', '24', '194', '1', '20.0000', '+', '0', '+', '20.00000000', '+');

-- ----------------------------
-- Table structure for `oc_product_recurring`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_related`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_related
-- ----------------------------
INSERT INTO `oc_product_related` VALUES ('40', '42');
INSERT INTO `oc_product_related` VALUES ('41', '42');
INSERT INTO `oc_product_related` VALUES ('42', '40');
INSERT INTO `oc_product_related` VALUES ('42', '41');

-- ----------------------------
-- Table structure for `oc_product_reward`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=567 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_reward
-- ----------------------------
INSERT INTO `oc_product_reward` VALUES ('557', '42', '1', '100');
INSERT INTO `oc_product_reward` VALUES ('562', '47', '1', '300');
INSERT INTO `oc_product_reward` VALUES ('563', '28', '1', '400');
INSERT INTO `oc_product_reward` VALUES ('558', '43', '1', '600');
INSERT INTO `oc_product_reward` VALUES ('559', '30', '1', '200');
INSERT INTO `oc_product_reward` VALUES ('560', '44', '1', '700');
INSERT INTO `oc_product_reward` VALUES ('565', '45', '1', '800');
INSERT INTO `oc_product_reward` VALUES ('566', '49', '1', '1000');

-- ----------------------------
-- Table structure for `oc_product_special`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=449 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_special
-- ----------------------------
INSERT INTO `oc_product_special` VALUES ('446', '42', '1', '1', '90.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('448', '30', '1', '2', '90.0000', '0000-00-00', '0000-00-00');
INSERT INTO `oc_product_special` VALUES ('447', '30', '1', '1', '80.0000', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for `oc_product_to_category`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_category
-- ----------------------------
INSERT INTO `oc_product_to_category` VALUES ('28', '17');
INSERT INTO `oc_product_to_category` VALUES ('28', '20');
INSERT INTO `oc_product_to_category` VALUES ('28', '25');
INSERT INTO `oc_product_to_category` VALUES ('28', '29');
INSERT INTO `oc_product_to_category` VALUES ('28', '30');
INSERT INTO `oc_product_to_category` VALUES ('28', '32');
INSERT INTO `oc_product_to_category` VALUES ('28', '57');
INSERT INTO `oc_product_to_category` VALUES ('28', '65');
INSERT INTO `oc_product_to_category` VALUES ('28', '69');
INSERT INTO `oc_product_to_category` VALUES ('28', '75');
INSERT INTO `oc_product_to_category` VALUES ('28', '81');
INSERT INTO `oc_product_to_category` VALUES ('28', '90');
INSERT INTO `oc_product_to_category` VALUES ('28', '110');
INSERT INTO `oc_product_to_category` VALUES ('28', '126');
INSERT INTO `oc_product_to_category` VALUES ('28', '142');
INSERT INTO `oc_product_to_category` VALUES ('28', '144');
INSERT INTO `oc_product_to_category` VALUES ('28', '151');
INSERT INTO `oc_product_to_category` VALUES ('28', '152');
INSERT INTO `oc_product_to_category` VALUES ('28', '155');
INSERT INTO `oc_product_to_category` VALUES ('29', '17');
INSERT INTO `oc_product_to_category` VALUES ('29', '18');
INSERT INTO `oc_product_to_category` VALUES ('29', '20');
INSERT INTO `oc_product_to_category` VALUES ('29', '25');
INSERT INTO `oc_product_to_category` VALUES ('29', '29');
INSERT INTO `oc_product_to_category` VALUES ('29', '57');
INSERT INTO `oc_product_to_category` VALUES ('29', '60');
INSERT INTO `oc_product_to_category` VALUES ('29', '61');
INSERT INTO `oc_product_to_category` VALUES ('29', '65');
INSERT INTO `oc_product_to_category` VALUES ('29', '81');
INSERT INTO `oc_product_to_category` VALUES ('29', '86');
INSERT INTO `oc_product_to_category` VALUES ('29', '97');
INSERT INTO `oc_product_to_category` VALUES ('29', '110');
INSERT INTO `oc_product_to_category` VALUES ('29', '124');
INSERT INTO `oc_product_to_category` VALUES ('29', '126');
INSERT INTO `oc_product_to_category` VALUES ('29', '144');
INSERT INTO `oc_product_to_category` VALUES ('29', '155');
INSERT INTO `oc_product_to_category` VALUES ('29', '156');
INSERT INTO `oc_product_to_category` VALUES ('30', '17');
INSERT INTO `oc_product_to_category` VALUES ('30', '18');
INSERT INTO `oc_product_to_category` VALUES ('30', '20');
INSERT INTO `oc_product_to_category` VALUES ('30', '57');
INSERT INTO `oc_product_to_category` VALUES ('30', '75');
INSERT INTO `oc_product_to_category` VALUES ('30', '86');
INSERT INTO `oc_product_to_category` VALUES ('30', '97');
INSERT INTO `oc_product_to_category` VALUES ('30', '107');
INSERT INTO `oc_product_to_category` VALUES ('30', '137');
INSERT INTO `oc_product_to_category` VALUES ('30', '152');
INSERT INTO `oc_product_to_category` VALUES ('30', '154');
INSERT INTO `oc_product_to_category` VALUES ('30', '155');
INSERT INTO `oc_product_to_category` VALUES ('30', '156');
INSERT INTO `oc_product_to_category` VALUES ('31', '17');
INSERT INTO `oc_product_to_category` VALUES ('31', '18');
INSERT INTO `oc_product_to_category` VALUES ('31', '20');
INSERT INTO `oc_product_to_category` VALUES ('31', '25');
INSERT INTO `oc_product_to_category` VALUES ('31', '57');
INSERT INTO `oc_product_to_category` VALUES ('31', '65');
INSERT INTO `oc_product_to_category` VALUES ('31', '81');
INSERT INTO `oc_product_to_category` VALUES ('31', '90');
INSERT INTO `oc_product_to_category` VALUES ('32', '17');
INSERT INTO `oc_product_to_category` VALUES ('32', '18');
INSERT INTO `oc_product_to_category` VALUES ('32', '20');
INSERT INTO `oc_product_to_category` VALUES ('32', '25');
INSERT INTO `oc_product_to_category` VALUES ('32', '57');
INSERT INTO `oc_product_to_category` VALUES ('32', '61');
INSERT INTO `oc_product_to_category` VALUES ('32', '65');
INSERT INTO `oc_product_to_category` VALUES ('32', '76');
INSERT INTO `oc_product_to_category` VALUES ('32', '79');
INSERT INTO `oc_product_to_category` VALUES ('32', '84');
INSERT INTO `oc_product_to_category` VALUES ('32', '86');
INSERT INTO `oc_product_to_category` VALUES ('32', '88');
INSERT INTO `oc_product_to_category` VALUES ('32', '95');
INSERT INTO `oc_product_to_category` VALUES ('32', '97');
INSERT INTO `oc_product_to_category` VALUES ('32', '107');
INSERT INTO `oc_product_to_category` VALUES ('32', '124');
INSERT INTO `oc_product_to_category` VALUES ('32', '126');
INSERT INTO `oc_product_to_category` VALUES ('32', '132');
INSERT INTO `oc_product_to_category` VALUES ('32', '145');
INSERT INTO `oc_product_to_category` VALUES ('32', '152');
INSERT INTO `oc_product_to_category` VALUES ('32', '154');
INSERT INTO `oc_product_to_category` VALUES ('32', '155');
INSERT INTO `oc_product_to_category` VALUES ('32', '156');
INSERT INTO `oc_product_to_category` VALUES ('33', '20');
INSERT INTO `oc_product_to_category` VALUES ('33', '28');
INSERT INTO `oc_product_to_category` VALUES ('34', '17');
INSERT INTO `oc_product_to_category` VALUES ('34', '18');
INSERT INTO `oc_product_to_category` VALUES ('34', '20');
INSERT INTO `oc_product_to_category` VALUES ('34', '25');
INSERT INTO `oc_product_to_category` VALUES ('34', '29');
INSERT INTO `oc_product_to_category` VALUES ('34', '57');
INSERT INTO `oc_product_to_category` VALUES ('34', '61');
INSERT INTO `oc_product_to_category` VALUES ('34', '65');
INSERT INTO `oc_product_to_category` VALUES ('34', '124');
INSERT INTO `oc_product_to_category` VALUES ('34', '126');
INSERT INTO `oc_product_to_category` VALUES ('34', '128');
INSERT INTO `oc_product_to_category` VALUES ('34', '152');
INSERT INTO `oc_product_to_category` VALUES ('35', '17');
INSERT INTO `oc_product_to_category` VALUES ('35', '18');
INSERT INTO `oc_product_to_category` VALUES ('35', '20');
INSERT INTO `oc_product_to_category` VALUES ('35', '25');
INSERT INTO `oc_product_to_category` VALUES ('35', '57');
INSERT INTO `oc_product_to_category` VALUES ('35', '60');
INSERT INTO `oc_product_to_category` VALUES ('35', '61');
INSERT INTO `oc_product_to_category` VALUES ('35', '65');
INSERT INTO `oc_product_to_category` VALUES ('35', '124');
INSERT INTO `oc_product_to_category` VALUES ('35', '126');
INSERT INTO `oc_product_to_category` VALUES ('35', '128');
INSERT INTO `oc_product_to_category` VALUES ('35', '136');
INSERT INTO `oc_product_to_category` VALUES ('35', '143');
INSERT INTO `oc_product_to_category` VALUES ('35', '152');
INSERT INTO `oc_product_to_category` VALUES ('35', '159');
INSERT INTO `oc_product_to_category` VALUES ('40', '17');
INSERT INTO `oc_product_to_category` VALUES ('40', '18');
INSERT INTO `oc_product_to_category` VALUES ('40', '20');
INSERT INTO `oc_product_to_category` VALUES ('40', '25');
INSERT INTO `oc_product_to_category` VALUES ('40', '29');
INSERT INTO `oc_product_to_category` VALUES ('40', '32');
INSERT INTO `oc_product_to_category` VALUES ('40', '57');
INSERT INTO `oc_product_to_category` VALUES ('40', '61');
INSERT INTO `oc_product_to_category` VALUES ('40', '65');
INSERT INTO `oc_product_to_category` VALUES ('40', '126');
INSERT INTO `oc_product_to_category` VALUES ('40', '136');
INSERT INTO `oc_product_to_category` VALUES ('40', '143');
INSERT INTO `oc_product_to_category` VALUES ('40', '152');
INSERT INTO `oc_product_to_category` VALUES ('40', '155');
INSERT INTO `oc_product_to_category` VALUES ('40', '156');
INSERT INTO `oc_product_to_category` VALUES ('40', '159');
INSERT INTO `oc_product_to_category` VALUES ('41', '17');
INSERT INTO `oc_product_to_category` VALUES ('41', '18');
INSERT INTO `oc_product_to_category` VALUES ('41', '20');
INSERT INTO `oc_product_to_category` VALUES ('41', '25');
INSERT INTO `oc_product_to_category` VALUES ('41', '27');
INSERT INTO `oc_product_to_category` VALUES ('41', '29');
INSERT INTO `oc_product_to_category` VALUES ('41', '57');
INSERT INTO `oc_product_to_category` VALUES ('41', '61');
INSERT INTO `oc_product_to_category` VALUES ('41', '65');
INSERT INTO `oc_product_to_category` VALUES ('41', '107');
INSERT INTO `oc_product_to_category` VALUES ('41', '109');
INSERT INTO `oc_product_to_category` VALUES ('41', '124');
INSERT INTO `oc_product_to_category` VALUES ('41', '126');
INSERT INTO `oc_product_to_category` VALUES ('41', '128');
INSERT INTO `oc_product_to_category` VALUES ('41', '134');
INSERT INTO `oc_product_to_category` VALUES ('41', '140');
INSERT INTO `oc_product_to_category` VALUES ('41', '144');
INSERT INTO `oc_product_to_category` VALUES ('41', '154');
INSERT INTO `oc_product_to_category` VALUES ('41', '155');
INSERT INTO `oc_product_to_category` VALUES ('41', '156');
INSERT INTO `oc_product_to_category` VALUES ('42', '17');
INSERT INTO `oc_product_to_category` VALUES ('42', '18');
INSERT INTO `oc_product_to_category` VALUES ('42', '20');
INSERT INTO `oc_product_to_category` VALUES ('42', '25');
INSERT INTO `oc_product_to_category` VALUES ('42', '28');
INSERT INTO `oc_product_to_category` VALUES ('42', '57');
INSERT INTO `oc_product_to_category` VALUES ('42', '81');
INSERT INTO `oc_product_to_category` VALUES ('42', '90');
INSERT INTO `oc_product_to_category` VALUES ('42', '107');
INSERT INTO `oc_product_to_category` VALUES ('42', '124');
INSERT INTO `oc_product_to_category` VALUES ('42', '126');
INSERT INTO `oc_product_to_category` VALUES ('42', '128');
INSERT INTO `oc_product_to_category` VALUES ('42', '136');
INSERT INTO `oc_product_to_category` VALUES ('42', '137');
INSERT INTO `oc_product_to_category` VALUES ('42', '141');
INSERT INTO `oc_product_to_category` VALUES ('42', '143');
INSERT INTO `oc_product_to_category` VALUES ('42', '152');
INSERT INTO `oc_product_to_category` VALUES ('42', '155');
INSERT INTO `oc_product_to_category` VALUES ('42', '156');
INSERT INTO `oc_product_to_category` VALUES ('43', '17');
INSERT INTO `oc_product_to_category` VALUES ('43', '18');
INSERT INTO `oc_product_to_category` VALUES ('43', '20');
INSERT INTO `oc_product_to_category` VALUES ('43', '25');
INSERT INTO `oc_product_to_category` VALUES ('43', '29');
INSERT INTO `oc_product_to_category` VALUES ('43', '57');
INSERT INTO `oc_product_to_category` VALUES ('43', '60');
INSERT INTO `oc_product_to_category` VALUES ('43', '61');
INSERT INTO `oc_product_to_category` VALUES ('43', '75');
INSERT INTO `oc_product_to_category` VALUES ('43', '86');
INSERT INTO `oc_product_to_category` VALUES ('43', '90');
INSERT INTO `oc_product_to_category` VALUES ('43', '124');
INSERT INTO `oc_product_to_category` VALUES ('43', '126');
INSERT INTO `oc_product_to_category` VALUES ('43', '155');
INSERT INTO `oc_product_to_category` VALUES ('44', '18');
INSERT INTO `oc_product_to_category` VALUES ('44', '20');
INSERT INTO `oc_product_to_category` VALUES ('44', '57');
INSERT INTO `oc_product_to_category` VALUES ('44', '86');
INSERT INTO `oc_product_to_category` VALUES ('44', '97');
INSERT INTO `oc_product_to_category` VALUES ('44', '124');
INSERT INTO `oc_product_to_category` VALUES ('44', '126');
INSERT INTO `oc_product_to_category` VALUES ('44', '128');
INSERT INTO `oc_product_to_category` VALUES ('44', '136');
INSERT INTO `oc_product_to_category` VALUES ('44', '141');
INSERT INTO `oc_product_to_category` VALUES ('44', '143');
INSERT INTO `oc_product_to_category` VALUES ('44', '152');
INSERT INTO `oc_product_to_category` VALUES ('45', '17');
INSERT INTO `oc_product_to_category` VALUES ('45', '18');
INSERT INTO `oc_product_to_category` VALUES ('45', '20');
INSERT INTO `oc_product_to_category` VALUES ('45', '25');
INSERT INTO `oc_product_to_category` VALUES ('45', '29');
INSERT INTO `oc_product_to_category` VALUES ('45', '30');
INSERT INTO `oc_product_to_category` VALUES ('45', '32');
INSERT INTO `oc_product_to_category` VALUES ('45', '57');
INSERT INTO `oc_product_to_category` VALUES ('45', '69');
INSERT INTO `oc_product_to_category` VALUES ('45', '75');
INSERT INTO `oc_product_to_category` VALUES ('45', '90');
INSERT INTO `oc_product_to_category` VALUES ('45', '97');
INSERT INTO `oc_product_to_category` VALUES ('45', '107');
INSERT INTO `oc_product_to_category` VALUES ('45', '126');
INSERT INTO `oc_product_to_category` VALUES ('45', '152');
INSERT INTO `oc_product_to_category` VALUES ('46', '17');
INSERT INTO `oc_product_to_category` VALUES ('46', '18');
INSERT INTO `oc_product_to_category` VALUES ('46', '20');
INSERT INTO `oc_product_to_category` VALUES ('46', '25');
INSERT INTO `oc_product_to_category` VALUES ('46', '29');
INSERT INTO `oc_product_to_category` VALUES ('46', '57');
INSERT INTO `oc_product_to_category` VALUES ('46', '76');
INSERT INTO `oc_product_to_category` VALUES ('46', '79');
INSERT INTO `oc_product_to_category` VALUES ('46', '88');
INSERT INTO `oc_product_to_category` VALUES ('46', '107');
INSERT INTO `oc_product_to_category` VALUES ('46', '120');
INSERT INTO `oc_product_to_category` VALUES ('46', '124');
INSERT INTO `oc_product_to_category` VALUES ('46', '136');
INSERT INTO `oc_product_to_category` VALUES ('46', '137');
INSERT INTO `oc_product_to_category` VALUES ('46', '141');
INSERT INTO `oc_product_to_category` VALUES ('46', '152');
INSERT INTO `oc_product_to_category` VALUES ('46', '154');
INSERT INTO `oc_product_to_category` VALUES ('46', '156');
INSERT INTO `oc_product_to_category` VALUES ('46', '159');
INSERT INTO `oc_product_to_category` VALUES ('47', '17');
INSERT INTO `oc_product_to_category` VALUES ('47', '18');
INSERT INTO `oc_product_to_category` VALUES ('47', '20');
INSERT INTO `oc_product_to_category` VALUES ('47', '29');
INSERT INTO `oc_product_to_category` VALUES ('47', '30');
INSERT INTO `oc_product_to_category` VALUES ('47', '32');
INSERT INTO `oc_product_to_category` VALUES ('47', '57');
INSERT INTO `oc_product_to_category` VALUES ('47', '61');
INSERT INTO `oc_product_to_category` VALUES ('47', '69');
INSERT INTO `oc_product_to_category` VALUES ('47', '124');
INSERT INTO `oc_product_to_category` VALUES ('47', '126');
INSERT INTO `oc_product_to_category` VALUES ('47', '152');
INSERT INTO `oc_product_to_category` VALUES ('47', '155');
INSERT INTO `oc_product_to_category` VALUES ('47', '156');
INSERT INTO `oc_product_to_category` VALUES ('48', '17');
INSERT INTO `oc_product_to_category` VALUES ('48', '18');
INSERT INTO `oc_product_to_category` VALUES ('48', '20');
INSERT INTO `oc_product_to_category` VALUES ('48', '25');
INSERT INTO `oc_product_to_category` VALUES ('48', '57');
INSERT INTO `oc_product_to_category` VALUES ('48', '61');
INSERT INTO `oc_product_to_category` VALUES ('48', '65');
INSERT INTO `oc_product_to_category` VALUES ('48', '76');
INSERT INTO `oc_product_to_category` VALUES ('48', '77');
INSERT INTO `oc_product_to_category` VALUES ('48', '79');
INSERT INTO `oc_product_to_category` VALUES ('48', '81');
INSERT INTO `oc_product_to_category` VALUES ('48', '86');
INSERT INTO `oc_product_to_category` VALUES ('48', '88');
INSERT INTO `oc_product_to_category` VALUES ('48', '104');
INSERT INTO `oc_product_to_category` VALUES ('48', '110');
INSERT INTO `oc_product_to_category` VALUES ('48', '114');
INSERT INTO `oc_product_to_category` VALUES ('48', '123');
INSERT INTO `oc_product_to_category` VALUES ('48', '142');
INSERT INTO `oc_product_to_category` VALUES ('48', '151');
INSERT INTO `oc_product_to_category` VALUES ('48', '152');
INSERT INTO `oc_product_to_category` VALUES ('48', '155');
INSERT INTO `oc_product_to_category` VALUES ('49', '17');
INSERT INTO `oc_product_to_category` VALUES ('49', '18');
INSERT INTO `oc_product_to_category` VALUES ('49', '20');
INSERT INTO `oc_product_to_category` VALUES ('49', '25');
INSERT INTO `oc_product_to_category` VALUES ('49', '57');
INSERT INTO `oc_product_to_category` VALUES ('49', '61');
INSERT INTO `oc_product_to_category` VALUES ('49', '65');
INSERT INTO `oc_product_to_category` VALUES ('49', '72');
INSERT INTO `oc_product_to_category` VALUES ('49', '75');
INSERT INTO `oc_product_to_category` VALUES ('49', '77');
INSERT INTO `oc_product_to_category` VALUES ('49', '81');
INSERT INTO `oc_product_to_category` VALUES ('49', '90');
INSERT INTO `oc_product_to_category` VALUES ('49', '95');
INSERT INTO `oc_product_to_category` VALUES ('49', '97');
INSERT INTO `oc_product_to_category` VALUES ('49', '109');
INSERT INTO `oc_product_to_category` VALUES ('49', '110');
INSERT INTO `oc_product_to_category` VALUES ('49', '114');
INSERT INTO `oc_product_to_category` VALUES ('49', '126');
INSERT INTO `oc_product_to_category` VALUES ('49', '144');

-- ----------------------------
-- Table structure for `oc_product_to_download`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_download
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_layout
-- ----------------------------
INSERT INTO `oc_product_to_layout` VALUES ('42', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('30', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('47', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('28', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('41', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('40', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('48', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('46', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('33', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('36', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('34', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('32', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('43', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('44', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('45', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('31', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('29', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('35', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('49', '0', '0');

-- ----------------------------
-- Table structure for `oc_product_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_store
-- ----------------------------
INSERT INTO `oc_product_to_store` VALUES ('28', '0');
INSERT INTO `oc_product_to_store` VALUES ('29', '0');
INSERT INTO `oc_product_to_store` VALUES ('30', '0');
INSERT INTO `oc_product_to_store` VALUES ('31', '0');
INSERT INTO `oc_product_to_store` VALUES ('32', '0');
INSERT INTO `oc_product_to_store` VALUES ('33', '0');
INSERT INTO `oc_product_to_store` VALUES ('34', '0');
INSERT INTO `oc_product_to_store` VALUES ('35', '0');
INSERT INTO `oc_product_to_store` VALUES ('36', '0');
INSERT INTO `oc_product_to_store` VALUES ('40', '0');
INSERT INTO `oc_product_to_store` VALUES ('41', '0');
INSERT INTO `oc_product_to_store` VALUES ('42', '0');
INSERT INTO `oc_product_to_store` VALUES ('43', '0');
INSERT INTO `oc_product_to_store` VALUES ('44', '0');
INSERT INTO `oc_product_to_store` VALUES ('45', '0');
INSERT INTO `oc_product_to_store` VALUES ('46', '0');
INSERT INTO `oc_product_to_store` VALUES ('47', '0');
INSERT INTO `oc_product_to_store` VALUES ('48', '0');
INSERT INTO `oc_product_to_store` VALUES ('49', '0');

-- ----------------------------
-- Table structure for `oc_recurring`
-- ----------------------------
DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_recurring_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_recurring_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_return`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_return_action`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_action
-- ----------------------------
INSERT INTO `oc_return_action` VALUES ('1', '1', 'Refunded');
INSERT INTO `oc_return_action` VALUES ('2', '1', 'Credit Issued');
INSERT INTO `oc_return_action` VALUES ('3', '1', 'Replacement Sent');
INSERT INTO `oc_return_action` VALUES ('1', '2', 'Refunded');
INSERT INTO `oc_return_action` VALUES ('2', '2', 'Credit Issued');
INSERT INTO `oc_return_action` VALUES ('3', '2', 'Replacement Sent');

-- ----------------------------
-- Table structure for `oc_return_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_return_reason`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_reason
-- ----------------------------
INSERT INTO `oc_return_reason` VALUES ('1', '1', 'Dead On Arrival');
INSERT INTO `oc_return_reason` VALUES ('2', '1', 'Received Wrong Item');
INSERT INTO `oc_return_reason` VALUES ('3', '1', 'Order Error');
INSERT INTO `oc_return_reason` VALUES ('4', '1', 'Faulty, please supply details');
INSERT INTO `oc_return_reason` VALUES ('5', '1', 'Other, please supply details');
INSERT INTO `oc_return_reason` VALUES ('1', '2', 'Dead On Arrival');
INSERT INTO `oc_return_reason` VALUES ('2', '2', 'Received Wrong Item');
INSERT INTO `oc_return_reason` VALUES ('3', '2', 'Order Error');
INSERT INTO `oc_return_reason` VALUES ('4', '2', 'Faulty, please supply details');
INSERT INTO `oc_return_reason` VALUES ('5', '2', 'Other, please supply details');

-- ----------------------------
-- Table structure for `oc_return_status`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_status
-- ----------------------------
INSERT INTO `oc_return_status` VALUES ('1', '1', 'Pending');
INSERT INTO `oc_return_status` VALUES ('3', '1', 'Complete');
INSERT INTO `oc_return_status` VALUES ('2', '1', 'Awaiting Products');
INSERT INTO `oc_return_status` VALUES ('1', '2', 'Pending');
INSERT INTO `oc_return_status` VALUES ('3', '2', 'Complete');
INSERT INTO `oc_return_status` VALUES ('2', '2', 'Awaiting Products');

-- ----------------------------
-- Table structure for `oc_review`
-- ----------------------------
DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_review
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_setting`
-- ----------------------------
DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1413 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_setting
-- ----------------------------
INSERT INTO `oc_setting` VALUES ('1', '0', 'shipping', 'shipping_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('2', '0', 'sub_total', 'sub_total_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('3', '0', 'sub_total', 'sub_total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('4', '0', 'tax', 'tax_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('5', '0', 'total', 'total_sort_order', '9', '0');
INSERT INTO `oc_setting` VALUES ('6', '0', 'total', 'total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('7', '0', 'tax', 'tax_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('8', '0', 'free_checkout', 'free_checkout_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('9', '0', 'cod', 'cod_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('10', '0', 'cod', 'cod_total', '0.01', '0');
INSERT INTO `oc_setting` VALUES ('11', '0', 'cod', 'cod_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('12', '0', 'cod', 'cod_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('13', '0', 'cod', 'cod_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('14', '0', 'shipping', 'shipping_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('15', '0', 'shipping', 'shipping_estimator', '1', '0');
INSERT INTO `oc_setting` VALUES ('27', '0', 'coupon', 'coupon_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('28', '0', 'coupon', 'coupon_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('34', '0', 'flat', 'flat_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('35', '0', 'flat', 'flat_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('36', '0', 'flat', 'flat_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('37', '0', 'flat', 'flat_tax_class_id', '9', '0');
INSERT INTO `oc_setting` VALUES ('41', '0', 'flat', 'flat_cost', '5.00', '0');
INSERT INTO `oc_setting` VALUES ('42', '0', 'credit', 'credit_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('43', '0', 'credit', 'credit_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('53', '0', 'reward', 'reward_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('54', '0', 'reward', 'reward_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('146', '0', 'category', 'category_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('158', '0', 'account', 'account_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('159', '0', 'affiliate', 'affiliate_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('1407', '0', 'config', 'config_error_filename', 'error.log', '0');
INSERT INTO `oc_setting` VALUES ('1408', '0', 'config', 'config_google_analytics', '', '0');
INSERT INTO `oc_setting` VALUES ('1409', '0', 'config', 'config_google_analytics_status', '0', '0');
INSERT INTO `oc_setting` VALUES ('1410', '0', 'config', 'config_google_captcha_public', '', '0');
INSERT INTO `oc_setting` VALUES ('1411', '0', 'config', 'config_google_captcha_secret', '', '0');
INSERT INTO `oc_setting` VALUES ('1412', '0', 'config', 'config_google_captcha_status', '0', '0');
INSERT INTO `oc_setting` VALUES ('94', '0', 'voucher', 'voucher_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('95', '0', 'voucher', 'voucher_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('103', '0', 'free_checkout', 'free_checkout_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('104', '0', 'free_checkout', 'free_checkout_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('1400', '0', 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', '0');
INSERT INTO `oc_setting` VALUES ('1401', '0', 'config', 'config_maintenance', '0', '0');
INSERT INTO `oc_setting` VALUES ('1402', '0', 'config', 'config_password', '1', '0');
INSERT INTO `oc_setting` VALUES ('1403', '0', 'config', 'config_encryption', '07af6177cd3bb8d5b011a19f9eecd2de', '0');
INSERT INTO `oc_setting` VALUES ('1404', '0', 'config', 'config_compression', '0', '0');
INSERT INTO `oc_setting` VALUES ('1405', '0', 'config', 'config_error_display', '1', '0');
INSERT INTO `oc_setting` VALUES ('1406', '0', 'config', 'config_error_log', '1', '0');
INSERT INTO `oc_setting` VALUES ('1399', '0', 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', '0');
INSERT INTO `oc_setting` VALUES ('1397', '0', 'config', 'config_seo_url', '0', '0');
INSERT INTO `oc_setting` VALUES ('1398', '0', 'config', 'config_file_max_size', '300000', '0');
INSERT INTO `oc_setting` VALUES ('1396', '0', 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', '0');
INSERT INTO `oc_setting` VALUES ('1395', '0', 'config', 'config_shared', '0', '0');
INSERT INTO `oc_setting` VALUES ('1392', '0', 'config', 'config_mail_smtp_timeout', '5', '0');
INSERT INTO `oc_setting` VALUES ('1393', '0', 'config', 'config_mail_alert', '', '0');
INSERT INTO `oc_setting` VALUES ('1394', '0', 'config', 'config_secure', '0', '0');
INSERT INTO `oc_setting` VALUES ('1391', '0', 'config', 'config_mail_smtp_port', '25', '0');
INSERT INTO `oc_setting` VALUES ('1390', '0', 'config', 'config_mail_smtp_password', '', '0');
INSERT INTO `oc_setting` VALUES ('1389', '0', 'config', 'config_mail_smtp_username', '', '0');
INSERT INTO `oc_setting` VALUES ('1388', '0', 'config', 'config_mail_smtp_hostname', '', '0');
INSERT INTO `oc_setting` VALUES ('1387', '0', 'config', 'config_mail_parameter', '', '0');
INSERT INTO `oc_setting` VALUES ('1386', '0', 'config', 'config_mail_protocol', 'mail', '0');
INSERT INTO `oc_setting` VALUES ('1385', '0', 'config', 'config_ftp_status', '0', '0');
INSERT INTO `oc_setting` VALUES ('1384', '0', 'config', 'config_ftp_root', '', '0');
INSERT INTO `oc_setting` VALUES ('1383', '0', 'config', 'config_ftp_password', '', '0');
INSERT INTO `oc_setting` VALUES ('1382', '0', 'config', 'config_ftp_username', '', '0');
INSERT INTO `oc_setting` VALUES ('1381', '0', 'config', 'config_ftp_port', '21', '0');
INSERT INTO `oc_setting` VALUES ('1378', '0', 'config', 'config_image_location_width', '268', '0');
INSERT INTO `oc_setting` VALUES ('1379', '0', 'config', 'config_image_location_height', '50', '0');
INSERT INTO `oc_setting` VALUES ('1380', '0', 'config', 'config_ftp_hostname', 'localhost', '0');
INSERT INTO `oc_setting` VALUES ('1376', '0', 'config', 'config_image_cart_width', '62', '0');
INSERT INTO `oc_setting` VALUES ('1377', '0', 'config', 'config_image_cart_height', '75', '0');
INSERT INTO `oc_setting` VALUES ('1375', '0', 'config', 'config_image_wishlist_height', '152', '0');
INSERT INTO `oc_setting` VALUES ('1373', '0', 'config', 'config_image_compare_height', '245', '0');
INSERT INTO `oc_setting` VALUES ('1374', '0', 'config', 'config_image_wishlist_width', '125', '0');
INSERT INTO `oc_setting` VALUES ('1372', '0', 'config', 'config_image_compare_width', '202', '0');
INSERT INTO `oc_setting` VALUES ('1370', '0', 'config', 'config_image_related_width', '700', '0');
INSERT INTO `oc_setting` VALUES ('1371', '0', 'config', 'config_image_related_height', '850', '0');
INSERT INTO `oc_setting` VALUES ('1369', '0', 'config', 'config_image_additional_height', '74', '0');
INSERT INTO `oc_setting` VALUES ('1368', '0', 'config', 'config_image_additional_width', '74', '0');
INSERT INTO `oc_setting` VALUES ('1367', '0', 'config', 'config_image_product_height', '850', '0');
INSERT INTO `oc_setting` VALUES ('1366', '0', 'config', 'config_image_product_width', '700', '0');
INSERT INTO `oc_setting` VALUES ('1364', '0', 'config', 'config_image_popup_width', '700', '0');
INSERT INTO `oc_setting` VALUES ('1365', '0', 'config', 'config_image_popup_height', '850', '0');
INSERT INTO `oc_setting` VALUES ('1363', '0', 'config', 'config_image_thumb_height', '228', '0');
INSERT INTO `oc_setting` VALUES ('1362', '0', 'config', 'config_image_thumb_width', '228', '0');
INSERT INTO `oc_setting` VALUES ('1361', '0', 'config', 'config_image_category_height', '320', '0');
INSERT INTO `oc_setting` VALUES ('1360', '0', 'config', 'config_image_category_width', '860', '0');
INSERT INTO `oc_setting` VALUES ('1359', '0', 'config', 'config_icon', 'catalog/cart.png', '0');
INSERT INTO `oc_setting` VALUES ('1358', '0', 'config', 'config_logo', 'catalog/logo.png', '0');
INSERT INTO `oc_setting` VALUES ('1357', '0', 'config', 'config_return_status_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('1356', '0', 'config', 'config_return_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('1355', '0', 'config', 'config_affiliate_mail', '0', '0');
INSERT INTO `oc_setting` VALUES ('1354', '0', 'config', 'config_affiliate_id', '4', '0');
INSERT INTO `oc_setting` VALUES ('1352', '0', 'config', 'config_affiliate_auto', '0', '0');
INSERT INTO `oc_setting` VALUES ('1353', '0', 'config', 'config_affiliate_commission', '5', '0');
INSERT INTO `oc_setting` VALUES ('1351', '0', 'config', 'config_affiliate_approval', '0', '0');
INSERT INTO `oc_setting` VALUES ('1350', '0', 'config', 'config_stock_checkout', '0', '0');
INSERT INTO `oc_setting` VALUES ('1349', '0', 'config', 'config_stock_warning', '0', '0');
INSERT INTO `oc_setting` VALUES ('1348', '0', 'config', 'config_stock_display', '0', '0');
INSERT INTO `oc_setting` VALUES ('1347', '0', 'config', 'config_order_mail', '0', '0');
INSERT INTO `oc_setting` VALUES ('1346', '0', 'config', 'config_complete_status', 'a:1:{i:0;s:1:\"5\";}', '1');
INSERT INTO `oc_setting` VALUES ('1345', '0', 'config', 'config_processing_status', 'a:1:{i:0;s:1:\"2\";}', '1');
INSERT INTO `oc_setting` VALUES ('1342', '0', 'config', 'config_checkout_guest', '1', '0');
INSERT INTO `oc_setting` VALUES ('1343', '0', 'config', 'config_checkout_id', '5', '0');
INSERT INTO `oc_setting` VALUES ('1344', '0', 'config', 'config_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('1340', '0', 'config', 'config_api_id', '2', '0');
INSERT INTO `oc_setting` VALUES ('1341', '0', 'config', 'config_cart_weight', '1', '0');
INSERT INTO `oc_setting` VALUES ('1339', '0', 'config', 'config_invoice_prefix', 'INV-2013-00', '0');
INSERT INTO `oc_setting` VALUES ('1338', '0', 'config', 'config_account_mail', '0', '0');
INSERT INTO `oc_setting` VALUES ('1336', '0', 'config', 'config_login_attempts', '5', '0');
INSERT INTO `oc_setting` VALUES ('1337', '0', 'config', 'config_account_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('518', '0', 'newslettersubscription', 'newslettersubscription_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('932', '0', 'magikblog_category', 'magikblog_category_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('931', '0', 'magikastra', 'magikastra_powerby', '© 2015 Magikcommerce. All Rights Reserved.', '0');
INSERT INTO `oc_setting` VALUES ('930', '0', 'magikastra', 'magikastra_youtube', 'https://plus.google.com/108548966199168316090/videos', '0');
INSERT INTO `oc_setting` VALUES ('922', '0', 'magikastra', 'magikastra_phone', '+1 800 123 1234', '0');
INSERT INTO `oc_setting` VALUES ('923', '0', 'magikastra', 'magikastra_email', 'support@magikcommerce.com', '0');
INSERT INTO `oc_setting` VALUES ('924', '0', 'magikastra', 'magikastra_fb', 'https://www.facebook.com/MagikCommerce', '0');
INSERT INTO `oc_setting` VALUES ('925', '0', 'magikastra', 'magikastra_twitter', 'https://twitter.com/qtwitt', '0');
INSERT INTO `oc_setting` VALUES ('928', '0', 'magikastra', 'magikastra_pinterest', 'https://www.pinterest.com/magikcommerce/', '0');
INSERT INTO `oc_setting` VALUES ('929', '0', 'magikastra', 'magikastra_linkedin', 'https://www.linkedin.com/company/magikcommerce', '0');
INSERT INTO `oc_setting` VALUES ('927', '0', 'magikastra', 'magikastra_rss', 'http://www.magikcommerce.com/blog/feed/', '0');
INSERT INTO `oc_setting` VALUES ('926', '0', 'magikastra', 'magikastra_gglplus', 'http://www.magikcommerce.com/', '0');
INSERT INTO `oc_setting` VALUES ('920', '0', 'magikastra', 'magikastra_fonttransform', '', '0');
INSERT INTO `oc_setting` VALUES ('921', '0', 'magikastra', 'magikastra_address', '123 Main Street, Anytown,  CA 12345 USA', '0');
INSERT INTO `oc_setting` VALUES ('919', '0', 'magikastra', 'magikastra_powerbycolor', 'cccccc', '0');
INSERT INTO `oc_setting` VALUES ('918', '0', 'magikastra', 'magikastra_powerbycolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('917', '0', 'magikastra', 'magikastra_footerlinkhovercolor', 'ffffff', '0');
INSERT INTO `oc_setting` VALUES ('916', '0', 'magikastra', 'magikastra_footerlinkhovercolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('915', '0', 'magikastra', 'magikastra_footerlinkcolor', 'aaaaaa', '0');
INSERT INTO `oc_setting` VALUES ('914', '0', 'magikastra', 'magikastra_footerlinkcolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('913', '0', 'magikastra', 'magikastra_footerbg', '3b4348', '0');
INSERT INTO `oc_setting` VALUES ('912', '0', 'magikastra', 'magikastra_footerbg_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('911', '0', 'magikastra', 'magikastra_newpricecolor', 'cf3341', '0');
INSERT INTO `oc_setting` VALUES ('910', '0', 'magikastra', 'magikastra_newpricecolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('909', '0', 'magikastra', 'magikastra_oldpricecolor', '777777', '0');
INSERT INTO `oc_setting` VALUES ('908', '0', 'magikastra', 'magikastra_oldpricecolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('907', '0', 'magikastra', 'magikastra_pricecolor', 'cf3341', '0');
INSERT INTO `oc_setting` VALUES ('906', '0', 'magikastra', 'magikastra_pricecolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('905', '0', 'magikastra', 'magikastra_buttonhovercolor', 'cf3341', '0');
INSERT INTO `oc_setting` VALUES ('904', '0', 'magikastra', 'magikastra_buttonhovercolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('903', '0', 'magikastra', 'magikastra_buttoncolor', '', '0');
INSERT INTO `oc_setting` VALUES ('902', '0', 'magikastra', 'magikastra_buttoncolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('901', '0', 'magikastra', 'magikastra_mmslinkshovercolor', '3b4348', '0');
INSERT INTO `oc_setting` VALUES ('900', '0', 'magikastra', 'magikastra_mmslinkshovercolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('899', '0', 'magikastra', 'magikastra_mmslinkscolor', '3b4348', '0');
INSERT INTO `oc_setting` VALUES ('898', '0', 'magikastra', 'magikastra_mmslinkscolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('881', '0', 'magikastra', 'magikastra_linkcolor', '333333', '0');
INSERT INTO `oc_setting` VALUES ('882', '0', 'magikastra', 'magikastra_linkhovercolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('883', '0', 'magikastra', 'magikastra_linkhovercolor', '23527c', '0');
INSERT INTO `oc_setting` VALUES ('884', '0', 'magikastra', 'magikastra_headerbg_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('885', '0', 'magikastra', 'magikastra_headerbg', '3b4348', '0');
INSERT INTO `oc_setting` VALUES ('886', '0', 'magikastra', 'magikastra_headerlinkcolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('887', '0', 'magikastra', 'magikastra_headerlinkcolor', 'aaaaaa', '0');
INSERT INTO `oc_setting` VALUES ('888', '0', 'magikastra', 'magikastra_headerlinkhovercolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('889', '0', 'magikastra', 'magikastra_headerlinkhovercolor', 'd12631', '0');
INSERT INTO `oc_setting` VALUES ('890', '0', 'magikastra', 'magikastra_headerclcolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('891', '0', 'magikastra', 'magikastra_headerclcolor', 'aaaaaa', '0');
INSERT INTO `oc_setting` VALUES ('892', '0', 'magikastra', 'magikastra_mmbgcolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('893', '0', 'magikastra', 'magikastra_mmbgcolor', 'ffffff', '0');
INSERT INTO `oc_setting` VALUES ('894', '0', 'magikastra', 'magikastra_mmlinkscolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('895', '0', 'magikastra', 'magikastra_mmlinkscolor', '777777', '0');
INSERT INTO `oc_setting` VALUES ('896', '0', 'magikastra', 'magikastra_mmlinkshovercolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('897', '0', 'magikastra', 'magikastra_mmlinkshovercolor', '333333', '0');
INSERT INTO `oc_setting` VALUES ('868', '0', 'magikastra', 'magikastra_product_ct', '1', '0');
INSERT INTO `oc_setting` VALUES ('869', '0', 'magikastra', 'magikastra_product_cttitle', 'Custom Tab 1', '0');
INSERT INTO `oc_setting` VALUES ('870', '0', 'magikastra', 'magikastra_product_ctcontent', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero. Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam erat mi, rutrum at sollicitudin rhoncus, ultricies posuere erat. Duis convallis, arcu nec aliquam consequat, purus felis vehicula felis, a dapibus enim lorem nec augue.', '0');
INSERT INTO `oc_setting` VALUES ('879', '0', 'magikastra', 'magikastra_fontcolor', '333333', '0');
INSERT INTO `oc_setting` VALUES ('880', '0', 'magikastra', 'magikastra_linkcolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('878', '0', 'magikastra', 'magikastra_fontcolor_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('876', '0', 'magikastra', 'magikastra_body_bg_ed', '0', '0');
INSERT INTO `oc_setting` VALUES ('877', '0', 'magikastra', 'magikastra_body_bg', 'ffffff', '0');
INSERT INTO `oc_setting` VALUES ('871', '0', 'magikastra', 'magikastra_product_ct2', '1', '0');
INSERT INTO `oc_setting` VALUES ('872', '0', 'magikastra', 'magikastra_product_ct2title', 'Custom Tab2', '0');
INSERT INTO `oc_setting` VALUES ('873', '0', 'magikastra', 'magikastra_product_ct2content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero. Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam erat mi, rutrum at sollicitudin rhoncus, ultricies posuere erat. Duis convallis, arcu nec aliquam consequat, purus felis vehicula felis, a dapibus enim lorem nec augue.', '0');
INSERT INTO `oc_setting` VALUES ('875', '0', 'magikastra', 'magikastra_footer_cbcontent', '&lt;a title=&quot;Logo&quot; href=&quot;index.html&quot;&gt;\r\n&lt;img alt=&quot;logo&quot; src=&quot;catalog/view/theme/astragrey/image/footer-logo.png&quot;&gt;\r\n&lt;/a&gt;', '0');
INSERT INTO `oc_setting` VALUES ('874', '0', 'magikastra', 'magikastra_footer_cb', '1', '0');
INSERT INTO `oc_setting` VALUES ('865', '0', 'magikastra', 'magikastra_menubar_cbcontent', '&lt;div class=&quot;grid12-5&quot;&gt;\r\n&lt;div class=&quot;custom_img&quot;&gt;\r\n&lt;img alt=&quot;custom img1&quot; src=&quot;catalog/view/theme/astragrey/image/custom-img1.jpg&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;grid12-5&quot;&gt;\r\n&lt;div class=&quot;custom_img&quot;&gt;\r\n&lt;img alt=&quot;custom img2&quot; src=&quot;catalog/view/theme/astragrey/image/custom-img2.jpg&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;grid12-5&quot;&gt;\r\n&lt;div class=&quot;custom_img&quot;&gt;\r\n&lt;img alt=&quot;custom img3&quot; src=&quot;catalog/view/theme/astragrey/image/custom-img3.jpg&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;grid12-5&quot;&gt;\r\n&lt;div class=&quot;custom_img&quot;&gt;\r\n&lt;img alt=&quot;custom img4&quot; src=&quot;catalog/view/theme/astragrey/image/custom-img4.jpg&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.&lt;/p&gt;\r\n&lt;/div&gt;', '0');
INSERT INTO `oc_setting` VALUES ('599', '0', 'custom_block_inside_menu', 'custom_block_inside_menu_module', 'a:2:{i:0;a:3:{s:11:\"category_id\";s:2:\"20\";s:9:\"r_content\";s:0:\"\";s:9:\"b_content\";s:1473:\"&lt;div class=&quot;push_item&quot;&gt;\r\n&lt;div class=&quot;push_img&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;\r\n&lt;img src=&quot;catalog/view/theme/astragrey/image/women_jwellery.png&quot; alt=&quot;cat-img&quot;&gt;\r\n&lt;/a&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;push_text&quot;&gt;Lorem Ipsum is simply dummy text of the printing&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;push_item&quot;&gt;\r\n&lt;div class=&quot;push_img&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;\r\n&lt;img src=&quot;catalog/view/theme/astragrey/image/women_bag.png&quot; alt=&quot;cat-img&quot;&gt;\r\n&lt;/a&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;push_text&quot;&gt;Lorem Ipsum is simply dummy text of the printing&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;push_item&quot;&gt;\r\n&lt;div class=&quot;push_img&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;\r\n&lt;img src=&quot;catalog/view/theme/astragrey/image/women_sandle.png&quot; alt=&quot;cat-img&quot;&gt;\r\n&lt;/a&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;push_text&quot;&gt;Lorem Ipsum is simply dummy text of the printing&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;push_item push_item_last&quot;&gt;\r\n&lt;div class=&quot;push_img&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;\r\n&lt;img src=&quot;catalog/view/theme/astragrey/image/women_top.png&quot; alt=&quot;cat-img&quot;&gt;\r\n&lt;/a&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;push_text&quot;&gt;Lorem Ipsum is simply dummy text of the printing&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;br class=&quot;clear&quot;&gt;\";}i:1;a:3:{s:11:\"category_id\";s:2:\"57\";s:9:\"r_content\";s:238:\"&lt;div class=&quot;nav-block nav-block-right std grid12-4&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;\r\n&lt;img alt=&quot;menu_furniture&quot; src=&quot;catalog/view/theme/astragrey/image/menu_furniture.png&quot;&gt;\r\n&lt;/a&gt;\r\n&lt;/div&gt;\";s:9:\"b_content\";s:0:\"\";}}', '1');
INSERT INTO `oc_setting` VALUES ('606', '0', 'custom_subcategory_thumbnail', 'custom_subcategory_thumbnail_module', 'a:5:{i:5;a:2:{s:11:\"category_id\";s:2:\"46\";s:5:\"image\";s:17:\"catalog/shoes.png\";}i:6;a:2:{s:11:\"category_id\";s:2:\"45\";s:5:\"image\";s:22:\"catalog/shirts-img.png\";}i:7;a:2:{s:11:\"category_id\";s:2:\"65\";s:5:\"image\";s:19:\"catalog/jackets.png\";}i:8;a:2:{s:11:\"category_id\";s:2:\"67\";s:5:\"image\";s:23:\"catalog/watches-img.png\";}i:9;a:2:{s:11:\"category_id\";s:2:\"68\";s:5:\"image\";s:26:\"catalog/sunglasses-img.png\";}}', '1');
INSERT INTO `oc_setting` VALUES ('1174', '0', 'magikblog', 'magikblog_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('1173', '0', 'magikblog', 'magikblog_description', 'a:2:{i:1;a:3:{s:9:\"metatitle\";s:7:\"My Blog\";s:11:\"metakeyword\";s:4:\"blog\";s:15:\"metadescription\";s:7:\"my blog\";}i:2;a:3:{s:9:\"metatitle\";s:12:\"热门资讯\";s:11:\"metakeyword\";s:0:\"\";s:15:\"metadescription\";s:0:\"\";}}', '1');
INSERT INTO `oc_setting` VALUES ('613', '0', 'magikblog_homepage', 'magikblog_homepage_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('614', '0', 'magikblog_homepage', 'magikblog_homepage_postcount', '4', '0');
INSERT INTO `oc_setting` VALUES ('615', '0', 'magikblog_homepage', 'magikblog_homepage_ignorepost', '0', '0');
INSERT INTO `oc_setting` VALUES ('616', '0', 'magikblog_homepage', 'magikblog_homepage_descriptionlimit', '100', '0');
INSERT INTO `oc_setting` VALUES ('617', '0', 'magikblog_homepage', 'magikblog_homepage_resizeimage', '1', '0');
INSERT INTO `oc_setting` VALUES ('618', '0', 'magikblog_homepage', 'magikblog_homepage_resizeimagewidth', '780', '0');
INSERT INTO `oc_setting` VALUES ('619', '0', 'magikblog_homepage', 'magikblog_homepage_resizeimageheight', '520', '0');
INSERT INTO `oc_setting` VALUES ('862', '0', 'magikastra', 'magikastra_headercb_content', '&lt;div class=&quot;os-phrases&quot; id=&quot;os-phrases&quot;&gt;\r\n&lt;h2&gt;Welcome to Astra&lt;/h2&gt;\r\n&lt;h2&gt;15% Off on all Collection&lt;/h2&gt;\r\n&lt;h2&gt;Free Shipping &lt;/h2&gt;\r\n&lt;h2&gt;on order &lt;/h2&gt;\r\n&lt;h2&gt;over $99&lt;/h2&gt;\r\n&lt;h2&gt;Multipurpose design&lt;/h2&gt;\r\n&lt;h2&gt;Clean and simple design&lt;/h2&gt;\r\n&lt;h2&gt;Easy to Customizable&lt;/h2&gt;\r\n&lt;h2&gt;Responsive HTML theme&lt;/h2&gt;\r\n&lt;/div&gt;', '0');
INSERT INTO `oc_setting` VALUES ('866', '0', 'magikastra', 'magikastra_productpage_cb', '1', '0');
INSERT INTO `oc_setting` VALUES ('867', '0', 'magikastra', 'magikastra_productpage_cbcontent', '&lt;img src=&quot;catalog/view/theme/astragrey/image/offer-banner33.png&quot; alt=&quot;custom block&quot;&gt;\r\n&lt;img src=&quot;catalog/view/theme/astragrey/image/offer-banner5.png&quot; alt=&quot;custom block&quot;&gt;', '0');
INSERT INTO `oc_setting` VALUES ('863', '0', 'magikastra', 'magikastra_menubar_cb', '1', '0');
INSERT INTO `oc_setting` VALUES ('864', '0', 'magikastra', 'magikastra_menubar_cbtitle', 'Custom', '0');
INSERT INTO `oc_setting` VALUES ('861', '0', 'magikastra', 'magikastra_headercb_ed', '1', '0');
INSERT INTO `oc_setting` VALUES ('860', '0', 'magikastra', 'magikastra_sale_labelcolor', 'd12631', '0');
INSERT INTO `oc_setting` VALUES ('859', '0', 'magikastra', 'magikastra_sale_labeltitle', 'Sale', '0');
INSERT INTO `oc_setting` VALUES ('858', '0', 'magikastra', 'magikastra_sale_label', '1', '0');
INSERT INTO `oc_setting` VALUES ('857', '0', 'magikastra', 'magikastra_animation_effect', '1', '0');
INSERT INTO `oc_setting` VALUES ('856', '0', 'magikastra', 'magikastra_scroll_totop', '1', '0');
INSERT INTO `oc_setting` VALUES ('855', '0', 'magikastra', 'magikastra_quickview_button', '1', '0');
INSERT INTO `oc_setting` VALUES ('854', '0', 'magikastra', 'magikastra_home_option', '1', '0');
INSERT INTO `oc_setting` VALUES ('933', '0', 'magikblog_latestpost', 'magikblog_latestpost_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('934', '0', 'magikblog_latestpost', 'magikblog_latestpost_postcount', '5', '0');
INSERT INTO `oc_setting` VALUES ('1326', '0', 'config', 'config_review_mail', '0', '0');
INSERT INTO `oc_setting` VALUES ('1327', '0', 'config', 'config_voucher_min', '1', '0');
INSERT INTO `oc_setting` VALUES ('1328', '0', 'config', 'config_voucher_max', '1000', '0');
INSERT INTO `oc_setting` VALUES ('1329', '0', 'config', 'config_tax', '1', '0');
INSERT INTO `oc_setting` VALUES ('1330', '0', 'config', 'config_tax_default', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('1331', '0', 'config', 'config_tax_customer', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('1332', '0', 'config', 'config_customer_online', '0', '0');
INSERT INTO `oc_setting` VALUES ('1333', '0', 'config', 'config_customer_group_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('1334', '0', 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:\"1\";}', '1');
INSERT INTO `oc_setting` VALUES ('1335', '0', 'config', 'config_customer_price', '0', '0');
INSERT INTO `oc_setting` VALUES ('1325', '0', 'config', 'config_review_guest', '1', '0');
INSERT INTO `oc_setting` VALUES ('1324', '0', 'config', 'config_review_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('1323', '0', 'config', 'config_limit_admin', '20', '0');
INSERT INTO `oc_setting` VALUES ('1322', '0', 'config', 'config_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('1321', '0', 'config', 'config_product_limit', '15', '0');
INSERT INTO `oc_setting` VALUES ('1320', '0', 'config', 'config_product_count', '1', '0');
INSERT INTO `oc_setting` VALUES ('1319', '0', 'config', 'config_weight_class_id', '5', '0');
INSERT INTO `oc_setting` VALUES ('1318', '0', 'config', 'config_length_class_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('1317', '0', 'config', 'config_currency_auto', '1', '0');
INSERT INTO `oc_setting` VALUES ('1316', '0', 'config', 'config_currency', 'USD', '0');
INSERT INTO `oc_setting` VALUES ('1315', '0', 'config', 'config_admin_language', 'cn', '0');
INSERT INTO `oc_setting` VALUES ('1314', '0', 'config', 'config_language', 'cn', '0');
INSERT INTO `oc_setting` VALUES ('1313', '0', 'config', 'config_zone_id', '3563', '0');
INSERT INTO `oc_setting` VALUES ('1312', '0', 'config', 'config_country_id', '222', '0');
INSERT INTO `oc_setting` VALUES ('1311', '0', 'config', 'config_layout_id', '4', '0');
INSERT INTO `oc_setting` VALUES ('1310', '0', 'config', 'config_template', 'astragrey', '0');
INSERT INTO `oc_setting` VALUES ('1309', '0', 'config', 'config_google_site_verification', '', '0');
INSERT INTO `oc_setting` VALUES ('1308', '0', 'config', 'config_meta_keyword', '', '0');
INSERT INTO `oc_setting` VALUES ('1307', '0', 'config', 'config_meta_description', 'My Store', '0');
INSERT INTO `oc_setting` VALUES ('1306', '0', 'config', 'config_meta_title', 'Your Store', '0');
INSERT INTO `oc_setting` VALUES ('1305', '0', 'config', 'config_comment', '', '0');
INSERT INTO `oc_setting` VALUES ('1304', '0', 'config', 'config_open', '', '0');
INSERT INTO `oc_setting` VALUES ('1303', '0', 'config', 'config_image', '', '0');
INSERT INTO `oc_setting` VALUES ('1175', '0', 'magikblog', 'magikblog_allow_comment', '1', '0');
INSERT INTO `oc_setting` VALUES ('1176', '0', 'magikblog', 'magikblog_allow_guestcomment', '1', '0');
INSERT INTO `oc_setting` VALUES ('1177', '0', 'magikblog', 'magikblog_allow_tag', '1', '0');
INSERT INTO `oc_setting` VALUES ('1178', '0', 'magikblog', 'magikblog_allow_rssfeed', '1', '0');
INSERT INTO `oc_setting` VALUES ('1302', '0', 'config', 'config_fax', '', '0');
INSERT INTO `oc_setting` VALUES ('1301', '0', 'config', 'config_telephone', '123456789', '0');
INSERT INTO `oc_setting` VALUES ('1300', '0', 'config', 'config_email', 'wangge2010@163.com', '0');
INSERT INTO `oc_setting` VALUES ('1299', '0', 'config', 'config_geocode', '', '0');
INSERT INTO `oc_setting` VALUES ('1298', '0', 'config', 'config_address', 'Address 1', '0');
INSERT INTO `oc_setting` VALUES ('1297', '0', 'config', 'config_owner', 'Your Name', '0');
INSERT INTO `oc_setting` VALUES ('1296', '0', 'config', 'config_name', 'Your Store', '0');

-- ----------------------------
-- Table structure for `oc_stock_status`
-- ----------------------------
DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_stock_status
-- ----------------------------
INSERT INTO `oc_stock_status` VALUES ('7', '1', 'In Stock');
INSERT INTO `oc_stock_status` VALUES ('8', '1', 'Pre-Order');
INSERT INTO `oc_stock_status` VALUES ('5', '1', 'Out Of Stock');
INSERT INTO `oc_stock_status` VALUES ('6', '1', '2-3 Days');
INSERT INTO `oc_stock_status` VALUES ('7', '2', 'In Stock');
INSERT INTO `oc_stock_status` VALUES ('8', '2', 'Pre-Order');
INSERT INTO `oc_stock_status` VALUES ('5', '2', 'Out Of Stock');
INSERT INTO `oc_stock_status` VALUES ('6', '2', '2-3 Days');

-- ----------------------------
-- Table structure for `oc_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_store
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_tax_class`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_class
-- ----------------------------
INSERT INTO `oc_tax_class` VALUES ('9', 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50');
INSERT INTO `oc_tax_class` VALUES ('10', 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- ----------------------------
-- Table structure for `oc_tax_rate`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rate
-- ----------------------------
INSERT INTO `oc_tax_rate` VALUES ('86', '3', 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29');
INSERT INTO `oc_tax_rate` VALUES ('87', '3', 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- ----------------------------
-- Table structure for `oc_tax_rate_to_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rate_to_customer_group
-- ----------------------------
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('86', '1');
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('87', '1');

-- ----------------------------
-- Table structure for `oc_tax_rule`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rule
-- ----------------------------
INSERT INTO `oc_tax_rule` VALUES ('121', '10', '86', 'payment', '1');
INSERT INTO `oc_tax_rule` VALUES ('120', '10', '87', 'store', '0');
INSERT INTO `oc_tax_rule` VALUES ('128', '9', '86', 'shipping', '1');
INSERT INTO `oc_tax_rule` VALUES ('127', '9', '87', 'shipping', '2');

-- ----------------------------
-- Table structure for `oc_upload`
-- ----------------------------
DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_upload
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_url_alias`
-- ----------------------------
DROP TABLE IF EXISTS `oc_url_alias`;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=856 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_url_alias
-- ----------------------------
INSERT INTO `oc_url_alias` VALUES ('824', 'product_id=48', 'ipod-classic');
INSERT INTO `oc_url_alias` VALUES ('855', 'category_id=20', 'desktops');
INSERT INTO `oc_url_alias` VALUES ('834', 'category_id=26', 'pc');
INSERT INTO `oc_url_alias` VALUES ('835', 'category_id=27', 'mac');
INSERT INTO `oc_url_alias` VALUES ('845', 'manufacturer_id=8', 'apple');
INSERT INTO `oc_url_alias` VALUES ('772', 'information_id=4', 'about_us');
INSERT INTO `oc_url_alias` VALUES ('768', 'product_id=42', 'test');
INSERT INTO `oc_url_alias` VALUES ('789', 'category_id=34', 'mp3-players');
INSERT INTO `oc_url_alias` VALUES ('781', 'category_id=36', 'test2');
INSERT INTO `oc_url_alias` VALUES ('854', 'category_id=18', 'laptop-notebook');
INSERT INTO `oc_url_alias` VALUES ('775', 'category_id=46', 'macs');
INSERT INTO `oc_url_alias` VALUES ('776', 'category_id=45', 'windows');
INSERT INTO `oc_url_alias` VALUES ('777', 'category_id=25', 'component');
INSERT INTO `oc_url_alias` VALUES ('778', 'category_id=29', 'mouse');
INSERT INTO `oc_url_alias` VALUES ('779', 'category_id=28', 'monitor');
INSERT INTO `oc_url_alias` VALUES ('780', 'category_id=35', 'test1');
INSERT INTO `oc_url_alias` VALUES ('782', 'category_id=30', 'printer');
INSERT INTO `oc_url_alias` VALUES ('783', 'category_id=31', 'scanner');
INSERT INTO `oc_url_alias` VALUES ('844', 'category_id=32', 'web-camera');
INSERT INTO `oc_url_alias` VALUES ('785', 'category_id=57', 'tablet');
INSERT INTO `oc_url_alias` VALUES ('786', 'category_id=17', 'software');
INSERT INTO `oc_url_alias` VALUES ('787', 'category_id=24', 'smartphone');
INSERT INTO `oc_url_alias` VALUES ('788', 'category_id=33', 'camera');
INSERT INTO `oc_url_alias` VALUES ('790', 'category_id=43', 'test11');
INSERT INTO `oc_url_alias` VALUES ('791', 'category_id=44', 'test12');
INSERT INTO `oc_url_alias` VALUES ('792', 'category_id=47', 'test15');
INSERT INTO `oc_url_alias` VALUES ('793', 'category_id=48', 'test16');
INSERT INTO `oc_url_alias` VALUES ('794', 'category_id=49', 'test17');
INSERT INTO `oc_url_alias` VALUES ('795', 'category_id=50', 'test18');
INSERT INTO `oc_url_alias` VALUES ('796', 'category_id=51', 'test19');
INSERT INTO `oc_url_alias` VALUES ('797', 'category_id=52', 'test20');
INSERT INTO `oc_url_alias` VALUES ('798', 'category_id=58', 'test25');
INSERT INTO `oc_url_alias` VALUES ('799', 'category_id=53', 'test21');
INSERT INTO `oc_url_alias` VALUES ('800', 'category_id=54', 'test22');
INSERT INTO `oc_url_alias` VALUES ('801', 'category_id=55', 'test23');
INSERT INTO `oc_url_alias` VALUES ('802', 'category_id=56', 'test24');
INSERT INTO `oc_url_alias` VALUES ('803', 'category_id=38', 'test4');
INSERT INTO `oc_url_alias` VALUES ('804', 'category_id=37', 'test5');
INSERT INTO `oc_url_alias` VALUES ('805', 'category_id=39', 'test6');
INSERT INTO `oc_url_alias` VALUES ('806', 'category_id=40', 'test7');
INSERT INTO `oc_url_alias` VALUES ('807', 'category_id=41', 'test8');
INSERT INTO `oc_url_alias` VALUES ('808', 'category_id=42', 'test9');
INSERT INTO `oc_url_alias` VALUES ('809', 'product_id=30', 'canon-eos-5d');
INSERT INTO `oc_url_alias` VALUES ('840', 'product_id=47', 'hp-lp3065');
INSERT INTO `oc_url_alias` VALUES ('811', 'product_id=28', 'htc-touch-hd');
INSERT INTO `oc_url_alias` VALUES ('812', 'product_id=43', 'macbook');
INSERT INTO `oc_url_alias` VALUES ('813', 'product_id=44', 'macbook-air');
INSERT INTO `oc_url_alias` VALUES ('814', 'product_id=45', 'macbook-pro');
INSERT INTO `oc_url_alias` VALUES ('816', 'product_id=31', 'nikon-d300');
INSERT INTO `oc_url_alias` VALUES ('817', 'product_id=29', 'palm-treo-pro');
INSERT INTO `oc_url_alias` VALUES ('818', 'product_id=35', 'product-8');
INSERT INTO `oc_url_alias` VALUES ('819', 'product_id=49', 'samsung-galaxy-tab-10-1');
INSERT INTO `oc_url_alias` VALUES ('820', 'product_id=33', 'samsung-syncmaster-941bw');
INSERT INTO `oc_url_alias` VALUES ('821', 'product_id=46', 'sony-vaio');
INSERT INTO `oc_url_alias` VALUES ('837', 'product_id=41', 'imac');
INSERT INTO `oc_url_alias` VALUES ('823', 'product_id=40', 'iphone');
INSERT INTO `oc_url_alias` VALUES ('825', 'product_id=36', 'ipod-nano');
INSERT INTO `oc_url_alias` VALUES ('826', 'product_id=34', 'ipod-shuffle');
INSERT INTO `oc_url_alias` VALUES ('827', 'product_id=32', 'ipod-touch');
INSERT INTO `oc_url_alias` VALUES ('846', 'manufacturer_id=9', 'canon');
INSERT INTO `oc_url_alias` VALUES ('848', 'manufacturer_id=5', 'htc');
INSERT INTO `oc_url_alias` VALUES ('847', 'manufacturer_id=7', 'hewlett-packard');
INSERT INTO `oc_url_alias` VALUES ('849', 'manufacturer_id=6', 'palm');
INSERT INTO `oc_url_alias` VALUES ('850', 'manufacturer_id=10', 'sony');
INSERT INTO `oc_url_alias` VALUES ('841', 'information_id=6', 'delivery');
INSERT INTO `oc_url_alias` VALUES ('842', 'information_id=3', 'privacy');
INSERT INTO `oc_url_alias` VALUES ('843', 'information_id=5', 'terms');
INSERT INTO `oc_url_alias` VALUES ('851', 'manufacturer_id=11', '');
INSERT INTO `oc_url_alias` VALUES ('852', 'manufacturer_id=12', '');
INSERT INTO `oc_url_alias` VALUES ('853', 'manufacturer_id=13', '');

-- ----------------------------
-- Table structure for `oc_user`
-- ----------------------------
DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_user
-- ----------------------------
INSERT INTO `oc_user` VALUES ('1', '1', 'admin', 'fecddf19a15feb7f8483215ffba03398876269de', 'a00c22574', 'John', 'Doe', 'wangge2010@163.com', '', '', '127.0.0.1', '1', '2015-11-10 06:13:04');

-- ----------------------------
-- Table structure for `oc_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_user_group
-- ----------------------------
INSERT INTO `oc_user_group` VALUES ('1', 'Administrator', 'a:2:{s:6:\"access\";a:198:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:13:\"design/banner\";i:17;s:13:\"design/layout\";i:18;s:14:\"extension/feed\";i:19;s:15:\"extension/fraud\";i:20;s:19:\"extension/installer\";i:21;s:22:\"extension/modification\";i:22;s:16:\"extension/module\";i:23;s:17:\"extension/openbay\";i:24;s:17:\"extension/payment\";i:25;s:18:\"extension/shipping\";i:26;s:15:\"extension/total\";i:27;s:16:\"feed/google_base\";i:28;s:19:\"feed/google_sitemap\";i:29;s:15:\"feed/openbaypro\";i:30;s:18:\"fraud/fraudlabspro\";i:31;s:13:\"fraud/maxmind\";i:32;s:20:\"localisation/country\";i:33;s:21:\"localisation/currency\";i:34;s:21:\"localisation/geo_zone\";i:35;s:21:\"localisation/language\";i:36;s:25:\"localisation/length_class\";i:37;s:21:\"localisation/location\";i:38;s:25:\"localisation/order_status\";i:39;s:26:\"localisation/return_action\";i:40;s:26:\"localisation/return_reason\";i:41;s:26:\"localisation/return_status\";i:42;s:25:\"localisation/stock_status\";i:43;s:22:\"localisation/tax_class\";i:44;s:21:\"localisation/tax_rate\";i:45;s:25:\"localisation/weight_class\";i:46;s:17:\"localisation/zone\";i:47;s:17:\"magikblog/article\";i:48;s:18:\"magikblog/category\";i:49;s:17:\"magikblog/comment\";i:50;s:19:\"marketing/affiliate\";i:51;s:17:\"marketing/contact\";i:52;s:16:\"marketing/coupon\";i:53;s:19:\"marketing/marketing\";i:54;s:14:\"module/account\";i:55;s:16:\"module/affiliate\";i:56;s:20:\"module/amazon_button\";i:57;s:19:\"module/amazon_login\";i:58;s:17:\"module/amazon_pay\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:30:\"module/category_product_slider\";i:64;s:31:\"module/custom_block_inside_menu\";i:65;s:35:\"module/custom_subcategory_thumbnail\";i:66;s:19:\"module/ebay_listing\";i:67;s:15:\"module/featured\";i:68;s:13:\"module/filter\";i:69;s:22:\"module/google_hangouts\";i:70;s:11:\"module/html\";i:71;s:18:\"module/information\";i:72;s:13:\"module/latest\";i:73;s:17:\"module/magikastra\";i:74;s:16:\"module/magikblog\";i:75;s:25:\"module/magikblog_category\";i:76;s:25:\"module/magikblog_homepage\";i:77;s:27:\"module/magikblog_latestpost\";i:78;s:18:\"module/magikslider\";i:79;s:29:\"module/newslettersubscription\";i:80;s:16:\"module/pp_button\";i:81;s:15:\"module/pp_login\";i:82;s:18:\"module/recommended\";i:83;s:16:\"module/slideshow\";i:84;s:14:\"module/special\";i:85;s:12:\"module/store\";i:86;s:14:\"openbay/amazon\";i:87;s:22:\"openbay/amazon_listing\";i:88;s:22:\"openbay/amazon_product\";i:89;s:16:\"openbay/amazonus\";i:90;s:24:\"openbay/amazonus_listing\";i:91;s:24:\"openbay/amazonus_product\";i:92;s:12:\"openbay/ebay\";i:93;s:20:\"openbay/ebay_profile\";i:94;s:21:\"openbay/ebay_template\";i:95;s:12:\"openbay/etsy\";i:96;s:20:\"openbay/etsy_product\";i:97;s:21:\"openbay/etsy_shipping\";i:98;s:17:\"openbay/etsy_shop\";i:99;s:23:\"payment/amazon_checkout\";i:100;s:24:\"payment/amazon_login_pay\";i:101;s:24:\"payment/authorizenet_aim\";i:102;s:24:\"payment/authorizenet_sim\";i:103;s:21:\"payment/bank_transfer\";i:104;s:22:\"payment/bluepay_hosted\";i:105;s:24:\"payment/bluepay_redirect\";i:106;s:14:\"payment/cheque\";i:107;s:11:\"payment/cod\";i:108;s:17:\"payment/firstdata\";i:109;s:24:\"payment/firstdata_remote\";i:110;s:21:\"payment/free_checkout\";i:111;s:14:\"payment/g2apay\";i:112;s:17:\"payment/globalpay\";i:113;s:24:\"payment/globalpay_remote\";i:114;s:22:\"payment/klarna_account\";i:115;s:22:\"payment/klarna_invoice\";i:116;s:14:\"payment/liqpay\";i:117;s:14:\"payment/nochex\";i:118;s:15:\"payment/paymate\";i:119;s:16:\"payment/paypoint\";i:120;s:13:\"payment/payza\";i:121;s:26:\"payment/perpetual_payments\";i:122;s:18:\"payment/pp_express\";i:123;s:18:\"payment/pp_payflow\";i:124;s:25:\"payment/pp_payflow_iframe\";i:125;s:14:\"payment/pp_pro\";i:126;s:21:\"payment/pp_pro_iframe\";i:127;s:19:\"payment/pp_standard\";i:128;s:14:\"payment/realex\";i:129;s:21:\"payment/realex_remote\";i:130;s:22:\"payment/sagepay_direct\";i:131;s:22:\"payment/sagepay_server\";i:132;s:18:\"payment/sagepay_us\";i:133;s:24:\"payment/securetrading_pp\";i:134;s:24:\"payment/securetrading_ws\";i:135;s:14:\"payment/skrill\";i:136;s:19:\"payment/twocheckout\";i:137;s:28:\"payment/web_payment_software\";i:138;s:16:\"payment/worldpay\";i:139;s:16:\"report/affiliate\";i:140;s:25:\"report/affiliate_activity\";i:141;s:22:\"report/affiliate_login\";i:142;s:24:\"report/customer_activity\";i:143;s:22:\"report/customer_credit\";i:144;s:21:\"report/customer_login\";i:145;s:22:\"report/customer_online\";i:146;s:21:\"report/customer_order\";i:147;s:22:\"report/customer_reward\";i:148;s:16:\"report/marketing\";i:149;s:24:\"report/product_purchased\";i:150;s:21:\"report/product_viewed\";i:151;s:18:\"report/sale_coupon\";i:152;s:17:\"report/sale_order\";i:153;s:18:\"report/sale_return\";i:154;s:20:\"report/sale_shipping\";i:155;s:15:\"report/sale_tax\";i:156;s:17:\"sale/custom_field\";i:157;s:13:\"sale/customer\";i:158;s:20:\"sale/customer_ban_ip\";i:159;s:19:\"sale/customer_group\";i:160;s:27:\"sale/newslettersubscription\";i:161;s:31:\"sale/newslettersubscriptionmail\";i:162;s:10:\"sale/order\";i:163;s:14:\"sale/recurring\";i:164;s:11:\"sale/return\";i:165;s:12:\"sale/voucher\";i:166;s:18:\"sale/voucher_theme\";i:167;s:15:\"setting/setting\";i:168;s:13:\"setting/store\";i:169;s:16:\"shipping/auspost\";i:170;s:17:\"shipping/citylink\";i:171;s:14:\"shipping/fedex\";i:172;s:13:\"shipping/flat\";i:173;s:13:\"shipping/free\";i:174;s:13:\"shipping/item\";i:175;s:23:\"shipping/parcelforce_48\";i:176;s:15:\"shipping/pickup\";i:177;s:19:\"shipping/royal_mail\";i:178;s:12:\"shipping/ups\";i:179;s:13:\"shipping/usps\";i:180;s:15:\"shipping/weight\";i:181;s:11:\"tool/backup\";i:182;s:14:\"tool/error_log\";i:183;s:11:\"tool/upload\";i:184;s:12:\"total/coupon\";i:185;s:12:\"total/credit\";i:186;s:14:\"total/handling\";i:187;s:16:\"total/klarna_fee\";i:188;s:19:\"total/low_order_fee\";i:189;s:12:\"total/reward\";i:190;s:14:\"total/shipping\";i:191;s:15:\"total/sub_total\";i:192;s:9:\"total/tax\";i:193;s:11:\"total/total\";i:194;s:13:\"total/voucher\";i:195;s:8:\"user/api\";i:196;s:9:\"user/user\";i:197;s:20:\"user/user_permission\";}s:6:\"modify\";a:198:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:13:\"design/banner\";i:17;s:13:\"design/layout\";i:18;s:14:\"extension/feed\";i:19;s:15:\"extension/fraud\";i:20;s:19:\"extension/installer\";i:21;s:22:\"extension/modification\";i:22;s:16:\"extension/module\";i:23;s:17:\"extension/openbay\";i:24;s:17:\"extension/payment\";i:25;s:18:\"extension/shipping\";i:26;s:15:\"extension/total\";i:27;s:16:\"feed/google_base\";i:28;s:19:\"feed/google_sitemap\";i:29;s:15:\"feed/openbaypro\";i:30;s:18:\"fraud/fraudlabspro\";i:31;s:13:\"fraud/maxmind\";i:32;s:20:\"localisation/country\";i:33;s:21:\"localisation/currency\";i:34;s:21:\"localisation/geo_zone\";i:35;s:21:\"localisation/language\";i:36;s:25:\"localisation/length_class\";i:37;s:21:\"localisation/location\";i:38;s:25:\"localisation/order_status\";i:39;s:26:\"localisation/return_action\";i:40;s:26:\"localisation/return_reason\";i:41;s:26:\"localisation/return_status\";i:42;s:25:\"localisation/stock_status\";i:43;s:22:\"localisation/tax_class\";i:44;s:21:\"localisation/tax_rate\";i:45;s:25:\"localisation/weight_class\";i:46;s:17:\"localisation/zone\";i:47;s:17:\"magikblog/article\";i:48;s:18:\"magikblog/category\";i:49;s:17:\"magikblog/comment\";i:50;s:19:\"marketing/affiliate\";i:51;s:17:\"marketing/contact\";i:52;s:16:\"marketing/coupon\";i:53;s:19:\"marketing/marketing\";i:54;s:14:\"module/account\";i:55;s:16:\"module/affiliate\";i:56;s:20:\"module/amazon_button\";i:57;s:19:\"module/amazon_login\";i:58;s:17:\"module/amazon_pay\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:30:\"module/category_product_slider\";i:64;s:31:\"module/custom_block_inside_menu\";i:65;s:35:\"module/custom_subcategory_thumbnail\";i:66;s:19:\"module/ebay_listing\";i:67;s:15:\"module/featured\";i:68;s:13:\"module/filter\";i:69;s:22:\"module/google_hangouts\";i:70;s:11:\"module/html\";i:71;s:18:\"module/information\";i:72;s:13:\"module/latest\";i:73;s:17:\"module/magikastra\";i:74;s:16:\"module/magikblog\";i:75;s:25:\"module/magikblog_category\";i:76;s:25:\"module/magikblog_homepage\";i:77;s:27:\"module/magikblog_latestpost\";i:78;s:18:\"module/magikslider\";i:79;s:29:\"module/newslettersubscription\";i:80;s:16:\"module/pp_button\";i:81;s:15:\"module/pp_login\";i:82;s:18:\"module/recommended\";i:83;s:16:\"module/slideshow\";i:84;s:14:\"module/special\";i:85;s:12:\"module/store\";i:86;s:14:\"openbay/amazon\";i:87;s:22:\"openbay/amazon_listing\";i:88;s:22:\"openbay/amazon_product\";i:89;s:16:\"openbay/amazonus\";i:90;s:24:\"openbay/amazonus_listing\";i:91;s:24:\"openbay/amazonus_product\";i:92;s:12:\"openbay/ebay\";i:93;s:20:\"openbay/ebay_profile\";i:94;s:21:\"openbay/ebay_template\";i:95;s:12:\"openbay/etsy\";i:96;s:20:\"openbay/etsy_product\";i:97;s:21:\"openbay/etsy_shipping\";i:98;s:17:\"openbay/etsy_shop\";i:99;s:23:\"payment/amazon_checkout\";i:100;s:24:\"payment/amazon_login_pay\";i:101;s:24:\"payment/authorizenet_aim\";i:102;s:24:\"payment/authorizenet_sim\";i:103;s:21:\"payment/bank_transfer\";i:104;s:22:\"payment/bluepay_hosted\";i:105;s:24:\"payment/bluepay_redirect\";i:106;s:14:\"payment/cheque\";i:107;s:11:\"payment/cod\";i:108;s:17:\"payment/firstdata\";i:109;s:24:\"payment/firstdata_remote\";i:110;s:21:\"payment/free_checkout\";i:111;s:14:\"payment/g2apay\";i:112;s:17:\"payment/globalpay\";i:113;s:24:\"payment/globalpay_remote\";i:114;s:22:\"payment/klarna_account\";i:115;s:22:\"payment/klarna_invoice\";i:116;s:14:\"payment/liqpay\";i:117;s:14:\"payment/nochex\";i:118;s:15:\"payment/paymate\";i:119;s:16:\"payment/paypoint\";i:120;s:13:\"payment/payza\";i:121;s:26:\"payment/perpetual_payments\";i:122;s:18:\"payment/pp_express\";i:123;s:18:\"payment/pp_payflow\";i:124;s:25:\"payment/pp_payflow_iframe\";i:125;s:14:\"payment/pp_pro\";i:126;s:21:\"payment/pp_pro_iframe\";i:127;s:19:\"payment/pp_standard\";i:128;s:14:\"payment/realex\";i:129;s:21:\"payment/realex_remote\";i:130;s:22:\"payment/sagepay_direct\";i:131;s:22:\"payment/sagepay_server\";i:132;s:18:\"payment/sagepay_us\";i:133;s:24:\"payment/securetrading_pp\";i:134;s:24:\"payment/securetrading_ws\";i:135;s:14:\"payment/skrill\";i:136;s:19:\"payment/twocheckout\";i:137;s:28:\"payment/web_payment_software\";i:138;s:16:\"payment/worldpay\";i:139;s:16:\"report/affiliate\";i:140;s:25:\"report/affiliate_activity\";i:141;s:22:\"report/affiliate_login\";i:142;s:24:\"report/customer_activity\";i:143;s:22:\"report/customer_credit\";i:144;s:21:\"report/customer_login\";i:145;s:22:\"report/customer_online\";i:146;s:21:\"report/customer_order\";i:147;s:22:\"report/customer_reward\";i:148;s:16:\"report/marketing\";i:149;s:24:\"report/product_purchased\";i:150;s:21:\"report/product_viewed\";i:151;s:18:\"report/sale_coupon\";i:152;s:17:\"report/sale_order\";i:153;s:18:\"report/sale_return\";i:154;s:20:\"report/sale_shipping\";i:155;s:15:\"report/sale_tax\";i:156;s:17:\"sale/custom_field\";i:157;s:13:\"sale/customer\";i:158;s:20:\"sale/customer_ban_ip\";i:159;s:19:\"sale/customer_group\";i:160;s:27:\"sale/newslettersubscription\";i:161;s:31:\"sale/newslettersubscriptionmail\";i:162;s:10:\"sale/order\";i:163;s:14:\"sale/recurring\";i:164;s:11:\"sale/return\";i:165;s:12:\"sale/voucher\";i:166;s:18:\"sale/voucher_theme\";i:167;s:15:\"setting/setting\";i:168;s:13:\"setting/store\";i:169;s:16:\"shipping/auspost\";i:170;s:17:\"shipping/citylink\";i:171;s:14:\"shipping/fedex\";i:172;s:13:\"shipping/flat\";i:173;s:13:\"shipping/free\";i:174;s:13:\"shipping/item\";i:175;s:23:\"shipping/parcelforce_48\";i:176;s:15:\"shipping/pickup\";i:177;s:19:\"shipping/royal_mail\";i:178;s:12:\"shipping/ups\";i:179;s:13:\"shipping/usps\";i:180;s:15:\"shipping/weight\";i:181;s:11:\"tool/backup\";i:182;s:14:\"tool/error_log\";i:183;s:11:\"tool/upload\";i:184;s:12:\"total/coupon\";i:185;s:12:\"total/credit\";i:186;s:14:\"total/handling\";i:187;s:16:\"total/klarna_fee\";i:188;s:19:\"total/low_order_fee\";i:189;s:12:\"total/reward\";i:190;s:14:\"total/shipping\";i:191;s:15:\"total/sub_total\";i:192;s:9:\"total/tax\";i:193;s:11:\"total/total\";i:194;s:13:\"total/voucher\";i:195;s:8:\"user/api\";i:196;s:9:\"user/user\";i:197;s:20:\"user/user_permission\";}}');
INSERT INTO `oc_user_group` VALUES ('10', 'Demonstration', '');

-- ----------------------------
-- Table structure for `oc_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_voucher_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_voucher_theme`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_theme
-- ----------------------------
INSERT INTO `oc_voucher_theme` VALUES ('8', 'catalog/demo/canon_eos_5d_2.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('7', 'catalog/demo/gift-voucher-birthday.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('6', 'catalog/demo/apple_logo.jpg');

-- ----------------------------
-- Table structure for `oc_voucher_theme_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_theme_description
-- ----------------------------
INSERT INTO `oc_voucher_theme_description` VALUES ('6', '1', 'Christmas');
INSERT INTO `oc_voucher_theme_description` VALUES ('7', '1', 'Birthday');
INSERT INTO `oc_voucher_theme_description` VALUES ('8', '1', 'General');
INSERT INTO `oc_voucher_theme_description` VALUES ('6', '2', 'Christmas');
INSERT INTO `oc_voucher_theme_description` VALUES ('7', '2', 'Birthday');
INSERT INTO `oc_voucher_theme_description` VALUES ('8', '2', 'General');

-- ----------------------------
-- Table structure for `oc_weight_class`
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_weight_class
-- ----------------------------
INSERT INTO `oc_weight_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_weight_class` VALUES ('2', '1000.00000000');
INSERT INTO `oc_weight_class` VALUES ('5', '2.20460000');
INSERT INTO `oc_weight_class` VALUES ('6', '35.27400000');

-- ----------------------------
-- Table structure for `oc_weight_class_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_weight_class_description
-- ----------------------------
INSERT INTO `oc_weight_class_description` VALUES ('1', '1', 'Kilogram', 'kg');
INSERT INTO `oc_weight_class_description` VALUES ('2', '1', 'Gram', 'g');
INSERT INTO `oc_weight_class_description` VALUES ('5', '1', 'Pound ', 'lb');
INSERT INTO `oc_weight_class_description` VALUES ('6', '1', 'Ounce', 'oz');
INSERT INTO `oc_weight_class_description` VALUES ('1', '2', 'Kilogram', 'kg');
INSERT INTO `oc_weight_class_description` VALUES ('2', '2', 'Gram', 'g');
INSERT INTO `oc_weight_class_description` VALUES ('5', '2', 'Pound ', 'lb');
INSERT INTO `oc_weight_class_description` VALUES ('6', '2', 'Ounce', 'oz');

-- ----------------------------
-- Table structure for `oc_zone`
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4231 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_zone
-- ----------------------------
INSERT INTO `oc_zone` VALUES ('1', '1', 'Badakhshan', 'BDS', '1');
INSERT INTO `oc_zone` VALUES ('2', '1', 'Badghis', 'BDG', '1');
INSERT INTO `oc_zone` VALUES ('3', '1', 'Baghlan', 'BGL', '1');
INSERT INTO `oc_zone` VALUES ('4', '1', 'Balkh', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('5', '1', 'Bamian', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('6', '1', 'Farah', 'FRA', '1');
INSERT INTO `oc_zone` VALUES ('7', '1', 'Faryab', 'FYB', '1');
INSERT INTO `oc_zone` VALUES ('8', '1', 'Ghazni', 'GHA', '1');
INSERT INTO `oc_zone` VALUES ('9', '1', 'Ghowr', 'GHO', '1');
INSERT INTO `oc_zone` VALUES ('10', '1', 'Helmand', 'HEL', '1');
INSERT INTO `oc_zone` VALUES ('11', '1', 'Herat', 'HER', '1');
INSERT INTO `oc_zone` VALUES ('12', '1', 'Jowzjan', 'JOW', '1');
INSERT INTO `oc_zone` VALUES ('13', '1', 'Kabul', 'KAB', '1');
INSERT INTO `oc_zone` VALUES ('14', '1', 'Kandahar', 'KAN', '1');
INSERT INTO `oc_zone` VALUES ('15', '1', 'Kapisa', 'KAP', '1');
INSERT INTO `oc_zone` VALUES ('16', '1', 'Khost', 'KHO', '1');
INSERT INTO `oc_zone` VALUES ('17', '1', 'Konar', 'KNR', '1');
INSERT INTO `oc_zone` VALUES ('18', '1', 'Kondoz', 'KDZ', '1');
INSERT INTO `oc_zone` VALUES ('19', '1', 'Laghman', 'LAG', '1');
INSERT INTO `oc_zone` VALUES ('20', '1', 'Lowgar', 'LOW', '1');
INSERT INTO `oc_zone` VALUES ('21', '1', 'Nangrahar', 'NAN', '1');
INSERT INTO `oc_zone` VALUES ('22', '1', 'Nimruz', 'NIM', '1');
INSERT INTO `oc_zone` VALUES ('23', '1', 'Nurestan', 'NUR', '1');
INSERT INTO `oc_zone` VALUES ('24', '1', 'Oruzgan', 'ORU', '1');
INSERT INTO `oc_zone` VALUES ('25', '1', 'Paktia', 'PIA', '1');
INSERT INTO `oc_zone` VALUES ('26', '1', 'Paktika', 'PKA', '1');
INSERT INTO `oc_zone` VALUES ('27', '1', 'Parwan', 'PAR', '1');
INSERT INTO `oc_zone` VALUES ('28', '1', 'Samangan', 'SAM', '1');
INSERT INTO `oc_zone` VALUES ('29', '1', 'Sar-e Pol', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('30', '1', 'Takhar', 'TAK', '1');
INSERT INTO `oc_zone` VALUES ('31', '1', 'Wardak', 'WAR', '1');
INSERT INTO `oc_zone` VALUES ('32', '1', 'Zabol', 'ZAB', '1');
INSERT INTO `oc_zone` VALUES ('33', '2', 'Berat', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('34', '2', 'Bulqize', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('35', '2', 'Delvine', 'DL', '1');
INSERT INTO `oc_zone` VALUES ('36', '2', 'Devoll', 'DV', '1');
INSERT INTO `oc_zone` VALUES ('37', '2', 'Diber', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('38', '2', 'Durres', 'DR', '1');
INSERT INTO `oc_zone` VALUES ('39', '2', 'Elbasan', 'EL', '1');
INSERT INTO `oc_zone` VALUES ('40', '2', 'Kolonje', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('41', '2', 'Fier', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('42', '2', 'Gjirokaster', 'GJ', '1');
INSERT INTO `oc_zone` VALUES ('43', '2', 'Gramsh', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('44', '2', 'Has', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('45', '2', 'Kavaje', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('46', '2', 'Kurbin', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('47', '2', 'Kucove', 'KC', '1');
INSERT INTO `oc_zone` VALUES ('48', '2', 'Korce', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('49', '2', 'Kruje', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('50', '2', 'Kukes', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('51', '2', 'Librazhd', 'LB', '1');
INSERT INTO `oc_zone` VALUES ('52', '2', 'Lezhe', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('53', '2', 'Lushnje', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('54', '2', 'Malesi e Madhe', 'MM', '1');
INSERT INTO `oc_zone` VALUES ('55', '2', 'Mallakaster', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('56', '2', 'Mat', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('57', '2', 'Mirdite', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('58', '2', 'Peqin', 'PQ', '1');
INSERT INTO `oc_zone` VALUES ('59', '2', 'Permet', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('60', '2', 'Pogradec', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('61', '2', 'Puke', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('62', '2', 'Shkoder', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('63', '2', 'Skrapar', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('64', '2', 'Sarande', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('65', '2', 'Tepelene', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('66', '2', 'Tropoje', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('67', '2', 'Tirane', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('68', '2', 'Vlore', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('69', '3', 'Adrar', 'ADR', '1');
INSERT INTO `oc_zone` VALUES ('70', '3', 'Ain Defla', 'ADE', '1');
INSERT INTO `oc_zone` VALUES ('71', '3', 'Ain Temouchent', 'ATE', '1');
INSERT INTO `oc_zone` VALUES ('72', '3', 'Alger', 'ALG', '1');
INSERT INTO `oc_zone` VALUES ('73', '3', 'Annaba', 'ANN', '1');
INSERT INTO `oc_zone` VALUES ('74', '3', 'Batna', 'BAT', '1');
INSERT INTO `oc_zone` VALUES ('75', '3', 'Bechar', 'BEC', '1');
INSERT INTO `oc_zone` VALUES ('76', '3', 'Bejaia', 'BEJ', '1');
INSERT INTO `oc_zone` VALUES ('77', '3', 'Biskra', 'BIS', '1');
INSERT INTO `oc_zone` VALUES ('78', '3', 'Blida', 'BLI', '1');
INSERT INTO `oc_zone` VALUES ('79', '3', 'Bordj Bou Arreridj', 'BBA', '1');
INSERT INTO `oc_zone` VALUES ('80', '3', 'Bouira', 'BOA', '1');
INSERT INTO `oc_zone` VALUES ('81', '3', 'Boumerdes', 'BMD', '1');
INSERT INTO `oc_zone` VALUES ('82', '3', 'Chlef', 'CHL', '1');
INSERT INTO `oc_zone` VALUES ('83', '3', 'Constantine', 'CON', '1');
INSERT INTO `oc_zone` VALUES ('84', '3', 'Djelfa', 'DJE', '1');
INSERT INTO `oc_zone` VALUES ('85', '3', 'El Bayadh', 'EBA', '1');
INSERT INTO `oc_zone` VALUES ('86', '3', 'El Oued', 'EOU', '1');
INSERT INTO `oc_zone` VALUES ('87', '3', 'El Tarf', 'ETA', '1');
INSERT INTO `oc_zone` VALUES ('88', '3', 'Ghardaia', 'GHA', '1');
INSERT INTO `oc_zone` VALUES ('89', '3', 'Guelma', 'GUE', '1');
INSERT INTO `oc_zone` VALUES ('90', '3', 'Illizi', 'ILL', '1');
INSERT INTO `oc_zone` VALUES ('91', '3', 'Jijel', 'JIJ', '1');
INSERT INTO `oc_zone` VALUES ('92', '3', 'Khenchela', 'KHE', '1');
INSERT INTO `oc_zone` VALUES ('93', '3', 'Laghouat', 'LAG', '1');
INSERT INTO `oc_zone` VALUES ('94', '3', 'Muaskar', 'MUA', '1');
INSERT INTO `oc_zone` VALUES ('95', '3', 'Medea', 'MED', '1');
INSERT INTO `oc_zone` VALUES ('96', '3', 'Mila', 'MIL', '1');
INSERT INTO `oc_zone` VALUES ('97', '3', 'Mostaganem', 'MOS', '1');
INSERT INTO `oc_zone` VALUES ('98', '3', 'M\'Sila', 'MSI', '1');
INSERT INTO `oc_zone` VALUES ('99', '3', 'Naama', 'NAA', '1');
INSERT INTO `oc_zone` VALUES ('100', '3', 'Oran', 'ORA', '1');
INSERT INTO `oc_zone` VALUES ('101', '3', 'Ouargla', 'OUA', '1');
INSERT INTO `oc_zone` VALUES ('102', '3', 'Oum el-Bouaghi', 'OEB', '1');
INSERT INTO `oc_zone` VALUES ('103', '3', 'Relizane', 'REL', '1');
INSERT INTO `oc_zone` VALUES ('104', '3', 'Saida', 'SAI', '1');
INSERT INTO `oc_zone` VALUES ('105', '3', 'Setif', 'SET', '1');
INSERT INTO `oc_zone` VALUES ('106', '3', 'Sidi Bel Abbes', 'SBA', '1');
INSERT INTO `oc_zone` VALUES ('107', '3', 'Skikda', 'SKI', '1');
INSERT INTO `oc_zone` VALUES ('108', '3', 'Souk Ahras', 'SAH', '1');
INSERT INTO `oc_zone` VALUES ('109', '3', 'Tamanghasset', 'TAM', '1');
INSERT INTO `oc_zone` VALUES ('110', '3', 'Tebessa', 'TEB', '1');
INSERT INTO `oc_zone` VALUES ('111', '3', 'Tiaret', 'TIA', '1');
INSERT INTO `oc_zone` VALUES ('112', '3', 'Tindouf', 'TIN', '1');
INSERT INTO `oc_zone` VALUES ('113', '3', 'Tipaza', 'TIP', '1');
INSERT INTO `oc_zone` VALUES ('114', '3', 'Tissemsilt', 'TIS', '1');
INSERT INTO `oc_zone` VALUES ('115', '3', 'Tizi Ouzou', 'TOU', '1');
INSERT INTO `oc_zone` VALUES ('116', '3', 'Tlemcen', 'TLE', '1');
INSERT INTO `oc_zone` VALUES ('117', '4', 'Eastern', 'E', '1');
INSERT INTO `oc_zone` VALUES ('118', '4', 'Manu\'a', 'M', '1');
INSERT INTO `oc_zone` VALUES ('119', '4', 'Rose Island', 'R', '1');
INSERT INTO `oc_zone` VALUES ('120', '4', 'Swains Island', 'S', '1');
INSERT INTO `oc_zone` VALUES ('121', '4', 'Western', 'W', '1');
INSERT INTO `oc_zone` VALUES ('122', '5', 'Andorra la Vella', 'ALV', '1');
INSERT INTO `oc_zone` VALUES ('123', '5', 'Canillo', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('124', '5', 'Encamp', 'ENC', '1');
INSERT INTO `oc_zone` VALUES ('125', '5', 'Escaldes-Engordany', 'ESE', '1');
INSERT INTO `oc_zone` VALUES ('126', '5', 'La Massana', 'LMA', '1');
INSERT INTO `oc_zone` VALUES ('127', '5', 'Ordino', 'ORD', '1');
INSERT INTO `oc_zone` VALUES ('128', '5', 'Sant Julia de Loria', 'SJL', '1');
INSERT INTO `oc_zone` VALUES ('129', '6', 'Bengo', 'BGO', '1');
INSERT INTO `oc_zone` VALUES ('130', '6', 'Benguela', 'BGU', '1');
INSERT INTO `oc_zone` VALUES ('131', '6', 'Bie', 'BIE', '1');
INSERT INTO `oc_zone` VALUES ('132', '6', 'Cabinda', 'CAB', '1');
INSERT INTO `oc_zone` VALUES ('133', '6', 'Cuando-Cubango', 'CCU', '1');
INSERT INTO `oc_zone` VALUES ('134', '6', 'Cuanza Norte', 'CNO', '1');
INSERT INTO `oc_zone` VALUES ('135', '6', 'Cuanza Sul', 'CUS', '1');
INSERT INTO `oc_zone` VALUES ('136', '6', 'Cunene', 'CNN', '1');
INSERT INTO `oc_zone` VALUES ('137', '6', 'Huambo', 'HUA', '1');
INSERT INTO `oc_zone` VALUES ('138', '6', 'Huila', 'HUI', '1');
INSERT INTO `oc_zone` VALUES ('139', '6', 'Luanda', 'LUA', '1');
INSERT INTO `oc_zone` VALUES ('140', '6', 'Lunda Norte', 'LNO', '1');
INSERT INTO `oc_zone` VALUES ('141', '6', 'Lunda Sul', 'LSU', '1');
INSERT INTO `oc_zone` VALUES ('142', '6', 'Malange', 'MAL', '1');
INSERT INTO `oc_zone` VALUES ('143', '6', 'Moxico', 'MOX', '1');
INSERT INTO `oc_zone` VALUES ('144', '6', 'Namibe', 'NAM', '1');
INSERT INTO `oc_zone` VALUES ('145', '6', 'Uige', 'UIG', '1');
INSERT INTO `oc_zone` VALUES ('146', '6', 'Zaire', 'ZAI', '1');
INSERT INTO `oc_zone` VALUES ('147', '9', 'Saint George', 'ASG', '1');
INSERT INTO `oc_zone` VALUES ('148', '9', 'Saint John', 'ASJ', '1');
INSERT INTO `oc_zone` VALUES ('149', '9', 'Saint Mary', 'ASM', '1');
INSERT INTO `oc_zone` VALUES ('150', '9', 'Saint Paul', 'ASL', '1');
INSERT INTO `oc_zone` VALUES ('151', '9', 'Saint Peter', 'ASR', '1');
INSERT INTO `oc_zone` VALUES ('152', '9', 'Saint Philip', 'ASH', '1');
INSERT INTO `oc_zone` VALUES ('153', '9', 'Barbuda', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('154', '9', 'Redonda', 'RED', '1');
INSERT INTO `oc_zone` VALUES ('155', '10', 'Antartida e Islas del Atlantico', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('156', '10', 'Buenos Aires', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('157', '10', 'Catamarca', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('158', '10', 'Chaco', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('159', '10', 'Chubut', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('160', '10', 'Cordoba', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('161', '10', 'Corrientes', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('162', '10', 'Distrito Federal', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('163', '10', 'Entre Rios', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('164', '10', 'Formosa', 'FO', '1');
INSERT INTO `oc_zone` VALUES ('165', '10', 'Jujuy', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('166', '10', 'La Pampa', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('167', '10', 'La Rioja', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('168', '10', 'Mendoza', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('169', '10', 'Misiones', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('170', '10', 'Neuquen', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('171', '10', 'Rio Negro', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('172', '10', 'Salta', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('173', '10', 'San Juan', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('174', '10', 'San Luis', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('175', '10', 'Santa Cruz', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('176', '10', 'Santa Fe', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('177', '10', 'Santiago del Estero', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('178', '10', 'Tierra del Fuego', 'TF', '1');
INSERT INTO `oc_zone` VALUES ('179', '10', 'Tucuman', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('180', '11', 'Aragatsotn', 'AGT', '1');
INSERT INTO `oc_zone` VALUES ('181', '11', 'Ararat', 'ARR', '1');
INSERT INTO `oc_zone` VALUES ('182', '11', 'Armavir', 'ARM', '1');
INSERT INTO `oc_zone` VALUES ('183', '11', 'Geghark\'unik\'', 'GEG', '1');
INSERT INTO `oc_zone` VALUES ('184', '11', 'Kotayk\'', 'KOT', '1');
INSERT INTO `oc_zone` VALUES ('185', '11', 'Lorri', 'LOR', '1');
INSERT INTO `oc_zone` VALUES ('186', '11', 'Shirak', 'SHI', '1');
INSERT INTO `oc_zone` VALUES ('187', '11', 'Syunik\'', 'SYU', '1');
INSERT INTO `oc_zone` VALUES ('188', '11', 'Tavush', 'TAV', '1');
INSERT INTO `oc_zone` VALUES ('189', '11', 'Vayots\' Dzor', 'VAY', '1');
INSERT INTO `oc_zone` VALUES ('190', '11', 'Yerevan', 'YER', '1');
INSERT INTO `oc_zone` VALUES ('191', '13', 'Australian Capital Territory', 'ACT', '1');
INSERT INTO `oc_zone` VALUES ('192', '13', 'New South Wales', 'NSW', '1');
INSERT INTO `oc_zone` VALUES ('193', '13', 'Northern Territory', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('194', '13', 'Queensland', 'QLD', '1');
INSERT INTO `oc_zone` VALUES ('195', '13', 'South Australia', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('196', '13', 'Tasmania', 'TAS', '1');
INSERT INTO `oc_zone` VALUES ('197', '13', 'Victoria', 'VIC', '1');
INSERT INTO `oc_zone` VALUES ('198', '13', 'Western Australia', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('199', '14', 'Burgenland', 'BUR', '1');
INSERT INTO `oc_zone` VALUES ('200', '14', 'Kärnten', 'KAR', '1');
INSERT INTO `oc_zone` VALUES ('201', '14', 'Nieder&ouml;sterreich', 'NOS', '1');
INSERT INTO `oc_zone` VALUES ('202', '14', 'Ober&ouml;sterreich', 'OOS', '1');
INSERT INTO `oc_zone` VALUES ('203', '14', 'Salzburg', 'SAL', '1');
INSERT INTO `oc_zone` VALUES ('204', '14', 'Steiermark', 'STE', '1');
INSERT INTO `oc_zone` VALUES ('205', '14', 'Tirol', 'TIR', '1');
INSERT INTO `oc_zone` VALUES ('206', '14', 'Vorarlberg', 'VOR', '1');
INSERT INTO `oc_zone` VALUES ('207', '14', 'Wien', 'WIE', '1');
INSERT INTO `oc_zone` VALUES ('208', '15', 'Ali Bayramli', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('209', '15', 'Abseron', 'ABS', '1');
INSERT INTO `oc_zone` VALUES ('210', '15', 'AgcabAdi', 'AGC', '1');
INSERT INTO `oc_zone` VALUES ('211', '15', 'Agdam', 'AGM', '1');
INSERT INTO `oc_zone` VALUES ('212', '15', 'Agdas', 'AGS', '1');
INSERT INTO `oc_zone` VALUES ('213', '15', 'Agstafa', 'AGA', '1');
INSERT INTO `oc_zone` VALUES ('214', '15', 'Agsu', 'AGU', '1');
INSERT INTO `oc_zone` VALUES ('215', '15', 'Astara', 'AST', '1');
INSERT INTO `oc_zone` VALUES ('216', '15', 'Baki', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('217', '15', 'BabAk', 'BAB', '1');
INSERT INTO `oc_zone` VALUES ('218', '15', 'BalakAn', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('219', '15', 'BArdA', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('220', '15', 'Beylaqan', 'BEY', '1');
INSERT INTO `oc_zone` VALUES ('221', '15', 'Bilasuvar', 'BIL', '1');
INSERT INTO `oc_zone` VALUES ('222', '15', 'Cabrayil', 'CAB', '1');
INSERT INTO `oc_zone` VALUES ('223', '15', 'Calilabab', 'CAL', '1');
INSERT INTO `oc_zone` VALUES ('224', '15', 'Culfa', 'CUL', '1');
INSERT INTO `oc_zone` VALUES ('225', '15', 'Daskasan', 'DAS', '1');
INSERT INTO `oc_zone` VALUES ('226', '15', 'Davaci', 'DAV', '1');
INSERT INTO `oc_zone` VALUES ('227', '15', 'Fuzuli', 'FUZ', '1');
INSERT INTO `oc_zone` VALUES ('228', '15', 'Ganca', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('229', '15', 'Gadabay', 'GAD', '1');
INSERT INTO `oc_zone` VALUES ('230', '15', 'Goranboy', 'GOR', '1');
INSERT INTO `oc_zone` VALUES ('231', '15', 'Goycay', 'GOY', '1');
INSERT INTO `oc_zone` VALUES ('232', '15', 'Haciqabul', 'HAC', '1');
INSERT INTO `oc_zone` VALUES ('233', '15', 'Imisli', 'IMI', '1');
INSERT INTO `oc_zone` VALUES ('234', '15', 'Ismayilli', 'ISM', '1');
INSERT INTO `oc_zone` VALUES ('235', '15', 'Kalbacar', 'KAL', '1');
INSERT INTO `oc_zone` VALUES ('236', '15', 'Kurdamir', 'KUR', '1');
INSERT INTO `oc_zone` VALUES ('237', '15', 'Lankaran', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('238', '15', 'Lacin', 'LAC', '1');
INSERT INTO `oc_zone` VALUES ('239', '15', 'Lankaran', 'LAN', '1');
INSERT INTO `oc_zone` VALUES ('240', '15', 'Lerik', 'LER', '1');
INSERT INTO `oc_zone` VALUES ('241', '15', 'Masalli', 'MAS', '1');
INSERT INTO `oc_zone` VALUES ('242', '15', 'Mingacevir', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('243', '15', 'Naftalan', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('244', '15', 'Neftcala', 'NEF', '1');
INSERT INTO `oc_zone` VALUES ('245', '15', 'Oguz', 'OGU', '1');
INSERT INTO `oc_zone` VALUES ('246', '15', 'Ordubad', 'ORD', '1');
INSERT INTO `oc_zone` VALUES ('247', '15', 'Qabala', 'QAB', '1');
INSERT INTO `oc_zone` VALUES ('248', '15', 'Qax', 'QAX', '1');
INSERT INTO `oc_zone` VALUES ('249', '15', 'Qazax', 'QAZ', '1');
INSERT INTO `oc_zone` VALUES ('250', '15', 'Qobustan', 'QOB', '1');
INSERT INTO `oc_zone` VALUES ('251', '15', 'Quba', 'QBA', '1');
INSERT INTO `oc_zone` VALUES ('252', '15', 'Qubadli', 'QBI', '1');
INSERT INTO `oc_zone` VALUES ('253', '15', 'Qusar', 'QUS', '1');
INSERT INTO `oc_zone` VALUES ('254', '15', 'Saki', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('255', '15', 'Saatli', 'SAT', '1');
INSERT INTO `oc_zone` VALUES ('256', '15', 'Sabirabad', 'SAB', '1');
INSERT INTO `oc_zone` VALUES ('257', '15', 'Sadarak', 'SAD', '1');
INSERT INTO `oc_zone` VALUES ('258', '15', 'Sahbuz', 'SAH', '1');
INSERT INTO `oc_zone` VALUES ('259', '15', 'Saki', 'SAK', '1');
INSERT INTO `oc_zone` VALUES ('260', '15', 'Salyan', 'SAL', '1');
INSERT INTO `oc_zone` VALUES ('261', '15', 'Sumqayit', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('262', '15', 'Samaxi', 'SMI', '1');
INSERT INTO `oc_zone` VALUES ('263', '15', 'Samkir', 'SKR', '1');
INSERT INTO `oc_zone` VALUES ('264', '15', 'Samux', 'SMX', '1');
INSERT INTO `oc_zone` VALUES ('265', '15', 'Sarur', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('266', '15', 'Siyazan', 'SIY', '1');
INSERT INTO `oc_zone` VALUES ('267', '15', 'Susa', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('268', '15', 'Susa', 'SUS', '1');
INSERT INTO `oc_zone` VALUES ('269', '15', 'Tartar', 'TAR', '1');
INSERT INTO `oc_zone` VALUES ('270', '15', 'Tovuz', 'TOV', '1');
INSERT INTO `oc_zone` VALUES ('271', '15', 'Ucar', 'UCA', '1');
INSERT INTO `oc_zone` VALUES ('272', '15', 'Xankandi', 'XA', '1');
INSERT INTO `oc_zone` VALUES ('273', '15', 'Xacmaz', 'XAC', '1');
INSERT INTO `oc_zone` VALUES ('274', '15', 'Xanlar', 'XAN', '1');
INSERT INTO `oc_zone` VALUES ('275', '15', 'Xizi', 'XIZ', '1');
INSERT INTO `oc_zone` VALUES ('276', '15', 'Xocali', 'XCI', '1');
INSERT INTO `oc_zone` VALUES ('277', '15', 'Xocavand', 'XVD', '1');
INSERT INTO `oc_zone` VALUES ('278', '15', 'Yardimli', 'YAR', '1');
INSERT INTO `oc_zone` VALUES ('279', '15', 'Yevlax', 'YEV', '1');
INSERT INTO `oc_zone` VALUES ('280', '15', 'Zangilan', 'ZAN', '1');
INSERT INTO `oc_zone` VALUES ('281', '15', 'Zaqatala', 'ZAQ', '1');
INSERT INTO `oc_zone` VALUES ('282', '15', 'Zardab', 'ZAR', '1');
INSERT INTO `oc_zone` VALUES ('283', '15', 'Naxcivan', 'NX', '1');
INSERT INTO `oc_zone` VALUES ('284', '16', 'Acklins', 'ACK', '1');
INSERT INTO `oc_zone` VALUES ('285', '16', 'Berry Islands', 'BER', '1');
INSERT INTO `oc_zone` VALUES ('286', '16', 'Bimini', 'BIM', '1');
INSERT INTO `oc_zone` VALUES ('287', '16', 'Black Point', 'BLK', '1');
INSERT INTO `oc_zone` VALUES ('288', '16', 'Cat Island', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('289', '16', 'Central Abaco', 'CAB', '1');
INSERT INTO `oc_zone` VALUES ('290', '16', 'Central Andros', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('291', '16', 'Central Eleuthera', 'CEL', '1');
INSERT INTO `oc_zone` VALUES ('292', '16', 'City of Freeport', 'FRE', '1');
INSERT INTO `oc_zone` VALUES ('293', '16', 'Crooked Island', 'CRO', '1');
INSERT INTO `oc_zone` VALUES ('294', '16', 'East Grand Bahama', 'EGB', '1');
INSERT INTO `oc_zone` VALUES ('295', '16', 'Exuma', 'EXU', '1');
INSERT INTO `oc_zone` VALUES ('296', '16', 'Grand Cay', 'GRD', '1');
INSERT INTO `oc_zone` VALUES ('297', '16', 'Harbour Island', 'HAR', '1');
INSERT INTO `oc_zone` VALUES ('298', '16', 'Hope Town', 'HOP', '1');
INSERT INTO `oc_zone` VALUES ('299', '16', 'Inagua', 'INA', '1');
INSERT INTO `oc_zone` VALUES ('300', '16', 'Long Island', 'LNG', '1');
INSERT INTO `oc_zone` VALUES ('301', '16', 'Mangrove Cay', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('302', '16', 'Mayaguana', 'MAY', '1');
INSERT INTO `oc_zone` VALUES ('303', '16', 'Moore\'s Island', 'MOO', '1');
INSERT INTO `oc_zone` VALUES ('304', '16', 'North Abaco', 'NAB', '1');
INSERT INTO `oc_zone` VALUES ('305', '16', 'North Andros', 'NAN', '1');
INSERT INTO `oc_zone` VALUES ('306', '16', 'North Eleuthera', 'NEL', '1');
INSERT INTO `oc_zone` VALUES ('307', '16', 'Ragged Island', 'RAG', '1');
INSERT INTO `oc_zone` VALUES ('308', '16', 'Rum Cay', 'RUM', '1');
INSERT INTO `oc_zone` VALUES ('309', '16', 'San Salvador', 'SAL', '1');
INSERT INTO `oc_zone` VALUES ('310', '16', 'South Abaco', 'SAB', '1');
INSERT INTO `oc_zone` VALUES ('311', '16', 'South Andros', 'SAN', '1');
INSERT INTO `oc_zone` VALUES ('312', '16', 'South Eleuthera', 'SEL', '1');
INSERT INTO `oc_zone` VALUES ('313', '16', 'Spanish Wells', 'SWE', '1');
INSERT INTO `oc_zone` VALUES ('314', '16', 'West Grand Bahama', 'WGB', '1');
INSERT INTO `oc_zone` VALUES ('315', '17', 'Capital', 'CAP', '1');
INSERT INTO `oc_zone` VALUES ('316', '17', 'Central', 'CEN', '1');
INSERT INTO `oc_zone` VALUES ('317', '17', 'Muharraq', 'MUH', '1');
INSERT INTO `oc_zone` VALUES ('318', '17', 'Northern', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('319', '17', 'Southern', 'SOU', '1');
INSERT INTO `oc_zone` VALUES ('320', '18', 'Barisal', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('321', '18', 'Chittagong', 'CHI', '1');
INSERT INTO `oc_zone` VALUES ('322', '18', 'Dhaka', 'DHA', '1');
INSERT INTO `oc_zone` VALUES ('323', '18', 'Khulna', 'KHU', '1');
INSERT INTO `oc_zone` VALUES ('324', '18', 'Rajshahi', 'RAJ', '1');
INSERT INTO `oc_zone` VALUES ('325', '18', 'Sylhet', 'SYL', '1');
INSERT INTO `oc_zone` VALUES ('326', '19', 'Christ Church', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('327', '19', 'Saint Andrew', 'AND', '1');
INSERT INTO `oc_zone` VALUES ('328', '19', 'Saint George', 'GEO', '1');
INSERT INTO `oc_zone` VALUES ('329', '19', 'Saint James', 'JAM', '1');
INSERT INTO `oc_zone` VALUES ('330', '19', 'Saint John', 'JOH', '1');
INSERT INTO `oc_zone` VALUES ('331', '19', 'Saint Joseph', 'JOS', '1');
INSERT INTO `oc_zone` VALUES ('332', '19', 'Saint Lucy', 'LUC', '1');
INSERT INTO `oc_zone` VALUES ('333', '19', 'Saint Michael', 'MIC', '1');
INSERT INTO `oc_zone` VALUES ('334', '19', 'Saint Peter', 'PET', '1');
INSERT INTO `oc_zone` VALUES ('335', '19', 'Saint Philip', 'PHI', '1');
INSERT INTO `oc_zone` VALUES ('336', '19', 'Saint Thomas', 'THO', '1');
INSERT INTO `oc_zone` VALUES ('337', '20', 'Brestskaya (Brest)', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('338', '20', 'Homyel\'skaya (Homyel\')', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('339', '20', 'Horad Minsk', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('340', '20', 'Hrodzyenskaya (Hrodna)', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('341', '20', 'Mahilyowskaya (Mahilyow)', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('342', '20', 'Minskaya', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('343', '20', 'Vitsyebskaya (Vitsyebsk)', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('344', '21', 'Antwerpen', 'VAN', '1');
INSERT INTO `oc_zone` VALUES ('345', '21', 'Brabant Wallon', 'WBR', '1');
INSERT INTO `oc_zone` VALUES ('346', '21', 'Hainaut', 'WHT', '1');
INSERT INTO `oc_zone` VALUES ('347', '21', 'Liège', 'WLG', '1');
INSERT INTO `oc_zone` VALUES ('348', '21', 'Limburg', 'VLI', '1');
INSERT INTO `oc_zone` VALUES ('349', '21', 'Luxembourg', 'WLX', '1');
INSERT INTO `oc_zone` VALUES ('350', '21', 'Namur', 'WNA', '1');
INSERT INTO `oc_zone` VALUES ('351', '21', 'Oost-Vlaanderen', 'VOV', '1');
INSERT INTO `oc_zone` VALUES ('352', '21', 'Vlaams Brabant', 'VBR', '1');
INSERT INTO `oc_zone` VALUES ('353', '21', 'West-Vlaanderen', 'VWV', '1');
INSERT INTO `oc_zone` VALUES ('354', '22', 'Belize', 'BZ', '1');
INSERT INTO `oc_zone` VALUES ('355', '22', 'Cayo', 'CY', '1');
INSERT INTO `oc_zone` VALUES ('356', '22', 'Corozal', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('357', '22', 'Orange Walk', 'OW', '1');
INSERT INTO `oc_zone` VALUES ('358', '22', 'Stann Creek', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('359', '22', 'Toledo', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('360', '23', 'Alibori', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('361', '23', 'Atakora', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('362', '23', 'Atlantique', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('363', '23', 'Borgou', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('364', '23', 'Collines', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('365', '23', 'Donga', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('366', '23', 'Kouffo', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('367', '23', 'Littoral', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('368', '23', 'Mono', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('369', '23', 'Oueme', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('370', '23', 'Plateau', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('371', '23', 'Zou', 'ZO', '1');
INSERT INTO `oc_zone` VALUES ('372', '24', 'Devonshire', 'DS', '1');
INSERT INTO `oc_zone` VALUES ('373', '24', 'Hamilton City', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('374', '24', 'Hamilton', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('375', '24', 'Paget', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('376', '24', 'Pembroke', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('377', '24', 'Saint George City', 'GC', '1');
INSERT INTO `oc_zone` VALUES ('378', '24', 'Saint George\'s', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('379', '24', 'Sandys', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('380', '24', 'Smith\'s', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('381', '24', 'Southampton', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('382', '24', 'Warwick', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('383', '25', 'Bumthang', 'BUM', '1');
INSERT INTO `oc_zone` VALUES ('384', '25', 'Chukha', 'CHU', '1');
INSERT INTO `oc_zone` VALUES ('385', '25', 'Dagana', 'DAG', '1');
INSERT INTO `oc_zone` VALUES ('386', '25', 'Gasa', 'GAS', '1');
INSERT INTO `oc_zone` VALUES ('387', '25', 'Haa', 'HAA', '1');
INSERT INTO `oc_zone` VALUES ('388', '25', 'Lhuntse', 'LHU', '1');
INSERT INTO `oc_zone` VALUES ('389', '25', 'Mongar', 'MON', '1');
INSERT INTO `oc_zone` VALUES ('390', '25', 'Paro', 'PAR', '1');
INSERT INTO `oc_zone` VALUES ('391', '25', 'Pemagatshel', 'PEM', '1');
INSERT INTO `oc_zone` VALUES ('392', '25', 'Punakha', 'PUN', '1');
INSERT INTO `oc_zone` VALUES ('393', '25', 'Samdrup Jongkhar', 'SJO', '1');
INSERT INTO `oc_zone` VALUES ('394', '25', 'Samtse', 'SAT', '1');
INSERT INTO `oc_zone` VALUES ('395', '25', 'Sarpang', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('396', '25', 'Thimphu', 'THI', '1');
INSERT INTO `oc_zone` VALUES ('397', '25', 'Trashigang', 'TRG', '1');
INSERT INTO `oc_zone` VALUES ('398', '25', 'Trashiyangste', 'TRY', '1');
INSERT INTO `oc_zone` VALUES ('399', '25', 'Trongsa', 'TRO', '1');
INSERT INTO `oc_zone` VALUES ('400', '25', 'Tsirang', 'TSI', '1');
INSERT INTO `oc_zone` VALUES ('401', '25', 'Wangdue Phodrang', 'WPH', '1');
INSERT INTO `oc_zone` VALUES ('402', '25', 'Zhemgang', 'ZHE', '1');
INSERT INTO `oc_zone` VALUES ('403', '26', 'Beni', 'BEN', '1');
INSERT INTO `oc_zone` VALUES ('404', '26', 'Chuquisaca', 'CHU', '1');
INSERT INTO `oc_zone` VALUES ('405', '26', 'Cochabamba', 'COC', '1');
INSERT INTO `oc_zone` VALUES ('406', '26', 'La Paz', 'LPZ', '1');
INSERT INTO `oc_zone` VALUES ('407', '26', 'Oruro', 'ORU', '1');
INSERT INTO `oc_zone` VALUES ('408', '26', 'Pando', 'PAN', '1');
INSERT INTO `oc_zone` VALUES ('409', '26', 'Potosi', 'POT', '1');
INSERT INTO `oc_zone` VALUES ('410', '26', 'Santa Cruz', 'SCZ', '1');
INSERT INTO `oc_zone` VALUES ('411', '26', 'Tarija', 'TAR', '1');
INSERT INTO `oc_zone` VALUES ('412', '27', 'Brcko district', 'BRO', '1');
INSERT INTO `oc_zone` VALUES ('413', '27', 'Unsko-Sanski Kanton', 'FUS', '1');
INSERT INTO `oc_zone` VALUES ('414', '27', 'Posavski Kanton', 'FPO', '1');
INSERT INTO `oc_zone` VALUES ('415', '27', 'Tuzlanski Kanton', 'FTU', '1');
INSERT INTO `oc_zone` VALUES ('416', '27', 'Zenicko-Dobojski Kanton', 'FZE', '1');
INSERT INTO `oc_zone` VALUES ('417', '27', 'Bosanskopodrinjski Kanton', 'FBP', '1');
INSERT INTO `oc_zone` VALUES ('418', '27', 'Srednjebosanski Kanton', 'FSB', '1');
INSERT INTO `oc_zone` VALUES ('419', '27', 'Hercegovacko-neretvanski Kanton', 'FHN', '1');
INSERT INTO `oc_zone` VALUES ('420', '27', 'Zapadnohercegovacka Zupanija', 'FZH', '1');
INSERT INTO `oc_zone` VALUES ('421', '27', 'Kanton Sarajevo', 'FSA', '1');
INSERT INTO `oc_zone` VALUES ('422', '27', 'Zapadnobosanska', 'FZA', '1');
INSERT INTO `oc_zone` VALUES ('423', '27', 'Banja Luka', 'SBL', '1');
INSERT INTO `oc_zone` VALUES ('424', '27', 'Doboj', 'SDO', '1');
INSERT INTO `oc_zone` VALUES ('425', '27', 'Bijeljina', 'SBI', '1');
INSERT INTO `oc_zone` VALUES ('426', '27', 'Vlasenica', 'SVL', '1');
INSERT INTO `oc_zone` VALUES ('427', '27', 'Sarajevo-Romanija or Sokolac', 'SSR', '1');
INSERT INTO `oc_zone` VALUES ('428', '27', 'Foca', 'SFO', '1');
INSERT INTO `oc_zone` VALUES ('429', '27', 'Trebinje', 'STR', '1');
INSERT INTO `oc_zone` VALUES ('430', '28', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('431', '28', 'Ghanzi', 'GH', '1');
INSERT INTO `oc_zone` VALUES ('432', '28', 'Kgalagadi', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('433', '28', 'Kgatleng', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('434', '28', 'Kweneng', 'KW', '1');
INSERT INTO `oc_zone` VALUES ('435', '28', 'Ngamiland', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('436', '28', 'North East', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('437', '28', 'North West', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('438', '28', 'South East', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('439', '28', 'Southern', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('440', '30', 'Acre', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('441', '30', 'Alagoas', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('442', '30', 'Amapá', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('443', '30', 'Amazonas', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('444', '30', 'Bahia', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('445', '30', 'Ceará', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('446', '30', 'Distrito Federal', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('447', '30', 'Espírito Santo', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('448', '30', 'Goiás', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('449', '30', 'Maranhão', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('450', '30', 'Mato Grosso', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('451', '30', 'Mato Grosso do Sul', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('452', '30', 'Minas Gerais', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('453', '30', 'Pará', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('454', '30', 'Paraíba', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('455', '30', 'Paraná', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('456', '30', 'Pernambuco', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('457', '30', 'Piauí', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('458', '30', 'Rio de Janeiro', 'RJ', '1');
INSERT INTO `oc_zone` VALUES ('459', '30', 'Rio Grande do Norte', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('460', '30', 'Rio Grande do Sul', 'RS', '1');
INSERT INTO `oc_zone` VALUES ('461', '30', 'Rondônia', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('462', '30', 'Roraima', 'RR', '1');
INSERT INTO `oc_zone` VALUES ('463', '30', 'Santa Catarina', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('464', '30', 'São Paulo', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('465', '30', 'Sergipe', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('466', '30', 'Tocantins', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('467', '31', 'Peros Banhos', 'PB', '1');
INSERT INTO `oc_zone` VALUES ('468', '31', 'Salomon Islands', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('469', '31', 'Nelsons Island', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('470', '31', 'Three Brothers', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('471', '31', 'Eagle Islands', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('472', '31', 'Danger Island', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('473', '31', 'Egmont Islands', 'EG', '1');
INSERT INTO `oc_zone` VALUES ('474', '31', 'Diego Garcia', 'DG', '1');
INSERT INTO `oc_zone` VALUES ('475', '32', 'Belait', 'BEL', '1');
INSERT INTO `oc_zone` VALUES ('476', '32', 'Brunei and Muara', 'BRM', '1');
INSERT INTO `oc_zone` VALUES ('477', '32', 'Temburong', 'TEM', '1');
INSERT INTO `oc_zone` VALUES ('478', '32', 'Tutong', 'TUT', '1');
INSERT INTO `oc_zone` VALUES ('479', '33', 'Blagoevgrad', '', '1');
INSERT INTO `oc_zone` VALUES ('480', '33', 'Burgas', '', '1');
INSERT INTO `oc_zone` VALUES ('481', '33', 'Dobrich', '', '1');
INSERT INTO `oc_zone` VALUES ('482', '33', 'Gabrovo', '', '1');
INSERT INTO `oc_zone` VALUES ('483', '33', 'Haskovo', '', '1');
INSERT INTO `oc_zone` VALUES ('484', '33', 'Kardjali', '', '1');
INSERT INTO `oc_zone` VALUES ('485', '33', 'Kyustendil', '', '1');
INSERT INTO `oc_zone` VALUES ('486', '33', 'Lovech', '', '1');
INSERT INTO `oc_zone` VALUES ('487', '33', 'Montana', '', '1');
INSERT INTO `oc_zone` VALUES ('488', '33', 'Pazardjik', '', '1');
INSERT INTO `oc_zone` VALUES ('489', '33', 'Pernik', '', '1');
INSERT INTO `oc_zone` VALUES ('490', '33', 'Pleven', '', '1');
INSERT INTO `oc_zone` VALUES ('491', '33', 'Plovdiv', '', '1');
INSERT INTO `oc_zone` VALUES ('492', '33', 'Razgrad', '', '1');
INSERT INTO `oc_zone` VALUES ('493', '33', 'Shumen', '', '1');
INSERT INTO `oc_zone` VALUES ('494', '33', 'Silistra', '', '1');
INSERT INTO `oc_zone` VALUES ('495', '33', 'Sliven', '', '1');
INSERT INTO `oc_zone` VALUES ('496', '33', 'Smolyan', '', '1');
INSERT INTO `oc_zone` VALUES ('497', '33', 'Sofia', '', '1');
INSERT INTO `oc_zone` VALUES ('498', '33', 'Sofia - town', '', '1');
INSERT INTO `oc_zone` VALUES ('499', '33', 'Stara Zagora', '', '1');
INSERT INTO `oc_zone` VALUES ('500', '33', 'Targovishte', '', '1');
INSERT INTO `oc_zone` VALUES ('501', '33', 'Varna', '', '1');
INSERT INTO `oc_zone` VALUES ('502', '33', 'Veliko Tarnovo', '', '1');
INSERT INTO `oc_zone` VALUES ('503', '33', 'Vidin', '', '1');
INSERT INTO `oc_zone` VALUES ('504', '33', 'Vratza', '', '1');
INSERT INTO `oc_zone` VALUES ('505', '33', 'Yambol', '', '1');
INSERT INTO `oc_zone` VALUES ('506', '34', 'Bale', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('507', '34', 'Bam', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('508', '34', 'Banwa', 'BAN', '1');
INSERT INTO `oc_zone` VALUES ('509', '34', 'Bazega', 'BAZ', '1');
INSERT INTO `oc_zone` VALUES ('510', '34', 'Bougouriba', 'BOR', '1');
INSERT INTO `oc_zone` VALUES ('511', '34', 'Boulgou', 'BLG', '1');
INSERT INTO `oc_zone` VALUES ('512', '34', 'Boulkiemde', 'BOK', '1');
INSERT INTO `oc_zone` VALUES ('513', '34', 'Comoe', 'COM', '1');
INSERT INTO `oc_zone` VALUES ('514', '34', 'Ganzourgou', 'GAN', '1');
INSERT INTO `oc_zone` VALUES ('515', '34', 'Gnagna', 'GNA', '1');
INSERT INTO `oc_zone` VALUES ('516', '34', 'Gourma', 'GOU', '1');
INSERT INTO `oc_zone` VALUES ('517', '34', 'Houet', 'HOU', '1');
INSERT INTO `oc_zone` VALUES ('518', '34', 'Ioba', 'IOA', '1');
INSERT INTO `oc_zone` VALUES ('519', '34', 'Kadiogo', 'KAD', '1');
INSERT INTO `oc_zone` VALUES ('520', '34', 'Kenedougou', 'KEN', '1');
INSERT INTO `oc_zone` VALUES ('521', '34', 'Komondjari', 'KOD', '1');
INSERT INTO `oc_zone` VALUES ('522', '34', 'Kompienga', 'KOP', '1');
INSERT INTO `oc_zone` VALUES ('523', '34', 'Kossi', 'KOS', '1');
INSERT INTO `oc_zone` VALUES ('524', '34', 'Koulpelogo', 'KOL', '1');
INSERT INTO `oc_zone` VALUES ('525', '34', 'Kouritenga', 'KOT', '1');
INSERT INTO `oc_zone` VALUES ('526', '34', 'Kourweogo', 'KOW', '1');
INSERT INTO `oc_zone` VALUES ('527', '34', 'Leraba', 'LER', '1');
INSERT INTO `oc_zone` VALUES ('528', '34', 'Loroum', 'LOR', '1');
INSERT INTO `oc_zone` VALUES ('529', '34', 'Mouhoun', 'MOU', '1');
INSERT INTO `oc_zone` VALUES ('530', '34', 'Nahouri', 'NAH', '1');
INSERT INTO `oc_zone` VALUES ('531', '34', 'Namentenga', 'NAM', '1');
INSERT INTO `oc_zone` VALUES ('532', '34', 'Nayala', 'NAY', '1');
INSERT INTO `oc_zone` VALUES ('533', '34', 'Noumbiel', 'NOU', '1');
INSERT INTO `oc_zone` VALUES ('534', '34', 'Oubritenga', 'OUB', '1');
INSERT INTO `oc_zone` VALUES ('535', '34', 'Oudalan', 'OUD', '1');
INSERT INTO `oc_zone` VALUES ('536', '34', 'Passore', 'PAS', '1');
INSERT INTO `oc_zone` VALUES ('537', '34', 'Poni', 'PON', '1');
INSERT INTO `oc_zone` VALUES ('538', '34', 'Sanguie', 'SAG', '1');
INSERT INTO `oc_zone` VALUES ('539', '34', 'Sanmatenga', 'SAM', '1');
INSERT INTO `oc_zone` VALUES ('540', '34', 'Seno', 'SEN', '1');
INSERT INTO `oc_zone` VALUES ('541', '34', 'Sissili', 'SIS', '1');
INSERT INTO `oc_zone` VALUES ('542', '34', 'Soum', 'SOM', '1');
INSERT INTO `oc_zone` VALUES ('543', '34', 'Sourou', 'SOR', '1');
INSERT INTO `oc_zone` VALUES ('544', '34', 'Tapoa', 'TAP', '1');
INSERT INTO `oc_zone` VALUES ('545', '34', 'Tuy', 'TUY', '1');
INSERT INTO `oc_zone` VALUES ('546', '34', 'Yagha', 'YAG', '1');
INSERT INTO `oc_zone` VALUES ('547', '34', 'Yatenga', 'YAT', '1');
INSERT INTO `oc_zone` VALUES ('548', '34', 'Ziro', 'ZIR', '1');
INSERT INTO `oc_zone` VALUES ('549', '34', 'Zondoma', 'ZOD', '1');
INSERT INTO `oc_zone` VALUES ('550', '34', 'Zoundweogo', 'ZOW', '1');
INSERT INTO `oc_zone` VALUES ('551', '35', 'Bubanza', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('552', '35', 'Bujumbura', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('553', '35', 'Bururi', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('554', '35', 'Cankuzo', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('555', '35', 'Cibitoke', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('556', '35', 'Gitega', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('557', '35', 'Karuzi', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('558', '35', 'Kayanza', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('559', '35', 'Kirundo', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('560', '35', 'Makamba', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('561', '35', 'Muramvya', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('562', '35', 'Muyinga', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('563', '35', 'Mwaro', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('564', '35', 'Ngozi', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('565', '35', 'Rutana', 'RT', '1');
INSERT INTO `oc_zone` VALUES ('566', '35', 'Ruyigi', 'RY', '1');
INSERT INTO `oc_zone` VALUES ('567', '36', 'Phnom Penh', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('568', '36', 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('569', '36', 'Pailin', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('570', '36', 'Keb', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('571', '36', 'Banteay Meanchey', 'BM', '1');
INSERT INTO `oc_zone` VALUES ('572', '36', 'Battambang', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('573', '36', 'Kampong Cham', 'KM', '1');
INSERT INTO `oc_zone` VALUES ('574', '36', 'Kampong Chhnang', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('575', '36', 'Kampong Speu', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('576', '36', 'Kampong Som', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('577', '36', 'Kampong Thom', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('578', '36', 'Kampot', 'KP', '1');
INSERT INTO `oc_zone` VALUES ('579', '36', 'Kandal', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('580', '36', 'Kaoh Kong', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('581', '36', 'Kratie', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('582', '36', 'Mondul Kiri', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('583', '36', 'Oddar Meancheay', 'OM', '1');
INSERT INTO `oc_zone` VALUES ('584', '36', 'Pursat', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('585', '36', 'Preah Vihear', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('586', '36', 'Prey Veng', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('587', '36', 'Ratanak Kiri', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('588', '36', 'Siemreap', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('589', '36', 'Stung Treng', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('590', '36', 'Svay Rieng', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('591', '36', 'Takeo', 'TK', '1');
INSERT INTO `oc_zone` VALUES ('592', '37', 'Adamawa (Adamaoua)', 'ADA', '1');
INSERT INTO `oc_zone` VALUES ('593', '37', 'Centre', 'CEN', '1');
INSERT INTO `oc_zone` VALUES ('594', '37', 'East (Est)', 'EST', '1');
INSERT INTO `oc_zone` VALUES ('595', '37', 'Extreme North (Extreme-Nord)', 'EXN', '1');
INSERT INTO `oc_zone` VALUES ('596', '37', 'Littoral', 'LIT', '1');
INSERT INTO `oc_zone` VALUES ('597', '37', 'North (Nord)', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('598', '37', 'Northwest (Nord-Ouest)', 'NOT', '1');
INSERT INTO `oc_zone` VALUES ('599', '37', 'West (Ouest)', 'OUE', '1');
INSERT INTO `oc_zone` VALUES ('600', '37', 'South (Sud)', 'SUD', '1');
INSERT INTO `oc_zone` VALUES ('601', '37', 'Southwest (Sud-Ouest).', 'SOU', '1');
INSERT INTO `oc_zone` VALUES ('602', '38', 'Alberta', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('603', '38', 'British Columbia', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('604', '38', 'Manitoba', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('605', '38', 'New Brunswick', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('606', '38', 'Newfoundland and Labrador', 'NL', '1');
INSERT INTO `oc_zone` VALUES ('607', '38', 'Northwest Territories', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('608', '38', 'Nova Scotia', 'NS', '1');
INSERT INTO `oc_zone` VALUES ('609', '38', 'Nunavut', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('610', '38', 'Ontario', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('611', '38', 'Prince Edward Island', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('612', '38', 'Qu&eacute;bec', 'QC', '1');
INSERT INTO `oc_zone` VALUES ('613', '38', 'Saskatchewan', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('614', '38', 'Yukon Territory', 'YT', '1');
INSERT INTO `oc_zone` VALUES ('615', '39', 'Boa Vista', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('616', '39', 'Brava', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('617', '39', 'Calheta de Sao Miguel', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('618', '39', 'Maio', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('619', '39', 'Mosteiros', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('620', '39', 'Paul', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('621', '39', 'Porto Novo', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('622', '39', 'Praia', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('623', '39', 'Ribeira Grande', 'RG', '1');
INSERT INTO `oc_zone` VALUES ('624', '39', 'Sal', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('625', '39', 'Santa Catarina', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('626', '39', 'Santa Cruz', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('627', '39', 'Sao Domingos', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('628', '39', 'Sao Filipe', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('629', '39', 'Sao Nicolau', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('630', '39', 'Sao Vicente', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('631', '39', 'Tarrafal', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('632', '40', 'Creek', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('633', '40', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('634', '40', 'Midland', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('635', '40', 'South Town', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('636', '40', 'Spot Bay', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('637', '40', 'Stake Bay', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('638', '40', 'West End', 'WD', '1');
INSERT INTO `oc_zone` VALUES ('639', '40', 'Western', 'WN', '1');
INSERT INTO `oc_zone` VALUES ('640', '41', 'Bamingui-Bangoran', 'BBA', '1');
INSERT INTO `oc_zone` VALUES ('641', '41', 'Basse-Kotto', 'BKO', '1');
INSERT INTO `oc_zone` VALUES ('642', '41', 'Haute-Kotto', 'HKO', '1');
INSERT INTO `oc_zone` VALUES ('643', '41', 'Haut-Mbomou', 'HMB', '1');
INSERT INTO `oc_zone` VALUES ('644', '41', 'Kemo', 'KEM', '1');
INSERT INTO `oc_zone` VALUES ('645', '41', 'Lobaye', 'LOB', '1');
INSERT INTO `oc_zone` VALUES ('646', '41', 'Mambere-KadeÔ', 'MKD', '1');
INSERT INTO `oc_zone` VALUES ('647', '41', 'Mbomou', 'MBO', '1');
INSERT INTO `oc_zone` VALUES ('648', '41', 'Nana-Mambere', 'NMM', '1');
INSERT INTO `oc_zone` VALUES ('649', '41', 'Ombella-M\'Poko', 'OMP', '1');
INSERT INTO `oc_zone` VALUES ('650', '41', 'Ouaka', 'OUK', '1');
INSERT INTO `oc_zone` VALUES ('651', '41', 'Ouham', 'OUH', '1');
INSERT INTO `oc_zone` VALUES ('652', '41', 'Ouham-Pende', 'OPE', '1');
INSERT INTO `oc_zone` VALUES ('653', '41', 'Vakaga', 'VAK', '1');
INSERT INTO `oc_zone` VALUES ('654', '41', 'Nana-Grebizi', 'NGR', '1');
INSERT INTO `oc_zone` VALUES ('655', '41', 'Sangha-Mbaere', 'SMB', '1');
INSERT INTO `oc_zone` VALUES ('656', '41', 'Bangui', 'BAN', '1');
INSERT INTO `oc_zone` VALUES ('657', '42', 'Batha', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('658', '42', 'Biltine', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('659', '42', 'Borkou-Ennedi-Tibesti', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('660', '42', 'Chari-Baguirmi', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('661', '42', 'Guera', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('662', '42', 'Kanem', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('663', '42', 'Lac', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('664', '42', 'Logone Occidental', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('665', '42', 'Logone Oriental', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('666', '42', 'Mayo-Kebbi', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('667', '42', 'Moyen-Chari', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('668', '42', 'Ouaddai', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('669', '42', 'Salamat', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('670', '42', 'Tandjile', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('671', '43', 'Aisen del General Carlos Ibanez', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('672', '43', 'Antofagasta', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('673', '43', 'Araucania', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('674', '43', 'Atacama', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('675', '43', 'Bio-Bio', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('676', '43', 'Coquimbo', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('677', '43', 'Libertador General Bernardo O\'Higgins', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('678', '43', 'Los Lagos', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('679', '43', 'Magallanes y de la Antartica Chilena', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('680', '43', 'Maule', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('681', '43', 'Region Metropolitana', 'RM', '1');
INSERT INTO `oc_zone` VALUES ('682', '43', 'Tarapaca', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('683', '43', 'Valparaiso', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('684', '44', 'Anhui', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('685', '44', 'Beijing', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('686', '44', 'Chongqing', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('687', '44', 'Fujian', 'FU', '1');
INSERT INTO `oc_zone` VALUES ('688', '44', 'Gansu', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('689', '44', 'Guangdong', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('690', '44', 'Guangxi', 'GX', '1');
INSERT INTO `oc_zone` VALUES ('691', '44', 'Guizhou', 'GZ', '1');
INSERT INTO `oc_zone` VALUES ('692', '44', 'Hainan', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('693', '44', 'Hebei', 'HB', '1');
INSERT INTO `oc_zone` VALUES ('694', '44', 'Heilongjiang', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('695', '44', 'Henan', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('696', '44', 'Hong Kong', 'HK', '1');
INSERT INTO `oc_zone` VALUES ('697', '44', 'Hubei', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('698', '44', 'Hunan', 'HN', '1');
INSERT INTO `oc_zone` VALUES ('699', '44', 'Inner Mongolia', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('700', '44', 'Jiangsu', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('701', '44', 'Jiangxi', 'JX', '1');
INSERT INTO `oc_zone` VALUES ('702', '44', 'Jilin', 'JL', '1');
INSERT INTO `oc_zone` VALUES ('703', '44', 'Liaoning', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('704', '44', 'Macau', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('705', '44', 'Ningxia', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('706', '44', 'Shaanxi', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('707', '44', 'Shandong', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('708', '44', 'Shanghai', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('709', '44', 'Shanxi', 'SX', '1');
INSERT INTO `oc_zone` VALUES ('710', '44', 'Sichuan', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('711', '44', 'Tianjin', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('712', '44', 'Xinjiang', 'XI', '1');
INSERT INTO `oc_zone` VALUES ('713', '44', 'Yunnan', 'YU', '1');
INSERT INTO `oc_zone` VALUES ('714', '44', 'Zhejiang', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('715', '46', 'Direction Island', 'D', '1');
INSERT INTO `oc_zone` VALUES ('716', '46', 'Home Island', 'H', '1');
INSERT INTO `oc_zone` VALUES ('717', '46', 'Horsburgh Island', 'O', '1');
INSERT INTO `oc_zone` VALUES ('718', '46', 'South Island', 'S', '1');
INSERT INTO `oc_zone` VALUES ('719', '46', 'West Island', 'W', '1');
INSERT INTO `oc_zone` VALUES ('720', '47', 'Amazonas', 'AMZ', '1');
INSERT INTO `oc_zone` VALUES ('721', '47', 'Antioquia', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('722', '47', 'Arauca', 'ARA', '1');
INSERT INTO `oc_zone` VALUES ('723', '47', 'Atlantico', 'ATL', '1');
INSERT INTO `oc_zone` VALUES ('724', '47', 'Bogota D.C.', 'BDC', '1');
INSERT INTO `oc_zone` VALUES ('725', '47', 'Bolivar', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('726', '47', 'Boyaca', 'BOY', '1');
INSERT INTO `oc_zone` VALUES ('727', '47', 'Caldas', 'CAL', '1');
INSERT INTO `oc_zone` VALUES ('728', '47', 'Caqueta', 'CAQ', '1');
INSERT INTO `oc_zone` VALUES ('729', '47', 'Casanare', 'CAS', '1');
INSERT INTO `oc_zone` VALUES ('730', '47', 'Cauca', 'CAU', '1');
INSERT INTO `oc_zone` VALUES ('731', '47', 'Cesar', 'CES', '1');
INSERT INTO `oc_zone` VALUES ('732', '47', 'Choco', 'CHO', '1');
INSERT INTO `oc_zone` VALUES ('733', '47', 'Cordoba', 'COR', '1');
INSERT INTO `oc_zone` VALUES ('734', '47', 'Cundinamarca', 'CAM', '1');
INSERT INTO `oc_zone` VALUES ('735', '47', 'Guainia', 'GNA', '1');
INSERT INTO `oc_zone` VALUES ('736', '47', 'Guajira', 'GJR', '1');
INSERT INTO `oc_zone` VALUES ('737', '47', 'Guaviare', 'GVR', '1');
INSERT INTO `oc_zone` VALUES ('738', '47', 'Huila', 'HUI', '1');
INSERT INTO `oc_zone` VALUES ('739', '47', 'Magdalena', 'MAG', '1');
INSERT INTO `oc_zone` VALUES ('740', '47', 'Meta', 'MET', '1');
INSERT INTO `oc_zone` VALUES ('741', '47', 'Narino', 'NAR', '1');
INSERT INTO `oc_zone` VALUES ('742', '47', 'Norte de Santander', 'NDS', '1');
INSERT INTO `oc_zone` VALUES ('743', '47', 'Putumayo', 'PUT', '1');
INSERT INTO `oc_zone` VALUES ('744', '47', 'Quindio', 'QUI', '1');
INSERT INTO `oc_zone` VALUES ('745', '47', 'Risaralda', 'RIS', '1');
INSERT INTO `oc_zone` VALUES ('746', '47', 'San Andres y Providencia', 'SAP', '1');
INSERT INTO `oc_zone` VALUES ('747', '47', 'Santander', 'SAN', '1');
INSERT INTO `oc_zone` VALUES ('748', '47', 'Sucre', 'SUC', '1');
INSERT INTO `oc_zone` VALUES ('749', '47', 'Tolima', 'TOL', '1');
INSERT INTO `oc_zone` VALUES ('750', '47', 'Valle del Cauca', 'VDC', '1');
INSERT INTO `oc_zone` VALUES ('751', '47', 'Vaupes', 'VAU', '1');
INSERT INTO `oc_zone` VALUES ('752', '47', 'Vichada', 'VIC', '1');
INSERT INTO `oc_zone` VALUES ('753', '48', 'Grande Comore', 'G', '1');
INSERT INTO `oc_zone` VALUES ('754', '48', 'Anjouan', 'A', '1');
INSERT INTO `oc_zone` VALUES ('755', '48', 'Moheli', 'M', '1');
INSERT INTO `oc_zone` VALUES ('756', '49', 'Bouenza', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('757', '49', 'Brazzaville', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('758', '49', 'Cuvette', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('759', '49', 'Cuvette-Ouest', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('760', '49', 'Kouilou', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('761', '49', 'Lekoumou', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('762', '49', 'Likouala', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('763', '49', 'Niari', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('764', '49', 'Plateaux', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('765', '49', 'Pool', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('766', '49', 'Sangha', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('767', '50', 'Pukapuka', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('768', '50', 'Rakahanga', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('769', '50', 'Manihiki', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('770', '50', 'Penrhyn', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('771', '50', 'Nassau Island', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('772', '50', 'Surwarrow', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('773', '50', 'Palmerston', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('774', '50', 'Aitutaki', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('775', '50', 'Manuae', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('776', '50', 'Takutea', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('777', '50', 'Mitiaro', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('778', '50', 'Atiu', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('779', '50', 'Mauke', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('780', '50', 'Rarotonga', 'RR', '1');
INSERT INTO `oc_zone` VALUES ('781', '50', 'Mangaia', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('782', '51', 'Alajuela', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('783', '51', 'Cartago', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('784', '51', 'Guanacaste', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('785', '51', 'Heredia', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('786', '51', 'Limon', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('787', '51', 'Puntarenas', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('788', '51', 'San Jose', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('789', '52', 'Abengourou', 'ABE', '1');
INSERT INTO `oc_zone` VALUES ('790', '52', 'Abidjan', 'ABI', '1');
INSERT INTO `oc_zone` VALUES ('791', '52', 'Aboisso', 'ABO', '1');
INSERT INTO `oc_zone` VALUES ('792', '52', 'Adiake', 'ADI', '1');
INSERT INTO `oc_zone` VALUES ('793', '52', 'Adzope', 'ADZ', '1');
INSERT INTO `oc_zone` VALUES ('794', '52', 'Agboville', 'AGB', '1');
INSERT INTO `oc_zone` VALUES ('795', '52', 'Agnibilekrou', 'AGN', '1');
INSERT INTO `oc_zone` VALUES ('796', '52', 'Alepe', 'ALE', '1');
INSERT INTO `oc_zone` VALUES ('797', '52', 'Bocanda', 'BOC', '1');
INSERT INTO `oc_zone` VALUES ('798', '52', 'Bangolo', 'BAN', '1');
INSERT INTO `oc_zone` VALUES ('799', '52', 'Beoumi', 'BEO', '1');
INSERT INTO `oc_zone` VALUES ('800', '52', 'Biankouma', 'BIA', '1');
INSERT INTO `oc_zone` VALUES ('801', '52', 'Bondoukou', 'BDK', '1');
INSERT INTO `oc_zone` VALUES ('802', '52', 'Bongouanou', 'BGN', '1');
INSERT INTO `oc_zone` VALUES ('803', '52', 'Bouafle', 'BFL', '1');
INSERT INTO `oc_zone` VALUES ('804', '52', 'Bouake', 'BKE', '1');
INSERT INTO `oc_zone` VALUES ('805', '52', 'Bouna', 'BNA', '1');
INSERT INTO `oc_zone` VALUES ('806', '52', 'Boundiali', 'BDL', '1');
INSERT INTO `oc_zone` VALUES ('807', '52', 'Dabakala', 'DKL', '1');
INSERT INTO `oc_zone` VALUES ('808', '52', 'Dabou', 'DBU', '1');
INSERT INTO `oc_zone` VALUES ('809', '52', 'Daloa', 'DAL', '1');
INSERT INTO `oc_zone` VALUES ('810', '52', 'Danane', 'DAN', '1');
INSERT INTO `oc_zone` VALUES ('811', '52', 'Daoukro', 'DAO', '1');
INSERT INTO `oc_zone` VALUES ('812', '52', 'Dimbokro', 'DIM', '1');
INSERT INTO `oc_zone` VALUES ('813', '52', 'Divo', 'DIV', '1');
INSERT INTO `oc_zone` VALUES ('814', '52', 'Duekoue', 'DUE', '1');
INSERT INTO `oc_zone` VALUES ('815', '52', 'Ferkessedougou', 'FER', '1');
INSERT INTO `oc_zone` VALUES ('816', '52', 'Gagnoa', 'GAG', '1');
INSERT INTO `oc_zone` VALUES ('817', '52', 'Grand-Bassam', 'GBA', '1');
INSERT INTO `oc_zone` VALUES ('818', '52', 'Grand-Lahou', 'GLA', '1');
INSERT INTO `oc_zone` VALUES ('819', '52', 'Guiglo', 'GUI', '1');
INSERT INTO `oc_zone` VALUES ('820', '52', 'Issia', 'ISS', '1');
INSERT INTO `oc_zone` VALUES ('821', '52', 'Jacqueville', 'JAC', '1');
INSERT INTO `oc_zone` VALUES ('822', '52', 'Katiola', 'KAT', '1');
INSERT INTO `oc_zone` VALUES ('823', '52', 'Korhogo', 'KOR', '1');
INSERT INTO `oc_zone` VALUES ('824', '52', 'Lakota', 'LAK', '1');
INSERT INTO `oc_zone` VALUES ('825', '52', 'Man', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('826', '52', 'Mankono', 'MKN', '1');
INSERT INTO `oc_zone` VALUES ('827', '52', 'Mbahiakro', 'MBA', '1');
INSERT INTO `oc_zone` VALUES ('828', '52', 'Odienne', 'ODI', '1');
INSERT INTO `oc_zone` VALUES ('829', '52', 'Oume', 'OUM', '1');
INSERT INTO `oc_zone` VALUES ('830', '52', 'Sakassou', 'SAK', '1');
INSERT INTO `oc_zone` VALUES ('831', '52', 'San-Pedro', 'SPE', '1');
INSERT INTO `oc_zone` VALUES ('832', '52', 'Sassandra', 'SAS', '1');
INSERT INTO `oc_zone` VALUES ('833', '52', 'Seguela', 'SEG', '1');
INSERT INTO `oc_zone` VALUES ('834', '52', 'Sinfra', 'SIN', '1');
INSERT INTO `oc_zone` VALUES ('835', '52', 'Soubre', 'SOU', '1');
INSERT INTO `oc_zone` VALUES ('836', '52', 'Tabou', 'TAB', '1');
INSERT INTO `oc_zone` VALUES ('837', '52', 'Tanda', 'TAN', '1');
INSERT INTO `oc_zone` VALUES ('838', '52', 'Tiebissou', 'TIE', '1');
INSERT INTO `oc_zone` VALUES ('839', '52', 'Tingrela', 'TIN', '1');
INSERT INTO `oc_zone` VALUES ('840', '52', 'Tiassale', 'TIA', '1');
INSERT INTO `oc_zone` VALUES ('841', '52', 'Touba', 'TBA', '1');
INSERT INTO `oc_zone` VALUES ('842', '52', 'Toulepleu', 'TLP', '1');
INSERT INTO `oc_zone` VALUES ('843', '52', 'Toumodi', 'TMD', '1');
INSERT INTO `oc_zone` VALUES ('844', '52', 'Vavoua', 'VAV', '1');
INSERT INTO `oc_zone` VALUES ('845', '52', 'Yamoussoukro', 'YAM', '1');
INSERT INTO `oc_zone` VALUES ('846', '52', 'Zuenoula', 'ZUE', '1');
INSERT INTO `oc_zone` VALUES ('847', '53', 'Bjelovarsko-bilogorska', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('848', '53', 'Grad Zagreb', 'GZ', '1');
INSERT INTO `oc_zone` VALUES ('849', '53', 'Dubrovačko-neretvanska', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('850', '53', 'Istarska', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('851', '53', 'Karlovačka', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('852', '53', 'Koprivničko-križevačka', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('853', '53', 'Krapinsko-zagorska', 'KZ', '1');
INSERT INTO `oc_zone` VALUES ('854', '53', 'Ličko-senjska', 'LS', '1');
INSERT INTO `oc_zone` VALUES ('855', '53', 'Međimurska', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('856', '53', 'Osječko-baranjska', 'OB', '1');
INSERT INTO `oc_zone` VALUES ('857', '53', 'Požeško-slavonska', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('858', '53', 'Primorsko-goranska', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('859', '53', 'Šibensko-kninska', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('860', '53', 'Sisačko-moslavačka', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('861', '53', 'Brodsko-posavska', 'BP', '1');
INSERT INTO `oc_zone` VALUES ('862', '53', 'Splitsko-dalmatinska', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('863', '53', 'Varaždinska', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('864', '53', 'Virovitičko-podravska', 'VP', '1');
INSERT INTO `oc_zone` VALUES ('865', '53', 'Vukovarsko-srijemska', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('866', '53', 'Zadarska', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('867', '53', 'Zagrebačka', 'ZG', '1');
INSERT INTO `oc_zone` VALUES ('868', '54', 'Camaguey', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('869', '54', 'Ciego de Avila', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('870', '54', 'Cienfuegos', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('871', '54', 'Ciudad de La Habana', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('872', '54', 'Granma', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('873', '54', 'Guantanamo', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('874', '54', 'Holguin', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('875', '54', 'Isla de la Juventud', 'IJ', '1');
INSERT INTO `oc_zone` VALUES ('876', '54', 'La Habana', 'LH', '1');
INSERT INTO `oc_zone` VALUES ('877', '54', 'Las Tunas', 'LT', '1');
INSERT INTO `oc_zone` VALUES ('878', '54', 'Matanzas', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('879', '54', 'Pinar del Rio', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('880', '54', 'Sancti Spiritus', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('881', '54', 'Santiago de Cuba', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('882', '54', 'Villa Clara', 'VC', '1');
INSERT INTO `oc_zone` VALUES ('883', '55', 'Famagusta', 'F', '1');
INSERT INTO `oc_zone` VALUES ('884', '55', 'Kyrenia', 'K', '1');
INSERT INTO `oc_zone` VALUES ('885', '55', 'Larnaca', 'A', '1');
INSERT INTO `oc_zone` VALUES ('886', '55', 'Limassol', 'I', '1');
INSERT INTO `oc_zone` VALUES ('887', '55', 'Nicosia', 'N', '1');
INSERT INTO `oc_zone` VALUES ('888', '55', 'Paphos', 'P', '1');
INSERT INTO `oc_zone` VALUES ('889', '56', 'Ústecký', 'U', '1');
INSERT INTO `oc_zone` VALUES ('890', '56', 'Jihočeský', 'C', '1');
INSERT INTO `oc_zone` VALUES ('891', '56', 'Jihomoravský', 'B', '1');
INSERT INTO `oc_zone` VALUES ('892', '56', 'Karlovarský', 'K', '1');
INSERT INTO `oc_zone` VALUES ('893', '56', 'Královehradecký', 'H', '1');
INSERT INTO `oc_zone` VALUES ('894', '56', 'Liberecký', 'L', '1');
INSERT INTO `oc_zone` VALUES ('895', '56', 'Moravskoslezský', 'T', '1');
INSERT INTO `oc_zone` VALUES ('896', '56', 'Olomoucký', 'M', '1');
INSERT INTO `oc_zone` VALUES ('897', '56', 'Pardubický', 'E', '1');
INSERT INTO `oc_zone` VALUES ('898', '56', 'Plzeňský', 'P', '1');
INSERT INTO `oc_zone` VALUES ('899', '56', 'Praha', 'A', '1');
INSERT INTO `oc_zone` VALUES ('900', '56', 'Středočeský', 'S', '1');
INSERT INTO `oc_zone` VALUES ('901', '56', 'Vysočina', 'J', '1');
INSERT INTO `oc_zone` VALUES ('902', '56', 'Zlínský', 'Z', '1');
INSERT INTO `oc_zone` VALUES ('903', '57', 'Arhus', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('904', '57', 'Bornholm', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('905', '57', 'Copenhagen', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('906', '57', 'Faroe Islands', 'FO', '1');
INSERT INTO `oc_zone` VALUES ('907', '57', 'Frederiksborg', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('908', '57', 'Fyn', 'FY', '1');
INSERT INTO `oc_zone` VALUES ('909', '57', 'Kobenhavn', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('910', '57', 'Nordjylland', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('911', '57', 'Ribe', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('912', '57', 'Ringkobing', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('913', '57', 'Roskilde', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('914', '57', 'Sonderjylland', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('915', '57', 'Storstrom', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('916', '57', 'Vejle', 'VK', '1');
INSERT INTO `oc_zone` VALUES ('917', '57', 'Vestj&aelig;lland', 'VJ', '1');
INSERT INTO `oc_zone` VALUES ('918', '57', 'Viborg', 'VB', '1');
INSERT INTO `oc_zone` VALUES ('919', '58', '\'Ali Sabih', 'S', '1');
INSERT INTO `oc_zone` VALUES ('920', '58', 'Dikhil', 'K', '1');
INSERT INTO `oc_zone` VALUES ('921', '58', 'Djibouti', 'J', '1');
INSERT INTO `oc_zone` VALUES ('922', '58', 'Obock', 'O', '1');
INSERT INTO `oc_zone` VALUES ('923', '58', 'Tadjoura', 'T', '1');
INSERT INTO `oc_zone` VALUES ('924', '59', 'Saint Andrew Parish', 'AND', '1');
INSERT INTO `oc_zone` VALUES ('925', '59', 'Saint David Parish', 'DAV', '1');
INSERT INTO `oc_zone` VALUES ('926', '59', 'Saint George Parish', 'GEO', '1');
INSERT INTO `oc_zone` VALUES ('927', '59', 'Saint John Parish', 'JOH', '1');
INSERT INTO `oc_zone` VALUES ('928', '59', 'Saint Joseph Parish', 'JOS', '1');
INSERT INTO `oc_zone` VALUES ('929', '59', 'Saint Luke Parish', 'LUK', '1');
INSERT INTO `oc_zone` VALUES ('930', '59', 'Saint Mark Parish', 'MAR', '1');
INSERT INTO `oc_zone` VALUES ('931', '59', 'Saint Patrick Parish', 'PAT', '1');
INSERT INTO `oc_zone` VALUES ('932', '59', 'Saint Paul Parish', 'PAU', '1');
INSERT INTO `oc_zone` VALUES ('933', '59', 'Saint Peter Parish', 'PET', '1');
INSERT INTO `oc_zone` VALUES ('934', '60', 'Distrito Nacional', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('935', '60', 'Azua', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('936', '60', 'Baoruco', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('937', '60', 'Barahona', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('938', '60', 'Dajabon', 'DJ', '1');
INSERT INTO `oc_zone` VALUES ('939', '60', 'Duarte', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('940', '60', 'Elias Pina', 'EL', '1');
INSERT INTO `oc_zone` VALUES ('941', '60', 'El Seybo', 'SY', '1');
INSERT INTO `oc_zone` VALUES ('942', '60', 'Espaillat', 'ET', '1');
INSERT INTO `oc_zone` VALUES ('943', '60', 'Hato Mayor', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('944', '60', 'Independencia', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('945', '60', 'La Altagracia', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('946', '60', 'La Romana', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('947', '60', 'La Vega', 'VE', '1');
INSERT INTO `oc_zone` VALUES ('948', '60', 'Maria Trinidad Sanchez', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('949', '60', 'Monsenor Nouel', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('950', '60', 'Monte Cristi', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('951', '60', 'Monte Plata', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('952', '60', 'Pedernales', 'PD', '1');
INSERT INTO `oc_zone` VALUES ('953', '60', 'Peravia (Bani)', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('954', '60', 'Puerto Plata', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('955', '60', 'Salcedo', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('956', '60', 'Samana', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('957', '60', 'Sanchez Ramirez', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('958', '60', 'San Cristobal', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('959', '60', 'San Jose de Ocoa', 'JO', '1');
INSERT INTO `oc_zone` VALUES ('960', '60', 'San Juan', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('961', '60', 'San Pedro de Macoris', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('962', '60', 'Santiago', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('963', '60', 'Santiago Rodriguez', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('964', '60', 'Santo Domingo', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('965', '60', 'Valverde', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('966', '61', 'Aileu', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('967', '61', 'Ainaro', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('968', '61', 'Baucau', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('969', '61', 'Bobonaro', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('970', '61', 'Cova Lima', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('971', '61', 'Dili', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('972', '61', 'Ermera', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('973', '61', 'Lautem', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('974', '61', 'Liquica', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('975', '61', 'Manatuto', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('976', '61', 'Manufahi', 'MF', '1');
INSERT INTO `oc_zone` VALUES ('977', '61', 'Oecussi', 'OE', '1');
INSERT INTO `oc_zone` VALUES ('978', '61', 'Viqueque', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('979', '62', 'Azuay', 'AZU', '1');
INSERT INTO `oc_zone` VALUES ('980', '62', 'Bolivar', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('981', '62', 'Ca&ntilde;ar', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('982', '62', 'Carchi', 'CAR', '1');
INSERT INTO `oc_zone` VALUES ('983', '62', 'Chimborazo', 'CHI', '1');
INSERT INTO `oc_zone` VALUES ('984', '62', 'Cotopaxi', 'COT', '1');
INSERT INTO `oc_zone` VALUES ('985', '62', 'El Oro', 'EOR', '1');
INSERT INTO `oc_zone` VALUES ('986', '62', 'Esmeraldas', 'ESM', '1');
INSERT INTO `oc_zone` VALUES ('987', '62', 'Gal&aacute;pagos', 'GPS', '1');
INSERT INTO `oc_zone` VALUES ('988', '62', 'Guayas', 'GUA', '1');
INSERT INTO `oc_zone` VALUES ('989', '62', 'Imbabura', 'IMB', '1');
INSERT INTO `oc_zone` VALUES ('990', '62', 'Loja', 'LOJ', '1');
INSERT INTO `oc_zone` VALUES ('991', '62', 'Los Rios', 'LRO', '1');
INSERT INTO `oc_zone` VALUES ('992', '62', 'Manab&iacute;', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('993', '62', 'Morona Santiago', 'MSA', '1');
INSERT INTO `oc_zone` VALUES ('994', '62', 'Napo', 'NAP', '1');
INSERT INTO `oc_zone` VALUES ('995', '62', 'Orellana', 'ORE', '1');
INSERT INTO `oc_zone` VALUES ('996', '62', 'Pastaza', 'PAS', '1');
INSERT INTO `oc_zone` VALUES ('997', '62', 'Pichincha', 'PIC', '1');
INSERT INTO `oc_zone` VALUES ('998', '62', 'Sucumb&iacute;os', 'SUC', '1');
INSERT INTO `oc_zone` VALUES ('999', '62', 'Tungurahua', 'TUN', '1');
INSERT INTO `oc_zone` VALUES ('1000', '62', 'Zamora Chinchipe', 'ZCH', '1');
INSERT INTO `oc_zone` VALUES ('1001', '63', 'Ad Daqahliyah', 'DHY', '1');
INSERT INTO `oc_zone` VALUES ('1002', '63', 'Al Bahr al Ahmar', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('1003', '63', 'Al Buhayrah', 'BHY', '1');
INSERT INTO `oc_zone` VALUES ('1004', '63', 'Al Fayyum', 'FYM', '1');
INSERT INTO `oc_zone` VALUES ('1005', '63', 'Al Gharbiyah', 'GBY', '1');
INSERT INTO `oc_zone` VALUES ('1006', '63', 'Al Iskandariyah', 'IDR', '1');
INSERT INTO `oc_zone` VALUES ('1007', '63', 'Al Isma\'iliyah', 'IML', '1');
INSERT INTO `oc_zone` VALUES ('1008', '63', 'Al Jizah', 'JZH', '1');
INSERT INTO `oc_zone` VALUES ('1009', '63', 'Al Minufiyah', 'MFY', '1');
INSERT INTO `oc_zone` VALUES ('1010', '63', 'Al Minya', 'MNY', '1');
INSERT INTO `oc_zone` VALUES ('1011', '63', 'Al Qahirah', 'QHR', '1');
INSERT INTO `oc_zone` VALUES ('1012', '63', 'Al Qalyubiyah', 'QLY', '1');
INSERT INTO `oc_zone` VALUES ('1013', '63', 'Al Wadi al Jadid', 'WJD', '1');
INSERT INTO `oc_zone` VALUES ('1014', '63', 'Ash Sharqiyah', 'SHQ', '1');
INSERT INTO `oc_zone` VALUES ('1015', '63', 'As Suways', 'SWY', '1');
INSERT INTO `oc_zone` VALUES ('1016', '63', 'Aswan', 'ASW', '1');
INSERT INTO `oc_zone` VALUES ('1017', '63', 'Asyut', 'ASY', '1');
INSERT INTO `oc_zone` VALUES ('1018', '63', 'Bani Suwayf', 'BSW', '1');
INSERT INTO `oc_zone` VALUES ('1019', '63', 'Bur Sa\'id', 'BSD', '1');
INSERT INTO `oc_zone` VALUES ('1020', '63', 'Dumyat', 'DMY', '1');
INSERT INTO `oc_zone` VALUES ('1021', '63', 'Janub Sina\'', 'JNS', '1');
INSERT INTO `oc_zone` VALUES ('1022', '63', 'Kafr ash Shaykh', 'KSH', '1');
INSERT INTO `oc_zone` VALUES ('1023', '63', 'Matruh', 'MAT', '1');
INSERT INTO `oc_zone` VALUES ('1024', '63', 'Qina', 'QIN', '1');
INSERT INTO `oc_zone` VALUES ('1025', '63', 'Shamal Sina\'', 'SHS', '1');
INSERT INTO `oc_zone` VALUES ('1026', '63', 'Suhaj', 'SUH', '1');
INSERT INTO `oc_zone` VALUES ('1027', '64', 'Ahuachapan', 'AH', '1');
INSERT INTO `oc_zone` VALUES ('1028', '64', 'Cabanas', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1029', '64', 'Chalatenango', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1030', '64', 'Cuscatlan', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('1031', '64', 'La Libertad', 'LB', '1');
INSERT INTO `oc_zone` VALUES ('1032', '64', 'La Paz', 'PZ', '1');
INSERT INTO `oc_zone` VALUES ('1033', '64', 'La Union', 'UN', '1');
INSERT INTO `oc_zone` VALUES ('1034', '64', 'Morazan', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('1035', '64', 'San Miguel', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1036', '64', 'San Salvador', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('1037', '64', 'San Vicente', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('1038', '64', 'Santa Ana', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1039', '64', 'Sonsonate', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1040', '64', 'Usulutan', 'US', '1');
INSERT INTO `oc_zone` VALUES ('1041', '65', 'Provincia Annobon', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('1042', '65', 'Provincia Bioko Norte', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('1043', '65', 'Provincia Bioko Sur', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1044', '65', 'Provincia Centro Sur', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('1045', '65', 'Provincia Kie-Ntem', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('1046', '65', 'Provincia Litoral', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('1047', '65', 'Provincia Wele-Nzas', 'WN', '1');
INSERT INTO `oc_zone` VALUES ('1048', '66', 'Central (Maekel)', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1049', '66', 'Anseba (Keren)', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1050', '66', 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', '1');
INSERT INTO `oc_zone` VALUES ('1051', '66', 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('1052', '66', 'Southern (Debub)', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('1053', '66', 'Gash-Barka (Barentu)', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('1054', '67', 'Harjumaa (Tallinn)', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1055', '67', 'Hiiumaa (Kardla)', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('1056', '67', 'Ida-Virumaa (Johvi)', 'IV', '1');
INSERT INTO `oc_zone` VALUES ('1057', '67', 'Jarvamaa (Paide)', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1058', '67', 'Jogevamaa (Jogeva)', 'JO', '1');
INSERT INTO `oc_zone` VALUES ('1059', '67', 'Laane-Virumaa (Rakvere)', 'LV', '1');
INSERT INTO `oc_zone` VALUES ('1060', '67', 'Laanemaa (Haapsalu)', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1061', '67', 'Parnumaa (Parnu)', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1062', '67', 'Polvamaa (Polva)', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('1063', '67', 'Raplamaa (Rapla)', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('1064', '67', 'Saaremaa (Kuessaare)', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1065', '67', 'Tartumaa (Tartu)', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('1066', '67', 'Valgamaa (Valga)', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('1067', '67', 'Viljandimaa (Viljandi)', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('1068', '67', 'Vorumaa (Voru)', 'VO', '1');
INSERT INTO `oc_zone` VALUES ('1069', '68', 'Afar', 'AF', '1');
INSERT INTO `oc_zone` VALUES ('1070', '68', 'Amhara', 'AH', '1');
INSERT INTO `oc_zone` VALUES ('1071', '68', 'Benishangul-Gumaz', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('1072', '68', 'Gambela', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('1073', '68', 'Hariai', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('1074', '68', 'Oromia', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('1075', '68', 'Somali', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1076', '68', 'Southern Nations - Nationalities and Peoples Region', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1077', '68', 'Tigray', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('1078', '68', 'Addis Ababa', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('1079', '68', 'Dire Dawa', 'DD', '1');
INSERT INTO `oc_zone` VALUES ('1080', '71', 'Central Division', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1081', '71', 'Northern Division', 'N', '1');
INSERT INTO `oc_zone` VALUES ('1082', '71', 'Eastern Division', 'E', '1');
INSERT INTO `oc_zone` VALUES ('1083', '71', 'Western Division', 'W', '1');
INSERT INTO `oc_zone` VALUES ('1084', '71', 'Rotuma', 'R', '1');
INSERT INTO `oc_zone` VALUES ('1085', '72', 'Ahvenanmaan lääni', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1086', '72', 'Etelä-Suomen lääni', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('1087', '72', 'Itä-Suomen lääni', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('1088', '72', 'Länsi-Suomen lääni', 'LS', '1');
INSERT INTO `oc_zone` VALUES ('1089', '72', 'Lapin lääni', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1090', '72', 'Oulun lääni', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('1114', '74', 'Ain', '01', '1');
INSERT INTO `oc_zone` VALUES ('1115', '74', 'Aisne', '02', '1');
INSERT INTO `oc_zone` VALUES ('1116', '74', 'Allier', '03', '1');
INSERT INTO `oc_zone` VALUES ('1117', '74', 'Alpes de Haute Provence', '04', '1');
INSERT INTO `oc_zone` VALUES ('1118', '74', 'Hautes-Alpes', '05', '1');
INSERT INTO `oc_zone` VALUES ('1119', '74', 'Alpes Maritimes', '06', '1');
INSERT INTO `oc_zone` VALUES ('1120', '74', 'Ard&egrave;che', '07', '1');
INSERT INTO `oc_zone` VALUES ('1121', '74', 'Ardennes', '08', '1');
INSERT INTO `oc_zone` VALUES ('1122', '74', 'Ari&egrave;ge', '09', '1');
INSERT INTO `oc_zone` VALUES ('1123', '74', 'Aube', '10', '1');
INSERT INTO `oc_zone` VALUES ('1124', '74', 'Aude', '11', '1');
INSERT INTO `oc_zone` VALUES ('1125', '74', 'Aveyron', '12', '1');
INSERT INTO `oc_zone` VALUES ('1126', '74', 'Bouches du Rh&ocirc;ne', '13', '1');
INSERT INTO `oc_zone` VALUES ('1127', '74', 'Calvados', '14', '1');
INSERT INTO `oc_zone` VALUES ('1128', '74', 'Cantal', '15', '1');
INSERT INTO `oc_zone` VALUES ('1129', '74', 'Charente', '16', '1');
INSERT INTO `oc_zone` VALUES ('1130', '74', 'Charente Maritime', '17', '1');
INSERT INTO `oc_zone` VALUES ('1131', '74', 'Cher', '18', '1');
INSERT INTO `oc_zone` VALUES ('1132', '74', 'Corr&egrave;ze', '19', '1');
INSERT INTO `oc_zone` VALUES ('1133', '74', 'Corse du Sud', '2A', '1');
INSERT INTO `oc_zone` VALUES ('1134', '74', 'Haute Corse', '2B', '1');
INSERT INTO `oc_zone` VALUES ('1135', '74', 'C&ocirc;te d&#039;or', '21', '1');
INSERT INTO `oc_zone` VALUES ('1136', '74', 'C&ocirc;tes d&#039;Armor', '22', '1');
INSERT INTO `oc_zone` VALUES ('1137', '74', 'Creuse', '23', '1');
INSERT INTO `oc_zone` VALUES ('1138', '74', 'Dordogne', '24', '1');
INSERT INTO `oc_zone` VALUES ('1139', '74', 'Doubs', '25', '1');
INSERT INTO `oc_zone` VALUES ('1140', '74', 'Dr&ocirc;me', '26', '1');
INSERT INTO `oc_zone` VALUES ('1141', '74', 'Eure', '27', '1');
INSERT INTO `oc_zone` VALUES ('1142', '74', 'Eure et Loir', '28', '1');
INSERT INTO `oc_zone` VALUES ('1143', '74', 'Finist&egrave;re', '29', '1');
INSERT INTO `oc_zone` VALUES ('1144', '74', 'Gard', '30', '1');
INSERT INTO `oc_zone` VALUES ('1145', '74', 'Haute Garonne', '31', '1');
INSERT INTO `oc_zone` VALUES ('1146', '74', 'Gers', '32', '1');
INSERT INTO `oc_zone` VALUES ('1147', '74', 'Gironde', '33', '1');
INSERT INTO `oc_zone` VALUES ('1148', '74', 'H&eacute;rault', '34', '1');
INSERT INTO `oc_zone` VALUES ('1149', '74', 'Ille et Vilaine', '35', '1');
INSERT INTO `oc_zone` VALUES ('1150', '74', 'Indre', '36', '1');
INSERT INTO `oc_zone` VALUES ('1151', '74', 'Indre et Loire', '37', '1');
INSERT INTO `oc_zone` VALUES ('1152', '74', 'Is&eacute;re', '38', '1');
INSERT INTO `oc_zone` VALUES ('1153', '74', 'Jura', '39', '1');
INSERT INTO `oc_zone` VALUES ('1154', '74', 'Landes', '40', '1');
INSERT INTO `oc_zone` VALUES ('1155', '74', 'Loir et Cher', '41', '1');
INSERT INTO `oc_zone` VALUES ('1156', '74', 'Loire', '42', '1');
INSERT INTO `oc_zone` VALUES ('1157', '74', 'Haute Loire', '43', '1');
INSERT INTO `oc_zone` VALUES ('1158', '74', 'Loire Atlantique', '44', '1');
INSERT INTO `oc_zone` VALUES ('1159', '74', 'Loiret', '45', '1');
INSERT INTO `oc_zone` VALUES ('1160', '74', 'Lot', '46', '1');
INSERT INTO `oc_zone` VALUES ('1161', '74', 'Lot et Garonne', '47', '1');
INSERT INTO `oc_zone` VALUES ('1162', '74', 'Loz&egrave;re', '48', '1');
INSERT INTO `oc_zone` VALUES ('1163', '74', 'Maine et Loire', '49', '1');
INSERT INTO `oc_zone` VALUES ('1164', '74', 'Manche', '50', '1');
INSERT INTO `oc_zone` VALUES ('1165', '74', 'Marne', '51', '1');
INSERT INTO `oc_zone` VALUES ('1166', '74', 'Haute Marne', '52', '1');
INSERT INTO `oc_zone` VALUES ('1167', '74', 'Mayenne', '53', '1');
INSERT INTO `oc_zone` VALUES ('1168', '74', 'Meurthe et Moselle', '54', '1');
INSERT INTO `oc_zone` VALUES ('1169', '74', 'Meuse', '55', '1');
INSERT INTO `oc_zone` VALUES ('1170', '74', 'Morbihan', '56', '1');
INSERT INTO `oc_zone` VALUES ('1171', '74', 'Moselle', '57', '1');
INSERT INTO `oc_zone` VALUES ('1172', '74', 'Ni&egrave;vre', '58', '1');
INSERT INTO `oc_zone` VALUES ('1173', '74', 'Nord', '59', '1');
INSERT INTO `oc_zone` VALUES ('1174', '74', 'Oise', '60', '1');
INSERT INTO `oc_zone` VALUES ('1175', '74', 'Orne', '61', '1');
INSERT INTO `oc_zone` VALUES ('1176', '74', 'Pas de Calais', '62', '1');
INSERT INTO `oc_zone` VALUES ('1177', '74', 'Puy de D&ocirc;me', '63', '1');
INSERT INTO `oc_zone` VALUES ('1178', '74', 'Pyr&eacute;n&eacute;es Atlantiques', '64', '1');
INSERT INTO `oc_zone` VALUES ('1179', '74', 'Hautes Pyr&eacute;n&eacute;es', '65', '1');
INSERT INTO `oc_zone` VALUES ('1180', '74', 'Pyr&eacute;n&eacute;es Orientales', '66', '1');
INSERT INTO `oc_zone` VALUES ('1181', '74', 'Bas Rhin', '67', '1');
INSERT INTO `oc_zone` VALUES ('1182', '74', 'Haut Rhin', '68', '1');
INSERT INTO `oc_zone` VALUES ('1183', '74', 'Rh&ocirc;ne', '69', '1');
INSERT INTO `oc_zone` VALUES ('1184', '74', 'Haute Sa&ocirc;ne', '70', '1');
INSERT INTO `oc_zone` VALUES ('1185', '74', 'Sa&ocirc;ne et Loire', '71', '1');
INSERT INTO `oc_zone` VALUES ('1186', '74', 'Sarthe', '72', '1');
INSERT INTO `oc_zone` VALUES ('1187', '74', 'Savoie', '73', '1');
INSERT INTO `oc_zone` VALUES ('1188', '74', 'Haute Savoie', '74', '1');
INSERT INTO `oc_zone` VALUES ('1189', '74', 'Paris', '75', '1');
INSERT INTO `oc_zone` VALUES ('1190', '74', 'Seine Maritime', '76', '1');
INSERT INTO `oc_zone` VALUES ('1191', '74', 'Seine et Marne', '77', '1');
INSERT INTO `oc_zone` VALUES ('1192', '74', 'Yvelines', '78', '1');
INSERT INTO `oc_zone` VALUES ('1193', '74', 'Deux S&egrave;vres', '79', '1');
INSERT INTO `oc_zone` VALUES ('1194', '74', 'Somme', '80', '1');
INSERT INTO `oc_zone` VALUES ('1195', '74', 'Tarn', '81', '1');
INSERT INTO `oc_zone` VALUES ('1196', '74', 'Tarn et Garonne', '82', '1');
INSERT INTO `oc_zone` VALUES ('1197', '74', 'Var', '83', '1');
INSERT INTO `oc_zone` VALUES ('1198', '74', 'Vaucluse', '84', '1');
INSERT INTO `oc_zone` VALUES ('1199', '74', 'Vend&eacute;e', '85', '1');
INSERT INTO `oc_zone` VALUES ('1200', '74', 'Vienne', '86', '1');
INSERT INTO `oc_zone` VALUES ('1201', '74', 'Haute Vienne', '87', '1');
INSERT INTO `oc_zone` VALUES ('1202', '74', 'Vosges', '88', '1');
INSERT INTO `oc_zone` VALUES ('1203', '74', 'Yonne', '89', '1');
INSERT INTO `oc_zone` VALUES ('1204', '74', 'Territoire de Belfort', '90', '1');
INSERT INTO `oc_zone` VALUES ('1205', '74', 'Essonne', '91', '1');
INSERT INTO `oc_zone` VALUES ('1206', '74', 'Hauts de Seine', '92', '1');
INSERT INTO `oc_zone` VALUES ('1207', '74', 'Seine St-Denis', '93', '1');
INSERT INTO `oc_zone` VALUES ('1208', '74', 'Val de Marne', '94', '1');
INSERT INTO `oc_zone` VALUES ('1209', '74', 'Val d\'Oise', '95', '1');
INSERT INTO `oc_zone` VALUES ('1210', '76', 'Archipel des Marquises', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1211', '76', 'Archipel des Tuamotu', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1212', '76', 'Archipel des Tubuai', 'I', '1');
INSERT INTO `oc_zone` VALUES ('1213', '76', 'Iles du Vent', 'V', '1');
INSERT INTO `oc_zone` VALUES ('1214', '76', 'Iles Sous-le-Vent', 'S', '1');
INSERT INTO `oc_zone` VALUES ('1215', '77', 'Iles Crozet', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1216', '77', 'Iles Kerguelen', 'K', '1');
INSERT INTO `oc_zone` VALUES ('1217', '77', 'Ile Amsterdam', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1218', '77', 'Ile Saint-Paul', 'P', '1');
INSERT INTO `oc_zone` VALUES ('1219', '77', 'Adelie Land', 'D', '1');
INSERT INTO `oc_zone` VALUES ('1220', '78', 'Estuaire', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('1221', '78', 'Haut-Ogooue', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('1222', '78', 'Moyen-Ogooue', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('1223', '78', 'Ngounie', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('1224', '78', 'Nyanga', 'NY', '1');
INSERT INTO `oc_zone` VALUES ('1225', '78', 'Ogooue-Ivindo', 'OI', '1');
INSERT INTO `oc_zone` VALUES ('1226', '78', 'Ogooue-Lolo', 'OL', '1');
INSERT INTO `oc_zone` VALUES ('1227', '78', 'Ogooue-Maritime', 'OM', '1');
INSERT INTO `oc_zone` VALUES ('1228', '78', 'Woleu-Ntem', 'WN', '1');
INSERT INTO `oc_zone` VALUES ('1229', '79', 'Banjul', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('1230', '79', 'Basse', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1231', '79', 'Brikama', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('1232', '79', 'Janjangbure', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1233', '79', 'Kanifeng', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1234', '79', 'Kerewan', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1235', '79', 'Kuntaur', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1236', '79', 'Mansakonko', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1237', '79', 'Lower River', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('1238', '79', 'Central River', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('1239', '79', 'North Bank', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('1240', '79', 'Upper River', 'UR', '1');
INSERT INTO `oc_zone` VALUES ('1241', '79', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1242', '80', 'Abkhazia', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('1243', '80', 'Ajaria', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1244', '80', 'Tbilisi', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('1245', '80', 'Guria', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1246', '80', 'Imereti', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('1247', '80', 'Kakheti', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1248', '80', 'Kvemo Kartli', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('1249', '80', 'Mtskheta-Mtianeti', 'MM', '1');
INSERT INTO `oc_zone` VALUES ('1250', '80', 'Racha Lechkhumi and Kvemo Svanet', 'RL', '1');
INSERT INTO `oc_zone` VALUES ('1251', '80', 'Samegrelo-Zemo Svaneti', 'SZ', '1');
INSERT INTO `oc_zone` VALUES ('1252', '80', 'Samtskhe-Javakheti', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('1253', '80', 'Shida Kartli', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('1254', '81', 'Baden-W&uuml;rttemberg', 'BAW', '1');
INSERT INTO `oc_zone` VALUES ('1255', '81', 'Bayern', 'BAY', '1');
INSERT INTO `oc_zone` VALUES ('1256', '81', 'Berlin', 'BER', '1');
INSERT INTO `oc_zone` VALUES ('1257', '81', 'Brandenburg', 'BRG', '1');
INSERT INTO `oc_zone` VALUES ('1258', '81', 'Bremen', 'BRE', '1');
INSERT INTO `oc_zone` VALUES ('1259', '81', 'Hamburg', 'HAM', '1');
INSERT INTO `oc_zone` VALUES ('1260', '81', 'Hessen', 'HES', '1');
INSERT INTO `oc_zone` VALUES ('1261', '81', 'Mecklenburg-Vorpommern', 'MEC', '1');
INSERT INTO `oc_zone` VALUES ('1262', '81', 'Niedersachsen', 'NDS', '1');
INSERT INTO `oc_zone` VALUES ('1263', '81', 'Nordrhein-Westfalen', 'NRW', '1');
INSERT INTO `oc_zone` VALUES ('1264', '81', 'Rheinland-Pfalz', 'RHE', '1');
INSERT INTO `oc_zone` VALUES ('1265', '81', 'Saarland', 'SAR', '1');
INSERT INTO `oc_zone` VALUES ('1266', '81', 'Sachsen', 'SAS', '1');
INSERT INTO `oc_zone` VALUES ('1267', '81', 'Sachsen-Anhalt', 'SAC', '1');
INSERT INTO `oc_zone` VALUES ('1268', '81', 'Schleswig-Holstein', 'SCN', '1');
INSERT INTO `oc_zone` VALUES ('1269', '81', 'Th&uuml;ringen', 'THE', '1');
INSERT INTO `oc_zone` VALUES ('1270', '82', 'Ashanti Region', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1271', '82', 'Brong-Ahafo Region', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1272', '82', 'Central Region', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('1273', '82', 'Eastern Region', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('1274', '82', 'Greater Accra Region', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1275', '82', 'Northern Region', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('1276', '82', 'Upper East Region', 'UE', '1');
INSERT INTO `oc_zone` VALUES ('1277', '82', 'Upper West Region', 'UW', '1');
INSERT INTO `oc_zone` VALUES ('1278', '82', 'Volta Region', 'VO', '1');
INSERT INTO `oc_zone` VALUES ('1279', '82', 'Western Region', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1280', '84', 'Attica', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1281', '84', 'Central Greece', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('1282', '84', 'Central Macedonia', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1283', '84', 'Crete', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('1284', '84', 'East Macedonia and Thrace', 'EM', '1');
INSERT INTO `oc_zone` VALUES ('1285', '84', 'Epirus', 'EP', '1');
INSERT INTO `oc_zone` VALUES ('1286', '84', 'Ionian Islands', 'II', '1');
INSERT INTO `oc_zone` VALUES ('1287', '84', 'North Aegean', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1288', '84', 'Peloponnesos', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('1289', '84', 'South Aegean', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1290', '84', 'Thessaly', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('1291', '84', 'West Greece', 'WG', '1');
INSERT INTO `oc_zone` VALUES ('1292', '84', 'West Macedonia', 'WM', '1');
INSERT INTO `oc_zone` VALUES ('1293', '85', 'Avannaa', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1294', '85', 'Tunu', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1295', '85', 'Kitaa', 'K', '1');
INSERT INTO `oc_zone` VALUES ('1296', '86', 'Saint Andrew', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1297', '86', 'Saint David', 'D', '1');
INSERT INTO `oc_zone` VALUES ('1298', '86', 'Saint George', 'G', '1');
INSERT INTO `oc_zone` VALUES ('1299', '86', 'Saint John', 'J', '1');
INSERT INTO `oc_zone` VALUES ('1300', '86', 'Saint Mark', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1301', '86', 'Saint Patrick', 'P', '1');
INSERT INTO `oc_zone` VALUES ('1302', '86', 'Carriacou', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1303', '86', 'Petit Martinique', 'Q', '1');
INSERT INTO `oc_zone` VALUES ('1304', '89', 'Alta Verapaz', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('1305', '89', 'Baja Verapaz', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('1306', '89', 'Chimaltenango', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1307', '89', 'Chiquimula', 'CQ', '1');
INSERT INTO `oc_zone` VALUES ('1308', '89', 'El Peten', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('1309', '89', 'El Progreso', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('1310', '89', 'El Quiche', 'QC', '1');
INSERT INTO `oc_zone` VALUES ('1311', '89', 'Escuintla', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('1312', '89', 'Guatemala', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1313', '89', 'Huehuetenango', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('1314', '89', 'Izabal', 'IZ', '1');
INSERT INTO `oc_zone` VALUES ('1315', '89', 'Jalapa', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1316', '89', 'Jutiapa', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('1317', '89', 'Quetzaltenango', 'QZ', '1');
INSERT INTO `oc_zone` VALUES ('1318', '89', 'Retalhuleu', 'RE', '1');
INSERT INTO `oc_zone` VALUES ('1319', '89', 'Sacatepequez', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('1320', '89', 'San Marcos', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1321', '89', 'Santa Rosa', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('1322', '89', 'Solola', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1323', '89', 'Suchitepequez', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('1324', '89', 'Totonicapan', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('1325', '89', 'Zacapa', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('1326', '90', 'Conakry', 'CNK', '1');
INSERT INTO `oc_zone` VALUES ('1327', '90', 'Beyla', 'BYL', '1');
INSERT INTO `oc_zone` VALUES ('1328', '90', 'Boffa', 'BFA', '1');
INSERT INTO `oc_zone` VALUES ('1329', '90', 'Boke', 'BOK', '1');
INSERT INTO `oc_zone` VALUES ('1330', '90', 'Coyah', 'COY', '1');
INSERT INTO `oc_zone` VALUES ('1331', '90', 'Dabola', 'DBL', '1');
INSERT INTO `oc_zone` VALUES ('1332', '90', 'Dalaba', 'DLB', '1');
INSERT INTO `oc_zone` VALUES ('1333', '90', 'Dinguiraye', 'DGR', '1');
INSERT INTO `oc_zone` VALUES ('1334', '90', 'Dubreka', 'DBR', '1');
INSERT INTO `oc_zone` VALUES ('1335', '90', 'Faranah', 'FRN', '1');
INSERT INTO `oc_zone` VALUES ('1336', '90', 'Forecariah', 'FRC', '1');
INSERT INTO `oc_zone` VALUES ('1337', '90', 'Fria', 'FRI', '1');
INSERT INTO `oc_zone` VALUES ('1338', '90', 'Gaoual', 'GAO', '1');
INSERT INTO `oc_zone` VALUES ('1339', '90', 'Gueckedou', 'GCD', '1');
INSERT INTO `oc_zone` VALUES ('1340', '90', 'Kankan', 'KNK', '1');
INSERT INTO `oc_zone` VALUES ('1341', '90', 'Kerouane', 'KRN', '1');
INSERT INTO `oc_zone` VALUES ('1342', '90', 'Kindia', 'KND', '1');
INSERT INTO `oc_zone` VALUES ('1343', '90', 'Kissidougou', 'KSD', '1');
INSERT INTO `oc_zone` VALUES ('1344', '90', 'Koubia', 'KBA', '1');
INSERT INTO `oc_zone` VALUES ('1345', '90', 'Koundara', 'KDA', '1');
INSERT INTO `oc_zone` VALUES ('1346', '90', 'Kouroussa', 'KRA', '1');
INSERT INTO `oc_zone` VALUES ('1347', '90', 'Labe', 'LAB', '1');
INSERT INTO `oc_zone` VALUES ('1348', '90', 'Lelouma', 'LLM', '1');
INSERT INTO `oc_zone` VALUES ('1349', '90', 'Lola', 'LOL', '1');
INSERT INTO `oc_zone` VALUES ('1350', '90', 'Macenta', 'MCT', '1');
INSERT INTO `oc_zone` VALUES ('1351', '90', 'Mali', 'MAL', '1');
INSERT INTO `oc_zone` VALUES ('1352', '90', 'Mamou', 'MAM', '1');
INSERT INTO `oc_zone` VALUES ('1353', '90', 'Mandiana', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('1354', '90', 'Nzerekore', 'NZR', '1');
INSERT INTO `oc_zone` VALUES ('1355', '90', 'Pita', 'PIT', '1');
INSERT INTO `oc_zone` VALUES ('1356', '90', 'Siguiri', 'SIG', '1');
INSERT INTO `oc_zone` VALUES ('1357', '90', 'Telimele', 'TLM', '1');
INSERT INTO `oc_zone` VALUES ('1358', '90', 'Tougue', 'TOG', '1');
INSERT INTO `oc_zone` VALUES ('1359', '90', 'Yomou', 'YOM', '1');
INSERT INTO `oc_zone` VALUES ('1360', '91', 'Bafata Region', 'BF', '1');
INSERT INTO `oc_zone` VALUES ('1361', '91', 'Biombo Region', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1362', '91', 'Bissau Region', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1363', '91', 'Bolama Region', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('1364', '91', 'Cacheu Region', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1365', '91', 'Gabu Region', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1366', '91', 'Oio Region', 'OI', '1');
INSERT INTO `oc_zone` VALUES ('1367', '91', 'Quinara Region', 'QU', '1');
INSERT INTO `oc_zone` VALUES ('1368', '91', 'Tombali Region', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('1369', '92', 'Barima-Waini', 'BW', '1');
INSERT INTO `oc_zone` VALUES ('1370', '92', 'Cuyuni-Mazaruni', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1371', '92', 'Demerara-Mahaica', 'DM', '1');
INSERT INTO `oc_zone` VALUES ('1372', '92', 'East Berbice-Corentyne', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('1373', '92', 'Essequibo Islands-West Demerara', 'EW', '1');
INSERT INTO `oc_zone` VALUES ('1374', '92', 'Mahaica-Berbice', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('1375', '92', 'Pomeroon-Supenaam', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('1376', '92', 'Potaro-Siparuni', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('1377', '92', 'Upper Demerara-Berbice', 'UD', '1');
INSERT INTO `oc_zone` VALUES ('1378', '92', 'Upper Takutu-Upper Essequibo', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('1379', '93', 'Artibonite', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('1380', '93', 'Centre', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('1381', '93', 'Grand\'Anse', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1382', '93', 'Nord', 'ND', '1');
INSERT INTO `oc_zone` VALUES ('1383', '93', 'Nord-Est', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1384', '93', 'Nord-Ouest', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('1385', '93', 'Ouest', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('1386', '93', 'Sud', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('1387', '93', 'Sud-Est', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('1388', '94', 'Flat Island', 'F', '1');
INSERT INTO `oc_zone` VALUES ('1389', '94', 'McDonald Island', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1390', '94', 'Shag Island', 'S', '1');
INSERT INTO `oc_zone` VALUES ('1391', '94', 'Heard Island', 'H', '1');
INSERT INTO `oc_zone` VALUES ('1392', '95', 'Atlantida', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1393', '95', 'Choluteca', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1394', '95', 'Colon', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('1395', '95', 'Comayagua', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1396', '95', 'Copan', 'CP', '1');
INSERT INTO `oc_zone` VALUES ('1397', '95', 'Cortes', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('1398', '95', 'El Paraiso', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1399', '95', 'Francisco Morazan', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('1400', '95', 'Gracias a Dios', 'GD', '1');
INSERT INTO `oc_zone` VALUES ('1401', '95', 'Intibuca', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('1402', '95', 'Islas de la Bahia (Bay Islands)', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('1403', '95', 'La Paz', 'PZ', '1');
INSERT INTO `oc_zone` VALUES ('1404', '95', 'Lempira', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1405', '95', 'Ocotepeque', 'OC', '1');
INSERT INTO `oc_zone` VALUES ('1406', '95', 'Olancho', 'OL', '1');
INSERT INTO `oc_zone` VALUES ('1407', '95', 'Santa Barbara', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('1408', '95', 'Valle', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('1409', '95', 'Yoro', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('1410', '96', 'Central and Western Hong Kong Island', 'HCW', '1');
INSERT INTO `oc_zone` VALUES ('1411', '96', 'Eastern Hong Kong Island', 'HEA', '1');
INSERT INTO `oc_zone` VALUES ('1412', '96', 'Southern Hong Kong Island', 'HSO', '1');
INSERT INTO `oc_zone` VALUES ('1413', '96', 'Wan Chai Hong Kong Island', 'HWC', '1');
INSERT INTO `oc_zone` VALUES ('1414', '96', 'Kowloon City Kowloon', 'KKC', '1');
INSERT INTO `oc_zone` VALUES ('1415', '96', 'Kwun Tong Kowloon', 'KKT', '1');
INSERT INTO `oc_zone` VALUES ('1416', '96', 'Sham Shui Po Kowloon', 'KSS', '1');
INSERT INTO `oc_zone` VALUES ('1417', '96', 'Wong Tai Sin Kowloon', 'KWT', '1');
INSERT INTO `oc_zone` VALUES ('1418', '96', 'Yau Tsim Mong Kowloon', 'KYT', '1');
INSERT INTO `oc_zone` VALUES ('1419', '96', 'Islands New Territories', 'NIS', '1');
INSERT INTO `oc_zone` VALUES ('1420', '96', 'Kwai Tsing New Territories', 'NKT', '1');
INSERT INTO `oc_zone` VALUES ('1421', '96', 'North New Territories', 'NNO', '1');
INSERT INTO `oc_zone` VALUES ('1422', '96', 'Sai Kung New Territories', 'NSK', '1');
INSERT INTO `oc_zone` VALUES ('1423', '96', 'Sha Tin New Territories', 'NST', '1');
INSERT INTO `oc_zone` VALUES ('1424', '96', 'Tai Po New Territories', 'NTP', '1');
INSERT INTO `oc_zone` VALUES ('1425', '96', 'Tsuen Wan New Territories', 'NTW', '1');
INSERT INTO `oc_zone` VALUES ('1426', '96', 'Tuen Mun New Territories', 'NTM', '1');
INSERT INTO `oc_zone` VALUES ('1427', '96', 'Yuen Long New Territories', 'NYL', '1');
INSERT INTO `oc_zone` VALUES ('1467', '98', 'Austurland', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1468', '98', 'Hofuoborgarsvaeoi', 'HF', '1');
INSERT INTO `oc_zone` VALUES ('1469', '98', 'Norourland eystra', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1470', '98', 'Norourland vestra', 'NV', '1');
INSERT INTO `oc_zone` VALUES ('1471', '98', 'Suourland', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1472', '98', 'Suournes', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1473', '98', 'Vestfiroir', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('1474', '98', 'Vesturland', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('1475', '99', 'Andaman and Nicobar Islands', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('1476', '99', 'Andhra Pradesh', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('1477', '99', 'Arunachal Pradesh', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('1478', '99', 'Assam', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1479', '99', 'Bihar', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('1480', '99', 'Chandigarh', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1481', '99', 'Dadra and Nagar Haveli', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('1482', '99', 'Daman and Diu', 'DM', '1');
INSERT INTO `oc_zone` VALUES ('1483', '99', 'Delhi', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('1484', '99', 'Goa', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('1485', '99', 'Gujarat', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1486', '99', 'Haryana', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1487', '99', 'Himachal Pradesh', 'HP', '1');
INSERT INTO `oc_zone` VALUES ('1488', '99', 'Jammu and Kashmir', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1489', '99', 'Karnataka', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1490', '99', 'Kerala', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1491', '99', 'Lakshadweep Islands', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('1492', '99', 'Madhya Pradesh', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('1493', '99', 'Maharashtra', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1494', '99', 'Manipur', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('1495', '99', 'Meghalaya', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('1496', '99', 'Mizoram', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1497', '99', 'Nagaland', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1498', '99', 'Orissa', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('1499', '99', 'Pondicherry', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('1500', '99', 'Punjab', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('1501', '99', 'Rajasthan', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('1502', '99', 'Sikkim', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('1503', '99', 'Tamil Nadu', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('1504', '99', 'Tripura', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('1505', '99', 'Uttar Pradesh', 'UP', '1');
INSERT INTO `oc_zone` VALUES ('1506', '99', 'West Bengal', 'WB', '1');
INSERT INTO `oc_zone` VALUES ('1507', '100', 'Aceh', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('1508', '100', 'Bali', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1509', '100', 'Banten', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('1510', '100', 'Bengkulu', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('1511', '100', 'BoDeTaBek', 'BD', '1');
INSERT INTO `oc_zone` VALUES ('1512', '100', 'Gorontalo', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('1513', '100', 'Jakarta Raya', 'JK', '1');
INSERT INTO `oc_zone` VALUES ('1514', '100', 'Jambi', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1515', '100', 'Jawa Barat', 'JB', '1');
INSERT INTO `oc_zone` VALUES ('1516', '100', 'Jawa Tengah', 'JT', '1');
INSERT INTO `oc_zone` VALUES ('1517', '100', 'Jawa Timur', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('1518', '100', 'Kalimantan Barat', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('1519', '100', 'Kalimantan Selatan', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('1520', '100', 'Kalimantan Tengah', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('1521', '100', 'Kalimantan Timur', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('1522', '100', 'Kepulauan Bangka Belitung', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1523', '100', 'Lampung', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1524', '100', 'Maluku', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1525', '100', 'Maluku Utara', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('1526', '100', 'Nusa Tenggara Barat', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('1527', '100', 'Nusa Tenggara Timur', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('1528', '100', 'Papua', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1529', '100', 'Riau', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('1530', '100', 'Sulawesi Selatan', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1531', '100', 'Sulawesi Tengah', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('1532', '100', 'Sulawesi Tenggara', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('1533', '100', 'Sulawesi Utara', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1534', '100', 'Sumatera Barat', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('1535', '100', 'Sumatera Selatan', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('1536', '100', 'Sumatera Utara', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('1537', '100', 'Yogyakarta', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('1538', '101', 'Tehran', 'TEH', '1');
INSERT INTO `oc_zone` VALUES ('1539', '101', 'Qom', 'QOM', '1');
INSERT INTO `oc_zone` VALUES ('1540', '101', 'Markazi', 'MKZ', '1');
INSERT INTO `oc_zone` VALUES ('1541', '101', 'Qazvin', 'QAZ', '1');
INSERT INTO `oc_zone` VALUES ('1542', '101', 'Gilan', 'GIL', '1');
INSERT INTO `oc_zone` VALUES ('1543', '101', 'Ardabil', 'ARD', '1');
INSERT INTO `oc_zone` VALUES ('1544', '101', 'Zanjan', 'ZAN', '1');
INSERT INTO `oc_zone` VALUES ('1545', '101', 'East Azarbaijan', 'EAZ', '1');
INSERT INTO `oc_zone` VALUES ('1546', '101', 'West Azarbaijan', 'WEZ', '1');
INSERT INTO `oc_zone` VALUES ('1547', '101', 'Kurdistan', 'KRD', '1');
INSERT INTO `oc_zone` VALUES ('1548', '101', 'Hamadan', 'HMD', '1');
INSERT INTO `oc_zone` VALUES ('1549', '101', 'Kermanshah', 'KRM', '1');
INSERT INTO `oc_zone` VALUES ('1550', '101', 'Ilam', 'ILM', '1');
INSERT INTO `oc_zone` VALUES ('1551', '101', 'Lorestan', 'LRS', '1');
INSERT INTO `oc_zone` VALUES ('1552', '101', 'Khuzestan', 'KZT', '1');
INSERT INTO `oc_zone` VALUES ('1553', '101', 'Chahar Mahaal and Bakhtiari', 'CMB', '1');
INSERT INTO `oc_zone` VALUES ('1554', '101', 'Kohkiluyeh and Buyer Ahmad', 'KBA', '1');
INSERT INTO `oc_zone` VALUES ('1555', '101', 'Bushehr', 'BSH', '1');
INSERT INTO `oc_zone` VALUES ('1556', '101', 'Fars', 'FAR', '1');
INSERT INTO `oc_zone` VALUES ('1557', '101', 'Hormozgan', 'HRM', '1');
INSERT INTO `oc_zone` VALUES ('1558', '101', 'Sistan and Baluchistan', 'SBL', '1');
INSERT INTO `oc_zone` VALUES ('1559', '101', 'Kerman', 'KRB', '1');
INSERT INTO `oc_zone` VALUES ('1560', '101', 'Yazd', 'YZD', '1');
INSERT INTO `oc_zone` VALUES ('1561', '101', 'Esfahan', 'EFH', '1');
INSERT INTO `oc_zone` VALUES ('1562', '101', 'Semnan', 'SMN', '1');
INSERT INTO `oc_zone` VALUES ('1563', '101', 'Mazandaran', 'MZD', '1');
INSERT INTO `oc_zone` VALUES ('1564', '101', 'Golestan', 'GLS', '1');
INSERT INTO `oc_zone` VALUES ('1565', '101', 'North Khorasan', 'NKH', '1');
INSERT INTO `oc_zone` VALUES ('1566', '101', 'Razavi Khorasan', 'RKH', '1');
INSERT INTO `oc_zone` VALUES ('1567', '101', 'South Khorasan', 'SKH', '1');
INSERT INTO `oc_zone` VALUES ('1568', '102', 'Baghdad', 'BD', '1');
INSERT INTO `oc_zone` VALUES ('1569', '102', 'Salah ad Din', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('1570', '102', 'Diyala', 'DY', '1');
INSERT INTO `oc_zone` VALUES ('1571', '102', 'Wasit', 'WS', '1');
INSERT INTO `oc_zone` VALUES ('1572', '102', 'Maysan', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('1573', '102', 'Al Basrah', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1574', '102', 'Dhi Qar', 'DQ', '1');
INSERT INTO `oc_zone` VALUES ('1575', '102', 'Al Muthanna', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('1576', '102', 'Al Qadisyah', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('1577', '102', 'Babil', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1578', '102', 'Al Karbala', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('1579', '102', 'An Najaf', 'NJ', '1');
INSERT INTO `oc_zone` VALUES ('1580', '102', 'Al Anbar', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('1581', '102', 'Ninawa', 'NN', '1');
INSERT INTO `oc_zone` VALUES ('1582', '102', 'Dahuk', 'DH', '1');
INSERT INTO `oc_zone` VALUES ('1583', '102', 'Arbil', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1584', '102', 'At Ta\'mim', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('1585', '102', 'As Sulaymaniyah', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1586', '103', 'Carlow', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1587', '103', 'Cavan', 'CV', '1');
INSERT INTO `oc_zone` VALUES ('1588', '103', 'Clare', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('1589', '103', 'Cork', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('1590', '103', 'Donegal', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('1591', '103', 'Dublin', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('1592', '103', 'Galway', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1593', '103', 'Kerry', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('1594', '103', 'Kildare', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('1595', '103', 'Kilkenny', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('1596', '103', 'Laois', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('1597', '103', 'Leitrim', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1598', '103', 'Limerick', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('1599', '103', 'Longford', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('1600', '103', 'Louth', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('1601', '103', 'Mayo', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1602', '103', 'Meath', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('1603', '103', 'Monaghan', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('1604', '103', 'Offaly', 'OF', '1');
INSERT INTO `oc_zone` VALUES ('1605', '103', 'Roscommon', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('1606', '103', 'Sligo', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1607', '103', 'Tipperary', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('1608', '103', 'Waterford', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('1609', '103', 'Westmeath', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1610', '103', 'Wexford', 'WX', '1');
INSERT INTO `oc_zone` VALUES ('1611', '103', 'Wicklow', 'WI', '1');
INSERT INTO `oc_zone` VALUES ('1612', '104', 'Be\'er Sheva', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('1613', '104', 'Bika\'at Hayarden', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('1614', '104', 'Eilat and Arava', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('1615', '104', 'Galil', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('1616', '104', 'Haifa', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1617', '104', 'Jehuda Mountains', 'JM', '1');
INSERT INTO `oc_zone` VALUES ('1618', '104', 'Jerusalem', 'JE', '1');
INSERT INTO `oc_zone` VALUES ('1619', '104', 'Negev', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1620', '104', 'Semaria', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('1621', '104', 'Sharon', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('1622', '104', 'Tel Aviv (Gosh Dan)', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3860', '105', 'Caltanissetta', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('3842', '105', 'Agrigento', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3843', '105', 'Alessandria', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('3844', '105', 'Ancona', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('3845', '105', 'Aosta', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('3846', '105', 'Arezzo', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3847', '105', 'Ascoli Piceno', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('3848', '105', 'Asti', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('3849', '105', 'Avellino', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('3850', '105', 'Bari', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3851', '105', 'Belluno', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('3852', '105', 'Benevento', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('3853', '105', 'Bergamo', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('3854', '105', 'Biella', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('3855', '105', 'Bologna', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('3856', '105', 'Bolzano', 'BZ', '1');
INSERT INTO `oc_zone` VALUES ('3857', '105', 'Brescia', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('3858', '105', 'Brindisi', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('3859', '105', 'Cagliari', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('1643', '106', 'Clarendon Parish', 'CLA', '1');
INSERT INTO `oc_zone` VALUES ('1644', '106', 'Hanover Parish', 'HAN', '1');
INSERT INTO `oc_zone` VALUES ('1645', '106', 'Kingston Parish', 'KIN', '1');
INSERT INTO `oc_zone` VALUES ('1646', '106', 'Manchester Parish', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('1647', '106', 'Portland Parish', 'POR', '1');
INSERT INTO `oc_zone` VALUES ('1648', '106', 'Saint Andrew Parish', 'AND', '1');
INSERT INTO `oc_zone` VALUES ('1649', '106', 'Saint Ann Parish', 'ANN', '1');
INSERT INTO `oc_zone` VALUES ('1650', '106', 'Saint Catherine Parish', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('1651', '106', 'Saint Elizabeth Parish', 'ELI', '1');
INSERT INTO `oc_zone` VALUES ('1652', '106', 'Saint James Parish', 'JAM', '1');
INSERT INTO `oc_zone` VALUES ('1653', '106', 'Saint Mary Parish', 'MAR', '1');
INSERT INTO `oc_zone` VALUES ('1654', '106', 'Saint Thomas Parish', 'THO', '1');
INSERT INTO `oc_zone` VALUES ('1655', '106', 'Trelawny Parish', 'TRL', '1');
INSERT INTO `oc_zone` VALUES ('1656', '106', 'Westmoreland Parish', 'WML', '1');
INSERT INTO `oc_zone` VALUES ('1657', '107', 'Aichi', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('1658', '107', 'Akita', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('1659', '107', 'Aomori', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('1660', '107', 'Chiba', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1661', '107', 'Ehime', 'EH', '1');
INSERT INTO `oc_zone` VALUES ('1662', '107', 'Fukui', 'FK', '1');
INSERT INTO `oc_zone` VALUES ('1663', '107', 'Fukuoka', 'FU', '1');
INSERT INTO `oc_zone` VALUES ('1664', '107', 'Fukushima', 'FS', '1');
INSERT INTO `oc_zone` VALUES ('1665', '107', 'Gifu', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('1666', '107', 'Gumma', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('1667', '107', 'Hiroshima', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('1668', '107', 'Hokkaido', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('1669', '107', 'Hyogo', 'HY', '1');
INSERT INTO `oc_zone` VALUES ('1670', '107', 'Ibaraki', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('1671', '107', 'Ishikawa', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('1672', '107', 'Iwate', 'IW', '1');
INSERT INTO `oc_zone` VALUES ('1673', '107', 'Kagawa', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1674', '107', 'Kagoshima', 'KG', '1');
INSERT INTO `oc_zone` VALUES ('1675', '107', 'Kanagawa', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('1676', '107', 'Kochi', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('1677', '107', 'Kumamoto', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1678', '107', 'Kyoto', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('1679', '107', 'Mie', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1680', '107', 'Miyagi', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('1681', '107', 'Miyazaki', 'MZ', '1');
INSERT INTO `oc_zone` VALUES ('1682', '107', 'Nagano', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1683', '107', 'Nagasaki', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('1684', '107', 'Nara', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('1685', '107', 'Niigata', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('1686', '107', 'Oita', 'OI', '1');
INSERT INTO `oc_zone` VALUES ('1687', '107', 'Okayama', 'OK', '1');
INSERT INTO `oc_zone` VALUES ('1688', '107', 'Okinawa', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('1689', '107', 'Osaka', 'OS', '1');
INSERT INTO `oc_zone` VALUES ('1690', '107', 'Saga', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('1691', '107', 'Saitama', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('1692', '107', 'Shiga', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('1693', '107', 'Shimane', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('1694', '107', 'Shizuoka', 'SZ', '1');
INSERT INTO `oc_zone` VALUES ('1695', '107', 'Tochigi', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('1696', '107', 'Tokushima', 'TS', '1');
INSERT INTO `oc_zone` VALUES ('1697', '107', 'Tokyo', 'TK', '1');
INSERT INTO `oc_zone` VALUES ('1698', '107', 'Tottori', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('1699', '107', 'Toyama', 'TY', '1');
INSERT INTO `oc_zone` VALUES ('1700', '107', 'Wakayama', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('1701', '107', 'Yamagata', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('1702', '107', 'Yamaguchi', 'YM', '1');
INSERT INTO `oc_zone` VALUES ('1703', '107', 'Yamanashi', 'YN', '1');
INSERT INTO `oc_zone` VALUES ('1704', '108', '\'Amman', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('1705', '108', 'Ajlun', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1706', '108', 'Al \'Aqabah', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('1707', '108', 'Al Balqa\'', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('1708', '108', 'Al Karak', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('1709', '108', 'Al Mafraq', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1710', '108', 'At Tafilah', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1711', '108', 'Az Zarqa\'', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('1712', '108', 'Irbid', 'IR', '1');
INSERT INTO `oc_zone` VALUES ('1713', '108', 'Jarash', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1714', '108', 'Ma\'an', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1715', '108', 'Madaba', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('1716', '109', 'Almaty', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1717', '109', 'Almaty City', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('1718', '109', 'Aqmola', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('1719', '109', 'Aqtobe', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('1720', '109', 'Astana City', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1721', '109', 'Atyrau', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1722', '109', 'Batys Qazaqstan', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1723', '109', 'Bayqongyr City', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('1724', '109', 'Mangghystau', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1725', '109', 'Ongtustik Qazaqstan', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('1726', '109', 'Pavlodar', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1727', '109', 'Qaraghandy', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('1728', '109', 'Qostanay', 'QO', '1');
INSERT INTO `oc_zone` VALUES ('1729', '109', 'Qyzylorda', 'QY', '1');
INSERT INTO `oc_zone` VALUES ('1730', '109', 'Shyghys Qazaqstan', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('1731', '109', 'Soltustik Qazaqstan', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1732', '109', 'Zhambyl', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('1733', '110', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('1734', '110', 'Coast', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('1735', '110', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('1736', '110', 'Nairobi Area', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('1737', '110', 'North Eastern', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('1738', '110', 'Nyanza', 'NY', '1');
INSERT INTO `oc_zone` VALUES ('1739', '110', 'Rift Valley', 'RV', '1');
INSERT INTO `oc_zone` VALUES ('1740', '110', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('1741', '111', 'Abaiang', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('1742', '111', 'Abemama', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('1743', '111', 'Aranuka', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('1744', '111', 'Arorae', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('1745', '111', 'Banaba', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1746', '111', 'Beru', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('1747', '111', 'Butaritari', 'bT', '1');
INSERT INTO `oc_zone` VALUES ('1748', '111', 'Kanton', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1749', '111', 'Kiritimati', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('1750', '111', 'Kuria', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1751', '111', 'Maiana', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1752', '111', 'Makin', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('1753', '111', 'Marakei', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('1754', '111', 'Nikunau', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('1755', '111', 'Nonouti', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('1756', '111', 'Onotoa', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('1757', '111', 'Tabiteuea', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('1758', '111', 'Tabuaeran', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('1759', '111', 'Tamana', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('1760', '111', 'Tarawa', 'TW', '1');
INSERT INTO `oc_zone` VALUES ('1761', '111', 'Teraina', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('1762', '112', 'Chagang-do', 'CHA', '1');
INSERT INTO `oc_zone` VALUES ('1763', '112', 'Hamgyong-bukto', 'HAB', '1');
INSERT INTO `oc_zone` VALUES ('1764', '112', 'Hamgyong-namdo', 'HAN', '1');
INSERT INTO `oc_zone` VALUES ('1765', '112', 'Hwanghae-bukto', 'HWB', '1');
INSERT INTO `oc_zone` VALUES ('1766', '112', 'Hwanghae-namdo', 'HWN', '1');
INSERT INTO `oc_zone` VALUES ('1767', '112', 'Kangwon-do', 'KAN', '1');
INSERT INTO `oc_zone` VALUES ('1768', '112', 'P\'yongan-bukto', 'PYB', '1');
INSERT INTO `oc_zone` VALUES ('1769', '112', 'P\'yongan-namdo', 'PYN', '1');
INSERT INTO `oc_zone` VALUES ('1770', '112', 'Ryanggang-do (Yanggang-do)', 'YAN', '1');
INSERT INTO `oc_zone` VALUES ('1771', '112', 'Rason Directly Governed City', 'NAJ', '1');
INSERT INTO `oc_zone` VALUES ('1772', '112', 'P\'yongyang Special City', 'PYO', '1');
INSERT INTO `oc_zone` VALUES ('1773', '113', 'Ch\'ungch\'ong-bukto', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('1774', '113', 'Ch\'ungch\'ong-namdo', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1775', '113', 'Cheju-do', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('1776', '113', 'Cholla-bukto', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('1777', '113', 'Cholla-namdo', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('1778', '113', 'Inch\'on-gwangyoksi', 'IG', '1');
INSERT INTO `oc_zone` VALUES ('1779', '113', 'Kangwon-do', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1780', '113', 'Kwangju-gwangyoksi', 'KG', '1');
INSERT INTO `oc_zone` VALUES ('1781', '113', 'Kyonggi-do', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('1782', '113', 'Kyongsang-bukto', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('1783', '113', 'Kyongsang-namdo', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('1784', '113', 'Pusan-gwangyoksi', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('1785', '113', 'Soul-t\'ukpyolsi', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('1786', '113', 'Taegu-gwangyoksi', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('1787', '113', 'Taejon-gwangyoksi', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('1788', '114', 'Al \'Asimah', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1789', '114', 'Al Ahmadi', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('1790', '114', 'Al Farwaniyah', 'AF', '1');
INSERT INTO `oc_zone` VALUES ('1791', '114', 'Al Jahra\'', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1792', '114', 'Hawalli', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('1793', '115', 'Bishkek', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('1794', '115', 'Batken', 'B', '1');
INSERT INTO `oc_zone` VALUES ('1795', '115', 'Chu', 'C', '1');
INSERT INTO `oc_zone` VALUES ('1796', '115', 'Jalal-Abad', 'J', '1');
INSERT INTO `oc_zone` VALUES ('1797', '115', 'Naryn', 'N', '1');
INSERT INTO `oc_zone` VALUES ('1798', '115', 'Osh', 'O', '1');
INSERT INTO `oc_zone` VALUES ('1799', '115', 'Talas', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1800', '115', 'Ysyk-Kol', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('1801', '116', 'Vientiane', 'VT', '1');
INSERT INTO `oc_zone` VALUES ('1802', '116', 'Attapu', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('1803', '116', 'Bokeo', 'BK', '1');
INSERT INTO `oc_zone` VALUES ('1804', '116', 'Bolikhamxai', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('1805', '116', 'Champasak', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('1806', '116', 'Houaphan', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('1807', '116', 'Khammouan', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('1808', '116', 'Louang Namtha', 'LM', '1');
INSERT INTO `oc_zone` VALUES ('1809', '116', 'Louangphabang', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('1810', '116', 'Oudomxai', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('1811', '116', 'Phongsali', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('1812', '116', 'Salavan', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('1813', '116', 'Savannakhet', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('1814', '116', 'Vientiane', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('1815', '116', 'Xaignabouli', 'XA', '1');
INSERT INTO `oc_zone` VALUES ('1816', '116', 'Xekong', 'XE', '1');
INSERT INTO `oc_zone` VALUES ('1817', '116', 'Xiangkhoang', 'XI', '1');
INSERT INTO `oc_zone` VALUES ('1818', '116', 'Xaisomboun', 'XN', '1');
INSERT INTO `oc_zone` VALUES ('1852', '119', 'Berea', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('1853', '119', 'Butha-Buthe', 'BB', '1');
INSERT INTO `oc_zone` VALUES ('1854', '119', 'Leribe', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1855', '119', 'Mafeteng', 'MF', '1');
INSERT INTO `oc_zone` VALUES ('1856', '119', 'Maseru', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('1857', '119', 'Mohale\'s Hoek', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('1858', '119', 'Mokhotlong', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('1859', '119', 'Qacha\'s Nek', 'QN', '1');
INSERT INTO `oc_zone` VALUES ('1860', '119', 'Quthing', 'QT', '1');
INSERT INTO `oc_zone` VALUES ('1861', '119', 'Thaba-Tseka', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('1862', '120', 'Bomi', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('1863', '120', 'Bong', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('1864', '120', 'Grand Bassa', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('1865', '120', 'Grand Cape Mount', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('1866', '120', 'Grand Gedeh', 'GG', '1');
INSERT INTO `oc_zone` VALUES ('1867', '120', 'Grand Kru', 'GK', '1');
INSERT INTO `oc_zone` VALUES ('1868', '120', 'Lofa', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('1869', '120', 'Margibi', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('1870', '120', 'Maryland', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('1871', '120', 'Montserrado', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('1872', '120', 'Nimba', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('1873', '120', 'River Cess', 'RC', '1');
INSERT INTO `oc_zone` VALUES ('1874', '120', 'Sinoe', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('1875', '121', 'Ajdabiya', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('1876', '121', 'Al \'Aziziyah', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('1877', '121', 'Al Fatih', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('1878', '121', 'Al Jabal al Akhdar', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('1879', '121', 'Al Jufrah', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('1880', '121', 'Al Khums', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('1881', '121', 'Al Kufrah', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('1882', '121', 'An Nuqat al Khams', 'NK', '1');
INSERT INTO `oc_zone` VALUES ('1883', '121', 'Ash Shati\'', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1884', '121', 'Awbari', 'AW', '1');
INSERT INTO `oc_zone` VALUES ('1885', '121', 'Az Zawiyah', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('1886', '121', 'Banghazi', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('1887', '121', 'Darnah', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('1888', '121', 'Ghadamis', 'GD', '1');
INSERT INTO `oc_zone` VALUES ('1889', '121', 'Gharyan', 'GY', '1');
INSERT INTO `oc_zone` VALUES ('1890', '121', 'Misratah', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('1891', '121', 'Murzuq', 'MZ', '1');
INSERT INTO `oc_zone` VALUES ('1892', '121', 'Sabha', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('1893', '121', 'Sawfajjin', 'SW', '1');
INSERT INTO `oc_zone` VALUES ('1894', '121', 'Surt', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('1895', '121', 'Tarabulus (Tripoli)', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('1896', '121', 'Tarhunah', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('1897', '121', 'Tubruq', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('1898', '121', 'Yafran', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('1899', '121', 'Zlitan', 'ZL', '1');
INSERT INTO `oc_zone` VALUES ('1900', '122', 'Vaduz', 'V', '1');
INSERT INTO `oc_zone` VALUES ('1901', '122', 'Schaan', 'A', '1');
INSERT INTO `oc_zone` VALUES ('1902', '122', 'Balzers', 'B', '1');
INSERT INTO `oc_zone` VALUES ('1903', '122', 'Triesen', 'N', '1');
INSERT INTO `oc_zone` VALUES ('1904', '122', 'Eschen', 'E', '1');
INSERT INTO `oc_zone` VALUES ('1905', '122', 'Mauren', 'M', '1');
INSERT INTO `oc_zone` VALUES ('1906', '122', 'Triesenberg', 'T', '1');
INSERT INTO `oc_zone` VALUES ('1907', '122', 'Ruggell', 'R', '1');
INSERT INTO `oc_zone` VALUES ('1908', '122', 'Gamprin', 'G', '1');
INSERT INTO `oc_zone` VALUES ('1909', '122', 'Schellenberg', 'L', '1');
INSERT INTO `oc_zone` VALUES ('1910', '122', 'Planken', 'P', '1');
INSERT INTO `oc_zone` VALUES ('1911', '123', 'Alytus', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('1912', '123', 'Kaunas', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('1913', '123', 'Klaipeda', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('1914', '123', 'Marijampole', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('1915', '123', 'Panevezys', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('1916', '123', 'Siauliai', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('1917', '123', 'Taurage', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('1918', '123', 'Telsiai', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('1919', '123', 'Utena', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('1920', '123', 'Vilnius', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('1921', '124', 'Diekirch', 'DD', '1');
INSERT INTO `oc_zone` VALUES ('1922', '124', 'Clervaux', 'DC', '1');
INSERT INTO `oc_zone` VALUES ('1923', '124', 'Redange', 'DR', '1');
INSERT INTO `oc_zone` VALUES ('1924', '124', 'Vianden', 'DV', '1');
INSERT INTO `oc_zone` VALUES ('1925', '124', 'Wiltz', 'DW', '1');
INSERT INTO `oc_zone` VALUES ('1926', '124', 'Grevenmacher', 'GG', '1');
INSERT INTO `oc_zone` VALUES ('1927', '124', 'Echternach', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('1928', '124', 'Remich', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('1929', '124', 'Luxembourg', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('1930', '124', 'Capellen', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('1931', '124', 'Esch-sur-Alzette', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('1932', '124', 'Mersch', 'LM', '1');
INSERT INTO `oc_zone` VALUES ('1933', '125', 'Our Lady Fatima Parish', 'OLF', '1');
INSERT INTO `oc_zone` VALUES ('1934', '125', 'St. Anthony Parish', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('1935', '125', 'St. Lazarus Parish', 'LAZ', '1');
INSERT INTO `oc_zone` VALUES ('1936', '125', 'Cathedral Parish', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('1937', '125', 'St. Lawrence Parish', 'LAW', '1');
INSERT INTO `oc_zone` VALUES ('1938', '127', 'Antananarivo', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('1939', '127', 'Antsiranana', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('1940', '127', 'Fianarantsoa', 'FN', '1');
INSERT INTO `oc_zone` VALUES ('1941', '127', 'Mahajanga', 'MJ', '1');
INSERT INTO `oc_zone` VALUES ('1942', '127', 'Toamasina', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('1943', '127', 'Toliara', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('1944', '128', 'Balaka', 'BLK', '1');
INSERT INTO `oc_zone` VALUES ('1945', '128', 'Blantyre', 'BLT', '1');
INSERT INTO `oc_zone` VALUES ('1946', '128', 'Chikwawa', 'CKW', '1');
INSERT INTO `oc_zone` VALUES ('1947', '128', 'Chiradzulu', 'CRD', '1');
INSERT INTO `oc_zone` VALUES ('1948', '128', 'Chitipa', 'CTP', '1');
INSERT INTO `oc_zone` VALUES ('1949', '128', 'Dedza', 'DDZ', '1');
INSERT INTO `oc_zone` VALUES ('1950', '128', 'Dowa', 'DWA', '1');
INSERT INTO `oc_zone` VALUES ('1951', '128', 'Karonga', 'KRG', '1');
INSERT INTO `oc_zone` VALUES ('1952', '128', 'Kasungu', 'KSG', '1');
INSERT INTO `oc_zone` VALUES ('1953', '128', 'Likoma', 'LKM', '1');
INSERT INTO `oc_zone` VALUES ('1954', '128', 'Lilongwe', 'LLG', '1');
INSERT INTO `oc_zone` VALUES ('1955', '128', 'Machinga', 'MCG', '1');
INSERT INTO `oc_zone` VALUES ('1956', '128', 'Mangochi', 'MGC', '1');
INSERT INTO `oc_zone` VALUES ('1957', '128', 'Mchinji', 'MCH', '1');
INSERT INTO `oc_zone` VALUES ('1958', '128', 'Mulanje', 'MLJ', '1');
INSERT INTO `oc_zone` VALUES ('1959', '128', 'Mwanza', 'MWZ', '1');
INSERT INTO `oc_zone` VALUES ('1960', '128', 'Mzimba', 'MZM', '1');
INSERT INTO `oc_zone` VALUES ('1961', '128', 'Ntcheu', 'NTU', '1');
INSERT INTO `oc_zone` VALUES ('1962', '128', 'Nkhata Bay', 'NKB', '1');
INSERT INTO `oc_zone` VALUES ('1963', '128', 'Nkhotakota', 'NKH', '1');
INSERT INTO `oc_zone` VALUES ('1964', '128', 'Nsanje', 'NSJ', '1');
INSERT INTO `oc_zone` VALUES ('1965', '128', 'Ntchisi', 'NTI', '1');
INSERT INTO `oc_zone` VALUES ('1966', '128', 'Phalombe', 'PHL', '1');
INSERT INTO `oc_zone` VALUES ('1967', '128', 'Rumphi', 'RMP', '1');
INSERT INTO `oc_zone` VALUES ('1968', '128', 'Salima', 'SLM', '1');
INSERT INTO `oc_zone` VALUES ('1969', '128', 'Thyolo', 'THY', '1');
INSERT INTO `oc_zone` VALUES ('1970', '128', 'Zomba', 'ZBA', '1');
INSERT INTO `oc_zone` VALUES ('1971', '129', 'Johor', 'MY-01', '1');
INSERT INTO `oc_zone` VALUES ('1972', '129', 'Kedah', 'MY-02', '1');
INSERT INTO `oc_zone` VALUES ('1973', '129', 'Kelantan', 'MY-03', '1');
INSERT INTO `oc_zone` VALUES ('1974', '129', 'Labuan', 'MY-15', '1');
INSERT INTO `oc_zone` VALUES ('1975', '129', 'Melaka', 'MY-04', '1');
INSERT INTO `oc_zone` VALUES ('1976', '129', 'Negeri Sembilan', 'MY-05', '1');
INSERT INTO `oc_zone` VALUES ('1977', '129', 'Pahang', 'MY-06', '1');
INSERT INTO `oc_zone` VALUES ('1978', '129', 'Perak', 'MY-08', '1');
INSERT INTO `oc_zone` VALUES ('1979', '129', 'Perlis', 'MY-09', '1');
INSERT INTO `oc_zone` VALUES ('1980', '129', 'Pulau Pinang', 'MY-07', '1');
INSERT INTO `oc_zone` VALUES ('1981', '129', 'Sabah', 'MY-12', '1');
INSERT INTO `oc_zone` VALUES ('1982', '129', 'Sarawak', 'MY-13', '1');
INSERT INTO `oc_zone` VALUES ('1983', '129', 'Selangor', 'MY-10', '1');
INSERT INTO `oc_zone` VALUES ('1984', '129', 'Terengganu', 'MY-11', '1');
INSERT INTO `oc_zone` VALUES ('1985', '129', 'Kuala Lumpur', 'MY-14', '1');
INSERT INTO `oc_zone` VALUES ('4035', '129', 'Putrajaya', 'MY-16', '1');
INSERT INTO `oc_zone` VALUES ('1986', '130', 'Thiladhunmathi Uthuru', 'THU', '1');
INSERT INTO `oc_zone` VALUES ('1987', '130', 'Thiladhunmathi Dhekunu', 'THD', '1');
INSERT INTO `oc_zone` VALUES ('1988', '130', 'Miladhunmadulu Uthuru', 'MLU', '1');
INSERT INTO `oc_zone` VALUES ('1989', '130', 'Miladhunmadulu Dhekunu', 'MLD', '1');
INSERT INTO `oc_zone` VALUES ('1990', '130', 'Maalhosmadulu Uthuru', 'MAU', '1');
INSERT INTO `oc_zone` VALUES ('1991', '130', 'Maalhosmadulu Dhekunu', 'MAD', '1');
INSERT INTO `oc_zone` VALUES ('1992', '130', 'Faadhippolhu', 'FAA', '1');
INSERT INTO `oc_zone` VALUES ('1993', '130', 'Male Atoll', 'MAA', '1');
INSERT INTO `oc_zone` VALUES ('1994', '130', 'Ari Atoll Uthuru', 'AAU', '1');
INSERT INTO `oc_zone` VALUES ('1995', '130', 'Ari Atoll Dheknu', 'AAD', '1');
INSERT INTO `oc_zone` VALUES ('1996', '130', 'Felidhe Atoll', 'FEA', '1');
INSERT INTO `oc_zone` VALUES ('1997', '130', 'Mulaku Atoll', 'MUA', '1');
INSERT INTO `oc_zone` VALUES ('1998', '130', 'Nilandhe Atoll Uthuru', 'NAU', '1');
INSERT INTO `oc_zone` VALUES ('1999', '130', 'Nilandhe Atoll Dhekunu', 'NAD', '1');
INSERT INTO `oc_zone` VALUES ('2000', '130', 'Kolhumadulu', 'KLH', '1');
INSERT INTO `oc_zone` VALUES ('2001', '130', 'Hadhdhunmathi', 'HDH', '1');
INSERT INTO `oc_zone` VALUES ('2002', '130', 'Huvadhu Atoll Uthuru', 'HAU', '1');
INSERT INTO `oc_zone` VALUES ('2003', '130', 'Huvadhu Atoll Dhekunu', 'HAD', '1');
INSERT INTO `oc_zone` VALUES ('2004', '130', 'Fua Mulaku', 'FMU', '1');
INSERT INTO `oc_zone` VALUES ('2005', '130', 'Addu', 'ADD', '1');
INSERT INTO `oc_zone` VALUES ('2006', '131', 'Gao', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2007', '131', 'Kayes', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('2008', '131', 'Kidal', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('2009', '131', 'Koulikoro', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('2010', '131', 'Mopti', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('2011', '131', 'Segou', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('2012', '131', 'Sikasso', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('2013', '131', 'Tombouctou', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('2014', '131', 'Bamako Capital District', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2015', '132', 'Attard', 'ATT', '1');
INSERT INTO `oc_zone` VALUES ('2016', '132', 'Balzan', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('2017', '132', 'Birgu', 'BGU', '1');
INSERT INTO `oc_zone` VALUES ('2018', '132', 'Birkirkara', 'BKK', '1');
INSERT INTO `oc_zone` VALUES ('2019', '132', 'Birzebbuga', 'BRZ', '1');
INSERT INTO `oc_zone` VALUES ('2020', '132', 'Bormla', 'BOR', '1');
INSERT INTO `oc_zone` VALUES ('2021', '132', 'Dingli', 'DIN', '1');
INSERT INTO `oc_zone` VALUES ('2022', '132', 'Fgura', 'FGU', '1');
INSERT INTO `oc_zone` VALUES ('2023', '132', 'Floriana', 'FLO', '1');
INSERT INTO `oc_zone` VALUES ('2024', '132', 'Gudja', 'GDJ', '1');
INSERT INTO `oc_zone` VALUES ('2025', '132', 'Gzira', 'GZR', '1');
INSERT INTO `oc_zone` VALUES ('2026', '132', 'Gargur', 'GRG', '1');
INSERT INTO `oc_zone` VALUES ('2027', '132', 'Gaxaq', 'GXQ', '1');
INSERT INTO `oc_zone` VALUES ('2028', '132', 'Hamrun', 'HMR', '1');
INSERT INTO `oc_zone` VALUES ('2029', '132', 'Iklin', 'IKL', '1');
INSERT INTO `oc_zone` VALUES ('2030', '132', 'Isla', 'ISL', '1');
INSERT INTO `oc_zone` VALUES ('2031', '132', 'Kalkara', 'KLK', '1');
INSERT INTO `oc_zone` VALUES ('2032', '132', 'Kirkop', 'KRK', '1');
INSERT INTO `oc_zone` VALUES ('2033', '132', 'Lija', 'LIJ', '1');
INSERT INTO `oc_zone` VALUES ('2034', '132', 'Luqa', 'LUQ', '1');
INSERT INTO `oc_zone` VALUES ('2035', '132', 'Marsa', 'MRS', '1');
INSERT INTO `oc_zone` VALUES ('2036', '132', 'Marsaskala', 'MKL', '1');
INSERT INTO `oc_zone` VALUES ('2037', '132', 'Marsaxlokk', 'MXL', '1');
INSERT INTO `oc_zone` VALUES ('2038', '132', 'Mdina', 'MDN', '1');
INSERT INTO `oc_zone` VALUES ('2039', '132', 'Melliea', 'MEL', '1');
INSERT INTO `oc_zone` VALUES ('2040', '132', 'Mgarr', 'MGR', '1');
INSERT INTO `oc_zone` VALUES ('2041', '132', 'Mosta', 'MST', '1');
INSERT INTO `oc_zone` VALUES ('2042', '132', 'Mqabba', 'MQA', '1');
INSERT INTO `oc_zone` VALUES ('2043', '132', 'Msida', 'MSI', '1');
INSERT INTO `oc_zone` VALUES ('2044', '132', 'Mtarfa', 'MTF', '1');
INSERT INTO `oc_zone` VALUES ('2045', '132', 'Naxxar', 'NAX', '1');
INSERT INTO `oc_zone` VALUES ('2046', '132', 'Paola', 'PAO', '1');
INSERT INTO `oc_zone` VALUES ('2047', '132', 'Pembroke', 'PEM', '1');
INSERT INTO `oc_zone` VALUES ('2048', '132', 'Pieta', 'PIE', '1');
INSERT INTO `oc_zone` VALUES ('2049', '132', 'Qormi', 'QOR', '1');
INSERT INTO `oc_zone` VALUES ('2050', '132', 'Qrendi', 'QRE', '1');
INSERT INTO `oc_zone` VALUES ('2051', '132', 'Rabat', 'RAB', '1');
INSERT INTO `oc_zone` VALUES ('2052', '132', 'Safi', 'SAF', '1');
INSERT INTO `oc_zone` VALUES ('2053', '132', 'San Giljan', 'SGI', '1');
INSERT INTO `oc_zone` VALUES ('2054', '132', 'Santa Lucija', 'SLU', '1');
INSERT INTO `oc_zone` VALUES ('2055', '132', 'San Pawl il-Bahar', 'SPB', '1');
INSERT INTO `oc_zone` VALUES ('2056', '132', 'San Gwann', 'SGW', '1');
INSERT INTO `oc_zone` VALUES ('2057', '132', 'Santa Venera', 'SVE', '1');
INSERT INTO `oc_zone` VALUES ('2058', '132', 'Siggiewi', 'SIG', '1');
INSERT INTO `oc_zone` VALUES ('2059', '132', 'Sliema', 'SLM', '1');
INSERT INTO `oc_zone` VALUES ('2060', '132', 'Swieqi', 'SWQ', '1');
INSERT INTO `oc_zone` VALUES ('2061', '132', 'Ta Xbiex', 'TXB', '1');
INSERT INTO `oc_zone` VALUES ('2062', '132', 'Tarxien', 'TRX', '1');
INSERT INTO `oc_zone` VALUES ('2063', '132', 'Valletta', 'VLT', '1');
INSERT INTO `oc_zone` VALUES ('2064', '132', 'Xgajra', 'XGJ', '1');
INSERT INTO `oc_zone` VALUES ('2065', '132', 'Zabbar', 'ZBR', '1');
INSERT INTO `oc_zone` VALUES ('2066', '132', 'Zebbug', 'ZBG', '1');
INSERT INTO `oc_zone` VALUES ('2067', '132', 'Zejtun', 'ZJT', '1');
INSERT INTO `oc_zone` VALUES ('2068', '132', 'Zurrieq', 'ZRQ', '1');
INSERT INTO `oc_zone` VALUES ('2069', '132', 'Fontana', 'FNT', '1');
INSERT INTO `oc_zone` VALUES ('2070', '132', 'Ghajnsielem', 'GHJ', '1');
INSERT INTO `oc_zone` VALUES ('2071', '132', 'Gharb', 'GHR', '1');
INSERT INTO `oc_zone` VALUES ('2072', '132', 'Ghasri', 'GHS', '1');
INSERT INTO `oc_zone` VALUES ('2073', '132', 'Kercem', 'KRC', '1');
INSERT INTO `oc_zone` VALUES ('2074', '132', 'Munxar', 'MUN', '1');
INSERT INTO `oc_zone` VALUES ('2075', '132', 'Nadur', 'NAD', '1');
INSERT INTO `oc_zone` VALUES ('2076', '132', 'Qala', 'QAL', '1');
INSERT INTO `oc_zone` VALUES ('2077', '132', 'Victoria', 'VIC', '1');
INSERT INTO `oc_zone` VALUES ('2078', '132', 'San Lawrenz', 'SLA', '1');
INSERT INTO `oc_zone` VALUES ('2079', '132', 'Sannat', 'SNT', '1');
INSERT INTO `oc_zone` VALUES ('2080', '132', 'Xagra', 'ZAG', '1');
INSERT INTO `oc_zone` VALUES ('2081', '132', 'Xewkija', 'XEW', '1');
INSERT INTO `oc_zone` VALUES ('2082', '132', 'Zebbug', 'ZEB', '1');
INSERT INTO `oc_zone` VALUES ('2083', '133', 'Ailinginae', 'ALG', '1');
INSERT INTO `oc_zone` VALUES ('2084', '133', 'Ailinglaplap', 'ALL', '1');
INSERT INTO `oc_zone` VALUES ('2085', '133', 'Ailuk', 'ALK', '1');
INSERT INTO `oc_zone` VALUES ('2086', '133', 'Arno', 'ARN', '1');
INSERT INTO `oc_zone` VALUES ('2087', '133', 'Aur', 'AUR', '1');
INSERT INTO `oc_zone` VALUES ('2088', '133', 'Bikar', 'BKR', '1');
INSERT INTO `oc_zone` VALUES ('2089', '133', 'Bikini', 'BKN', '1');
INSERT INTO `oc_zone` VALUES ('2090', '133', 'Bokak', 'BKK', '1');
INSERT INTO `oc_zone` VALUES ('2091', '133', 'Ebon', 'EBN', '1');
INSERT INTO `oc_zone` VALUES ('2092', '133', 'Enewetak', 'ENT', '1');
INSERT INTO `oc_zone` VALUES ('2093', '133', 'Erikub', 'EKB', '1');
INSERT INTO `oc_zone` VALUES ('2094', '133', 'Jabat', 'JBT', '1');
INSERT INTO `oc_zone` VALUES ('2095', '133', 'Jaluit', 'JLT', '1');
INSERT INTO `oc_zone` VALUES ('2096', '133', 'Jemo', 'JEM', '1');
INSERT INTO `oc_zone` VALUES ('2097', '133', 'Kili', 'KIL', '1');
INSERT INTO `oc_zone` VALUES ('2098', '133', 'Kwajalein', 'KWJ', '1');
INSERT INTO `oc_zone` VALUES ('2099', '133', 'Lae', 'LAE', '1');
INSERT INTO `oc_zone` VALUES ('2100', '133', 'Lib', 'LIB', '1');
INSERT INTO `oc_zone` VALUES ('2101', '133', 'Likiep', 'LKP', '1');
INSERT INTO `oc_zone` VALUES ('2102', '133', 'Majuro', 'MJR', '1');
INSERT INTO `oc_zone` VALUES ('2103', '133', 'Maloelap', 'MLP', '1');
INSERT INTO `oc_zone` VALUES ('2104', '133', 'Mejit', 'MJT', '1');
INSERT INTO `oc_zone` VALUES ('2105', '133', 'Mili', 'MIL', '1');
INSERT INTO `oc_zone` VALUES ('2106', '133', 'Namorik', 'NMK', '1');
INSERT INTO `oc_zone` VALUES ('2107', '133', 'Namu', 'NAM', '1');
INSERT INTO `oc_zone` VALUES ('2108', '133', 'Rongelap', 'RGL', '1');
INSERT INTO `oc_zone` VALUES ('2109', '133', 'Rongrik', 'RGK', '1');
INSERT INTO `oc_zone` VALUES ('2110', '133', 'Toke', 'TOK', '1');
INSERT INTO `oc_zone` VALUES ('2111', '133', 'Ujae', 'UJA', '1');
INSERT INTO `oc_zone` VALUES ('2112', '133', 'Ujelang', 'UJL', '1');
INSERT INTO `oc_zone` VALUES ('2113', '133', 'Utirik', 'UTK', '1');
INSERT INTO `oc_zone` VALUES ('2114', '133', 'Wotho', 'WTH', '1');
INSERT INTO `oc_zone` VALUES ('2115', '133', 'Wotje', 'WTJ', '1');
INSERT INTO `oc_zone` VALUES ('2116', '135', 'Adrar', 'AD', '1');
INSERT INTO `oc_zone` VALUES ('2117', '135', 'Assaba', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2118', '135', 'Brakna', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2119', '135', 'Dakhlet Nouadhibou', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('2120', '135', 'Gorgol', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('2121', '135', 'Guidimaka', 'GM', '1');
INSERT INTO `oc_zone` VALUES ('2122', '135', 'Hodh Ech Chargui', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('2123', '135', 'Hodh El Gharbi', 'HG', '1');
INSERT INTO `oc_zone` VALUES ('2124', '135', 'Inchiri', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('2125', '135', 'Tagant', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2126', '135', 'Tiris Zemmour', 'TZ', '1');
INSERT INTO `oc_zone` VALUES ('2127', '135', 'Trarza', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2128', '135', 'Nouakchott', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('2129', '136', 'Beau Bassin-Rose Hill', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2130', '136', 'Curepipe', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2131', '136', 'Port Louis', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('2132', '136', 'Quatre Bornes', 'QB', '1');
INSERT INTO `oc_zone` VALUES ('2133', '136', 'Vacoas-Phoenix', 'VP', '1');
INSERT INTO `oc_zone` VALUES ('2134', '136', 'Agalega Islands', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2135', '136', 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2136', '136', 'Rodrigues', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('2137', '136', 'Black River', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('2138', '136', 'Flacq', 'FL', '1');
INSERT INTO `oc_zone` VALUES ('2139', '136', 'Grand Port', 'GP', '1');
INSERT INTO `oc_zone` VALUES ('2140', '136', 'Moka', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2141', '136', 'Pamplemousses', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2142', '136', 'Plaines Wilhems', 'PW', '1');
INSERT INTO `oc_zone` VALUES ('2143', '136', 'Port Louis', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2144', '136', 'Riviere du Rempart', 'RR', '1');
INSERT INTO `oc_zone` VALUES ('2145', '136', 'Savanne', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2146', '138', 'Baja California Norte', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2147', '138', 'Baja California Sur', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('2148', '138', 'Campeche', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2149', '138', 'Chiapas', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('2150', '138', 'Chihuahua', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2151', '138', 'Coahuila de Zaragoza', 'CZ', '1');
INSERT INTO `oc_zone` VALUES ('2152', '138', 'Colima', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2153', '138', 'Distrito Federal', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('2154', '138', 'Durango', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('2155', '138', 'Guanajuato', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2156', '138', 'Guerrero', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2157', '138', 'Hidalgo', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('2158', '138', 'Jalisco', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('2159', '138', 'Mexico', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2160', '138', 'Michoacan de Ocampo', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('2161', '138', 'Morelos', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2162', '138', 'Nayarit', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2163', '138', 'Nuevo Leon', 'NL', '1');
INSERT INTO `oc_zone` VALUES ('2164', '138', 'Oaxaca', 'OA', '1');
INSERT INTO `oc_zone` VALUES ('2165', '138', 'Puebla', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('2166', '138', 'Queretaro de Arteaga', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('2167', '138', 'Quintana Roo', 'QR', '1');
INSERT INTO `oc_zone` VALUES ('2168', '138', 'San Luis Potosi', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2169', '138', 'Sinaloa', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('2170', '138', 'Sonora', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2171', '138', 'Tabasco', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('2172', '138', 'Tamaulipas', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2173', '138', 'Tlaxcala', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('2174', '138', 'Veracruz-Llave', 'VE', '1');
INSERT INTO `oc_zone` VALUES ('2175', '138', 'Yucatan', 'YU', '1');
INSERT INTO `oc_zone` VALUES ('2176', '138', 'Zacatecas', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2177', '139', 'Chuuk', 'C', '1');
INSERT INTO `oc_zone` VALUES ('2178', '139', 'Kosrae', 'K', '1');
INSERT INTO `oc_zone` VALUES ('2179', '139', 'Pohnpei', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2180', '139', 'Yap', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('2181', '140', 'Gagauzia', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2182', '140', 'Chisinau', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2183', '140', 'Balti', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2184', '140', 'Cahul', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2185', '140', 'Edinet', 'ED', '1');
INSERT INTO `oc_zone` VALUES ('2186', '140', 'Lapusna', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('2187', '140', 'Orhei', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('2188', '140', 'Soroca', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2189', '140', 'Tighina', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('2190', '140', 'Ungheni', 'UN', '1');
INSERT INTO `oc_zone` VALUES ('2191', '140', 'St‚nga Nistrului', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('2192', '141', 'Fontvieille', 'FV', '1');
INSERT INTO `oc_zone` VALUES ('2193', '141', 'La Condamine', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('2194', '141', 'Monaco-Ville', 'MV', '1');
INSERT INTO `oc_zone` VALUES ('2195', '141', 'Monte-Carlo', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('2196', '142', 'Ulanbaatar', '1', '1');
INSERT INTO `oc_zone` VALUES ('2197', '142', 'Orhon', '035', '1');
INSERT INTO `oc_zone` VALUES ('2198', '142', 'Darhan uul', '037', '1');
INSERT INTO `oc_zone` VALUES ('2199', '142', 'Hentiy', '039', '1');
INSERT INTO `oc_zone` VALUES ('2200', '142', 'Hovsgol', '041', '1');
INSERT INTO `oc_zone` VALUES ('2201', '142', 'Hovd', '043', '1');
INSERT INTO `oc_zone` VALUES ('2202', '142', 'Uvs', '046', '1');
INSERT INTO `oc_zone` VALUES ('2203', '142', 'Tov', '047', '1');
INSERT INTO `oc_zone` VALUES ('2204', '142', 'Selenge', '049', '1');
INSERT INTO `oc_zone` VALUES ('2205', '142', 'Suhbaatar', '051', '1');
INSERT INTO `oc_zone` VALUES ('2206', '142', 'Omnogovi', '053', '1');
INSERT INTO `oc_zone` VALUES ('2207', '142', 'Ovorhangay', '055', '1');
INSERT INTO `oc_zone` VALUES ('2208', '142', 'Dzavhan', '057', '1');
INSERT INTO `oc_zone` VALUES ('2209', '142', 'DundgovL', '059', '1');
INSERT INTO `oc_zone` VALUES ('2210', '142', 'Dornod', '061', '1');
INSERT INTO `oc_zone` VALUES ('2211', '142', 'Dornogov', '063', '1');
INSERT INTO `oc_zone` VALUES ('2212', '142', 'Govi-Sumber', '064', '1');
INSERT INTO `oc_zone` VALUES ('2213', '142', 'Govi-Altay', '065', '1');
INSERT INTO `oc_zone` VALUES ('2214', '142', 'Bulgan', '067', '1');
INSERT INTO `oc_zone` VALUES ('2215', '142', 'Bayanhongor', '069', '1');
INSERT INTO `oc_zone` VALUES ('2216', '142', 'Bayan-Olgiy', '071', '1');
INSERT INTO `oc_zone` VALUES ('2217', '142', 'Arhangay', '073', '1');
INSERT INTO `oc_zone` VALUES ('2218', '143', 'Saint Anthony', 'A', '1');
INSERT INTO `oc_zone` VALUES ('2219', '143', 'Saint Georges', 'G', '1');
INSERT INTO `oc_zone` VALUES ('2220', '143', 'Saint Peter', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2221', '144', 'Agadir', 'AGD', '1');
INSERT INTO `oc_zone` VALUES ('2222', '144', 'Al Hoceima', 'HOC', '1');
INSERT INTO `oc_zone` VALUES ('2223', '144', 'Azilal', 'AZI', '1');
INSERT INTO `oc_zone` VALUES ('2224', '144', 'Beni Mellal', 'BME', '1');
INSERT INTO `oc_zone` VALUES ('2225', '144', 'Ben Slimane', 'BSL', '1');
INSERT INTO `oc_zone` VALUES ('2226', '144', 'Boulemane', 'BLM', '1');
INSERT INTO `oc_zone` VALUES ('2227', '144', 'Casablanca', 'CBL', '1');
INSERT INTO `oc_zone` VALUES ('2228', '144', 'Chaouen', 'CHA', '1');
INSERT INTO `oc_zone` VALUES ('2229', '144', 'El Jadida', 'EJA', '1');
INSERT INTO `oc_zone` VALUES ('2230', '144', 'El Kelaa des Sraghna', 'EKS', '1');
INSERT INTO `oc_zone` VALUES ('2231', '144', 'Er Rachidia', 'ERA', '1');
INSERT INTO `oc_zone` VALUES ('2232', '144', 'Essaouira', 'ESS', '1');
INSERT INTO `oc_zone` VALUES ('2233', '144', 'Fes', 'FES', '1');
INSERT INTO `oc_zone` VALUES ('2234', '144', 'Figuig', 'FIG', '1');
INSERT INTO `oc_zone` VALUES ('2235', '144', 'Guelmim', 'GLM', '1');
INSERT INTO `oc_zone` VALUES ('2236', '144', 'Ifrane', 'IFR', '1');
INSERT INTO `oc_zone` VALUES ('2237', '144', 'Kenitra', 'KEN', '1');
INSERT INTO `oc_zone` VALUES ('2238', '144', 'Khemisset', 'KHM', '1');
INSERT INTO `oc_zone` VALUES ('2239', '144', 'Khenifra', 'KHN', '1');
INSERT INTO `oc_zone` VALUES ('2240', '144', 'Khouribga', 'KHO', '1');
INSERT INTO `oc_zone` VALUES ('2241', '144', 'Laayoune', 'LYN', '1');
INSERT INTO `oc_zone` VALUES ('2242', '144', 'Larache', 'LAR', '1');
INSERT INTO `oc_zone` VALUES ('2243', '144', 'Marrakech', 'MRK', '1');
INSERT INTO `oc_zone` VALUES ('2244', '144', 'Meknes', 'MKN', '1');
INSERT INTO `oc_zone` VALUES ('2245', '144', 'Nador', 'NAD', '1');
INSERT INTO `oc_zone` VALUES ('2246', '144', 'Ouarzazate', 'ORZ', '1');
INSERT INTO `oc_zone` VALUES ('2247', '144', 'Oujda', 'OUJ', '1');
INSERT INTO `oc_zone` VALUES ('2248', '144', 'Rabat-Sale', 'RSA', '1');
INSERT INTO `oc_zone` VALUES ('2249', '144', 'Safi', 'SAF', '1');
INSERT INTO `oc_zone` VALUES ('2250', '144', 'Settat', 'SET', '1');
INSERT INTO `oc_zone` VALUES ('2251', '144', 'Sidi Kacem', 'SKA', '1');
INSERT INTO `oc_zone` VALUES ('2252', '144', 'Tangier', 'TGR', '1');
INSERT INTO `oc_zone` VALUES ('2253', '144', 'Tan-Tan', 'TAN', '1');
INSERT INTO `oc_zone` VALUES ('2254', '144', 'Taounate', 'TAO', '1');
INSERT INTO `oc_zone` VALUES ('2255', '144', 'Taroudannt', 'TRD', '1');
INSERT INTO `oc_zone` VALUES ('2256', '144', 'Tata', 'TAT', '1');
INSERT INTO `oc_zone` VALUES ('2257', '144', 'Taza', 'TAZ', '1');
INSERT INTO `oc_zone` VALUES ('2258', '144', 'Tetouan', 'TET', '1');
INSERT INTO `oc_zone` VALUES ('2259', '144', 'Tiznit', 'TIZ', '1');
INSERT INTO `oc_zone` VALUES ('2260', '144', 'Ad Dakhla', 'ADK', '1');
INSERT INTO `oc_zone` VALUES ('2261', '144', 'Boujdour', 'BJD', '1');
INSERT INTO `oc_zone` VALUES ('2262', '144', 'Es Smara', 'ESM', '1');
INSERT INTO `oc_zone` VALUES ('2263', '145', 'Cabo Delgado', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2264', '145', 'Gaza', 'GZ', '1');
INSERT INTO `oc_zone` VALUES ('2265', '145', 'Inhambane', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('2266', '145', 'Manica', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2267', '145', 'Maputo (city)', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('2268', '145', 'Maputo', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('2269', '145', 'Nampula', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2270', '145', 'Niassa', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2271', '145', 'Sofala', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2272', '145', 'Tete', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('2273', '145', 'Zambezia', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2274', '146', 'Ayeyarwady', 'AY', '1');
INSERT INTO `oc_zone` VALUES ('2275', '146', 'Bago', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('2276', '146', 'Magway', 'MG', '1');
INSERT INTO `oc_zone` VALUES ('2277', '146', 'Mandalay', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2278', '146', 'Sagaing', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('2279', '146', 'Tanintharyi', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('2280', '146', 'Yangon', 'YG', '1');
INSERT INTO `oc_zone` VALUES ('2281', '146', 'Chin State', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2282', '146', 'Kachin State', 'KC', '1');
INSERT INTO `oc_zone` VALUES ('2283', '146', 'Kayah State', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('2284', '146', 'Kayin State', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('2285', '146', 'Mon State', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2286', '146', 'Rakhine State', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('2287', '146', 'Shan State', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2288', '147', 'Caprivi', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2289', '147', 'Erongo', 'ER', '1');
INSERT INTO `oc_zone` VALUES ('2290', '147', 'Hardap', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('2291', '147', 'Karas', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2292', '147', 'Kavango', 'KV', '1');
INSERT INTO `oc_zone` VALUES ('2293', '147', 'Khomas', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('2294', '147', 'Kunene', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('2295', '147', 'Ohangwena', 'OW', '1');
INSERT INTO `oc_zone` VALUES ('2296', '147', 'Omaheke', 'OK', '1');
INSERT INTO `oc_zone` VALUES ('2297', '147', 'Omusati', 'OT', '1');
INSERT INTO `oc_zone` VALUES ('2298', '147', 'Oshana', 'ON', '1');
INSERT INTO `oc_zone` VALUES ('2299', '147', 'Oshikoto', 'OO', '1');
INSERT INTO `oc_zone` VALUES ('2300', '147', 'Otjozondjupa', 'OJ', '1');
INSERT INTO `oc_zone` VALUES ('2301', '148', 'Aiwo', 'AO', '1');
INSERT INTO `oc_zone` VALUES ('2302', '148', 'Anabar', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('2303', '148', 'Anetan', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('2304', '148', 'Anibare', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('2305', '148', 'Baiti', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2306', '148', 'Boe', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2307', '148', 'Buada', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2308', '148', 'Denigomodu', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('2309', '148', 'Ewa', 'EW', '1');
INSERT INTO `oc_zone` VALUES ('2310', '148', 'Ijuw', 'IJ', '1');
INSERT INTO `oc_zone` VALUES ('2311', '148', 'Meneng', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2312', '148', 'Nibok', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2313', '148', 'Uaboe', 'UA', '1');
INSERT INTO `oc_zone` VALUES ('2314', '148', 'Yaren', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('2315', '149', 'Bagmati', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2316', '149', 'Bheri', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('2317', '149', 'Dhawalagiri', 'DH', '1');
INSERT INTO `oc_zone` VALUES ('2318', '149', 'Gandaki', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2319', '149', 'Janakpur', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('2320', '149', 'Karnali', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2321', '149', 'Kosi', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2322', '149', 'Lumbini', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('2323', '149', 'Mahakali', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2324', '149', 'Mechi', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2325', '149', 'Narayani', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2326', '149', 'Rapti', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('2327', '149', 'Sagarmatha', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2328', '149', 'Seti', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('2329', '150', 'Drenthe', 'DR', '1');
INSERT INTO `oc_zone` VALUES ('2330', '150', 'Flevoland', 'FL', '1');
INSERT INTO `oc_zone` VALUES ('2331', '150', 'Friesland', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('2332', '150', 'Gelderland', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2333', '150', 'Groningen', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2334', '150', 'Limburg', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('2335', '150', 'Noord Brabant', 'NB', '1');
INSERT INTO `oc_zone` VALUES ('2336', '150', 'Noord Holland', 'NH', '1');
INSERT INTO `oc_zone` VALUES ('2337', '150', 'Overijssel', 'OV', '1');
INSERT INTO `oc_zone` VALUES ('2338', '150', 'Utrecht', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('2339', '150', 'Zeeland', 'ZE', '1');
INSERT INTO `oc_zone` VALUES ('2340', '150', 'Zuid Holland', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('2341', '152', 'Iles Loyaute', 'L', '1');
INSERT INTO `oc_zone` VALUES ('2342', '152', 'Nord', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2343', '152', 'Sud', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2344', '153', 'Auckland', 'AUK', '1');
INSERT INTO `oc_zone` VALUES ('2345', '153', 'Bay of Plenty', 'BOP', '1');
INSERT INTO `oc_zone` VALUES ('2346', '153', 'Canterbury', 'CAN', '1');
INSERT INTO `oc_zone` VALUES ('2347', '153', 'Coromandel', 'COR', '1');
INSERT INTO `oc_zone` VALUES ('2348', '153', 'Gisborne', 'GIS', '1');
INSERT INTO `oc_zone` VALUES ('2349', '153', 'Fiordland', 'FIO', '1');
INSERT INTO `oc_zone` VALUES ('2350', '153', 'Hawke\'s Bay', 'HKB', '1');
INSERT INTO `oc_zone` VALUES ('2351', '153', 'Marlborough', 'MBH', '1');
INSERT INTO `oc_zone` VALUES ('2352', '153', 'Manawatu-Wanganui', 'MWT', '1');
INSERT INTO `oc_zone` VALUES ('2353', '153', 'Mt Cook-Mackenzie', 'MCM', '1');
INSERT INTO `oc_zone` VALUES ('2354', '153', 'Nelson', 'NSN', '1');
INSERT INTO `oc_zone` VALUES ('2355', '153', 'Northland', 'NTL', '1');
INSERT INTO `oc_zone` VALUES ('2356', '153', 'Otago', 'OTA', '1');
INSERT INTO `oc_zone` VALUES ('2357', '153', 'Southland', 'STL', '1');
INSERT INTO `oc_zone` VALUES ('2358', '153', 'Taranaki', 'TKI', '1');
INSERT INTO `oc_zone` VALUES ('2359', '153', 'Wellington', 'WGN', '1');
INSERT INTO `oc_zone` VALUES ('2360', '153', 'Waikato', 'WKO', '1');
INSERT INTO `oc_zone` VALUES ('2361', '153', 'Wairarapa', 'WAI', '1');
INSERT INTO `oc_zone` VALUES ('2362', '153', 'West Coast', 'WTC', '1');
INSERT INTO `oc_zone` VALUES ('2363', '154', 'Atlantico Norte', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2364', '154', 'Atlantico Sur', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2365', '154', 'Boaco', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2366', '154', 'Carazo', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2367', '154', 'Chinandega', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('2368', '154', 'Chontales', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('2369', '154', 'Esteli', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('2370', '154', 'Granada', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2371', '154', 'Jinotega', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('2372', '154', 'Leon', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('2373', '154', 'Madriz', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2374', '154', 'Managua', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2375', '154', 'Masaya', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('2376', '154', 'Matagalpa', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('2377', '154', 'Nuevo Segovia', 'NS', '1');
INSERT INTO `oc_zone` VALUES ('2378', '154', 'Rio San Juan', 'RS', '1');
INSERT INTO `oc_zone` VALUES ('2379', '154', 'Rivas', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('2380', '155', 'Agadez', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2381', '155', 'Diffa', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('2382', '155', 'Dosso', 'DS', '1');
INSERT INTO `oc_zone` VALUES ('2383', '155', 'Maradi', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2384', '155', 'Niamey', 'NM', '1');
INSERT INTO `oc_zone` VALUES ('2385', '155', 'Tahoua', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('2386', '155', 'Tillaberi', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('2387', '155', 'Zinder', 'ZD', '1');
INSERT INTO `oc_zone` VALUES ('2388', '156', 'Abia', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2389', '156', 'Abuja Federal Capital Territory', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('2390', '156', 'Adamawa', 'AD', '1');
INSERT INTO `oc_zone` VALUES ('2391', '156', 'Akwa Ibom', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('2392', '156', 'Anambra', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2393', '156', 'Bauchi', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('2394', '156', 'Bayelsa', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('2395', '156', 'Benue', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2396', '156', 'Borno', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2397', '156', 'Cross River', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('2398', '156', 'Delta', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('2399', '156', 'Ebonyi', 'EB', '1');
INSERT INTO `oc_zone` VALUES ('2400', '156', 'Edo', 'ED', '1');
INSERT INTO `oc_zone` VALUES ('2401', '156', 'Ekiti', 'EK', '1');
INSERT INTO `oc_zone` VALUES ('2402', '156', 'Enugu', 'EN', '1');
INSERT INTO `oc_zone` VALUES ('2403', '156', 'Gombe', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('2404', '156', 'Imo', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('2405', '156', 'Jigawa', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('2406', '156', 'Kaduna', 'KD', '1');
INSERT INTO `oc_zone` VALUES ('2407', '156', 'Kano', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('2408', '156', 'Katsina', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('2409', '156', 'Kebbi', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('2410', '156', 'Kogi', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2411', '156', 'Kwara', 'KW', '1');
INSERT INTO `oc_zone` VALUES ('2412', '156', 'Lagos', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('2413', '156', 'Nassarawa', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2414', '156', 'Niger', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2415', '156', 'Ogun', 'OG', '1');
INSERT INTO `oc_zone` VALUES ('2416', '156', 'Ondo', 'ONG', '1');
INSERT INTO `oc_zone` VALUES ('2417', '156', 'Osun', 'OS', '1');
INSERT INTO `oc_zone` VALUES ('2418', '156', 'Oyo', 'OY', '1');
INSERT INTO `oc_zone` VALUES ('2419', '156', 'Plateau', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2420', '156', 'Rivers', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('2421', '156', 'Sokoto', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2422', '156', 'Taraba', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2423', '156', 'Yobe', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('2424', '156', 'Zamfara', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2425', '159', 'Northern Islands', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2426', '159', 'Rota', 'R', '1');
INSERT INTO `oc_zone` VALUES ('2427', '159', 'Saipan', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2428', '159', 'Tinian', 'T', '1');
INSERT INTO `oc_zone` VALUES ('2429', '160', 'Akershus', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('2430', '160', 'Aust-Agder', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('2431', '160', 'Buskerud', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2432', '160', 'Finnmark', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('2433', '160', 'Hedmark', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('2434', '160', 'Hordaland', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('2435', '160', 'More og Romdal', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('2436', '160', 'Nord-Trondelag', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('2437', '160', 'Nordland', 'NL', '1');
INSERT INTO `oc_zone` VALUES ('2438', '160', 'Ostfold', 'OF', '1');
INSERT INTO `oc_zone` VALUES ('2439', '160', 'Oppland', 'OP', '1');
INSERT INTO `oc_zone` VALUES ('2440', '160', 'Oslo', 'OL', '1');
INSERT INTO `oc_zone` VALUES ('2441', '160', 'Rogaland', 'RL', '1');
INSERT INTO `oc_zone` VALUES ('2442', '160', 'Sor-Trondelag', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('2443', '160', 'Sogn og Fjordane', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('2444', '160', 'Svalbard', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('2445', '160', 'Telemark', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2446', '160', 'Troms', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2447', '160', 'Vest-Agder', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('2448', '160', 'Vestfold', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('2449', '161', 'Ad Dakhiliyah', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2450', '161', 'Al Batinah', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2451', '161', 'Al Wusta', 'WU', '1');
INSERT INTO `oc_zone` VALUES ('2452', '161', 'Ash Sharqiyah', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2453', '161', 'Az Zahirah', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2454', '161', 'Masqat', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2455', '161', 'Musandam', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('2456', '161', 'Zufar', 'ZU', '1');
INSERT INTO `oc_zone` VALUES ('2457', '162', 'Balochistan', 'B', '1');
INSERT INTO `oc_zone` VALUES ('2458', '162', 'Federally Administered Tribal Areas', 'T', '1');
INSERT INTO `oc_zone` VALUES ('2459', '162', 'Islamabad Capital Territory', 'I', '1');
INSERT INTO `oc_zone` VALUES ('2460', '162', 'North-West Frontier', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2461', '162', 'Punjab', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2462', '162', 'Sindh', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2463', '163', 'Aimeliik', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2464', '163', 'Airai', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2465', '163', 'Angaur', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2466', '163', 'Hatohobei', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('2467', '163', 'Kayangel', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2468', '163', 'Koror', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2469', '163', 'Melekeok', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2470', '163', 'Ngaraard', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2471', '163', 'Ngarchelong', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('2472', '163', 'Ngardmau', 'ND', '1');
INSERT INTO `oc_zone` VALUES ('2473', '163', 'Ngatpang', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('2474', '163', 'Ngchesar', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('2475', '163', 'Ngeremlengui', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('2476', '163', 'Ngiwal', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('2477', '163', 'Peleliu', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('2478', '163', 'Sonsorol', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2479', '164', 'Bocas del Toro', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('2480', '164', 'Chiriqui', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2481', '164', 'Cocle', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2482', '164', 'Colon', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2483', '164', 'Darien', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2484', '164', 'Herrera', 'HE', '1');
INSERT INTO `oc_zone` VALUES ('2485', '164', 'Los Santos', 'LS', '1');
INSERT INTO `oc_zone` VALUES ('2486', '164', 'Panama', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2487', '164', 'San Blas', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('2488', '164', 'Veraguas', 'VG', '1');
INSERT INTO `oc_zone` VALUES ('2489', '165', 'Bougainville', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('2490', '165', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2491', '165', 'Chimbu', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2492', '165', 'Eastern Highlands', 'EH', '1');
INSERT INTO `oc_zone` VALUES ('2493', '165', 'East New Britain', 'EB', '1');
INSERT INTO `oc_zone` VALUES ('2494', '165', 'East Sepik', 'ES', '1');
INSERT INTO `oc_zone` VALUES ('2495', '165', 'Enga', 'EN', '1');
INSERT INTO `oc_zone` VALUES ('2496', '165', 'Gulf', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('2497', '165', 'Madang', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2498', '165', 'Manus', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('2499', '165', 'Milne Bay', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('2500', '165', 'Morobe', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('2501', '165', 'National Capital', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('2502', '165', 'New Ireland', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2503', '165', 'Northern', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('2504', '165', 'Sandaun', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2505', '165', 'Southern Highlands', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2506', '165', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('2507', '165', 'Western Highlands', 'WH', '1');
INSERT INTO `oc_zone` VALUES ('2508', '165', 'West New Britain', 'WB', '1');
INSERT INTO `oc_zone` VALUES ('2509', '166', 'Alto Paraguay', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2510', '166', 'Alto Parana', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2511', '166', 'Amambay', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2512', '166', 'Asuncion', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2513', '166', 'Boqueron', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2514', '166', 'Caaguazu', 'CG', '1');
INSERT INTO `oc_zone` VALUES ('2515', '166', 'Caazapa', 'CZ', '1');
INSERT INTO `oc_zone` VALUES ('2516', '166', 'Canindeyu', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('2517', '166', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2518', '166', 'Concepcion', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2519', '166', 'Cordillera', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2520', '166', 'Guaira', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('2521', '166', 'Itapua', 'IT', '1');
INSERT INTO `oc_zone` VALUES ('2522', '166', 'Misiones', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('2523', '166', 'Neembucu', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('2524', '166', 'Paraguari', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2525', '166', 'Presidente Hayes', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('2526', '166', 'San Pedro', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('2527', '167', 'Amazonas', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2528', '167', 'Ancash', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2529', '167', 'Apurimac', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('2530', '167', 'Arequipa', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2531', '167', 'Ayacucho', 'AY', '1');
INSERT INTO `oc_zone` VALUES ('2532', '167', 'Cajamarca', 'CJ', '1');
INSERT INTO `oc_zone` VALUES ('2533', '167', 'Callao', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2534', '167', 'Cusco', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2535', '167', 'Huancavelica', 'HV', '1');
INSERT INTO `oc_zone` VALUES ('2536', '167', 'Huanuco', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('2537', '167', 'Ica', 'IC', '1');
INSERT INTO `oc_zone` VALUES ('2538', '167', 'Junin', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('2539', '167', 'La Libertad', 'LD', '1');
INSERT INTO `oc_zone` VALUES ('2540', '167', 'Lambayeque', 'LY', '1');
INSERT INTO `oc_zone` VALUES ('2541', '167', 'Lima', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('2542', '167', 'Loreto', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('2543', '167', 'Madre de Dios', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2544', '167', 'Moquegua', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2545', '167', 'Pasco', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2546', '167', 'Piura', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('2547', '167', 'Puno', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('2548', '167', 'San Martin', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2549', '167', 'Tacna', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2550', '167', 'Tumbes', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('2551', '167', 'Ucayali', 'UC', '1');
INSERT INTO `oc_zone` VALUES ('2552', '168', 'Abra', 'ABR', '1');
INSERT INTO `oc_zone` VALUES ('2553', '168', 'Agusan del Norte', 'ANO', '1');
INSERT INTO `oc_zone` VALUES ('2554', '168', 'Agusan del Sur', 'ASU', '1');
INSERT INTO `oc_zone` VALUES ('2555', '168', 'Aklan', 'AKL', '1');
INSERT INTO `oc_zone` VALUES ('2556', '168', 'Albay', 'ALB', '1');
INSERT INTO `oc_zone` VALUES ('2557', '168', 'Antique', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('2558', '168', 'Apayao', 'APY', '1');
INSERT INTO `oc_zone` VALUES ('2559', '168', 'Aurora', 'AUR', '1');
INSERT INTO `oc_zone` VALUES ('2560', '168', 'Basilan', 'BAS', '1');
INSERT INTO `oc_zone` VALUES ('2561', '168', 'Bataan', 'BTA', '1');
INSERT INTO `oc_zone` VALUES ('2562', '168', 'Batanes', 'BTE', '1');
INSERT INTO `oc_zone` VALUES ('2563', '168', 'Batangas', 'BTG', '1');
INSERT INTO `oc_zone` VALUES ('2564', '168', 'Biliran', 'BLR', '1');
INSERT INTO `oc_zone` VALUES ('2565', '168', 'Benguet', 'BEN', '1');
INSERT INTO `oc_zone` VALUES ('2566', '168', 'Bohol', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('2567', '168', 'Bukidnon', 'BUK', '1');
INSERT INTO `oc_zone` VALUES ('2568', '168', 'Bulacan', 'BUL', '1');
INSERT INTO `oc_zone` VALUES ('2569', '168', 'Cagayan', 'CAG', '1');
INSERT INTO `oc_zone` VALUES ('2570', '168', 'Camarines Norte', 'CNO', '1');
INSERT INTO `oc_zone` VALUES ('2571', '168', 'Camarines Sur', 'CSU', '1');
INSERT INTO `oc_zone` VALUES ('2572', '168', 'Camiguin', 'CAM', '1');
INSERT INTO `oc_zone` VALUES ('2573', '168', 'Capiz', 'CAP', '1');
INSERT INTO `oc_zone` VALUES ('2574', '168', 'Catanduanes', 'CAT', '1');
INSERT INTO `oc_zone` VALUES ('2575', '168', 'Cavite', 'CAV', '1');
INSERT INTO `oc_zone` VALUES ('2576', '168', 'Cebu', 'CEB', '1');
INSERT INTO `oc_zone` VALUES ('2577', '168', 'Compostela', 'CMP', '1');
INSERT INTO `oc_zone` VALUES ('2578', '168', 'Davao del Norte', 'DNO', '1');
INSERT INTO `oc_zone` VALUES ('2579', '168', 'Davao del Sur', 'DSU', '1');
INSERT INTO `oc_zone` VALUES ('2580', '168', 'Davao Oriental', 'DOR', '1');
INSERT INTO `oc_zone` VALUES ('2581', '168', 'Eastern Samar', 'ESA', '1');
INSERT INTO `oc_zone` VALUES ('2582', '168', 'Guimaras', 'GUI', '1');
INSERT INTO `oc_zone` VALUES ('2583', '168', 'Ifugao', 'IFU', '1');
INSERT INTO `oc_zone` VALUES ('2584', '168', 'Ilocos Norte', 'INO', '1');
INSERT INTO `oc_zone` VALUES ('2585', '168', 'Ilocos Sur', 'ISU', '1');
INSERT INTO `oc_zone` VALUES ('2586', '168', 'Iloilo', 'ILO', '1');
INSERT INTO `oc_zone` VALUES ('2587', '168', 'Isabela', 'ISA', '1');
INSERT INTO `oc_zone` VALUES ('2588', '168', 'Kalinga', 'KAL', '1');
INSERT INTO `oc_zone` VALUES ('2589', '168', 'Laguna', 'LAG', '1');
INSERT INTO `oc_zone` VALUES ('2590', '168', 'Lanao del Norte', 'LNO', '1');
INSERT INTO `oc_zone` VALUES ('2591', '168', 'Lanao del Sur', 'LSU', '1');
INSERT INTO `oc_zone` VALUES ('2592', '168', 'La Union', 'UNI', '1');
INSERT INTO `oc_zone` VALUES ('2593', '168', 'Leyte', 'LEY', '1');
INSERT INTO `oc_zone` VALUES ('2594', '168', 'Maguindanao', 'MAG', '1');
INSERT INTO `oc_zone` VALUES ('2595', '168', 'Marinduque', 'MRN', '1');
INSERT INTO `oc_zone` VALUES ('2596', '168', 'Masbate', 'MSB', '1');
INSERT INTO `oc_zone` VALUES ('2597', '168', 'Mindoro Occidental', 'MIC', '1');
INSERT INTO `oc_zone` VALUES ('2598', '168', 'Mindoro Oriental', 'MIR', '1');
INSERT INTO `oc_zone` VALUES ('2599', '168', 'Misamis Occidental', 'MSC', '1');
INSERT INTO `oc_zone` VALUES ('2600', '168', 'Misamis Oriental', 'MOR', '1');
INSERT INTO `oc_zone` VALUES ('2601', '168', 'Mountain', 'MOP', '1');
INSERT INTO `oc_zone` VALUES ('2602', '168', 'Negros Occidental', 'NOC', '1');
INSERT INTO `oc_zone` VALUES ('2603', '168', 'Negros Oriental', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('2604', '168', 'North Cotabato', 'NCT', '1');
INSERT INTO `oc_zone` VALUES ('2605', '168', 'Northern Samar', 'NSM', '1');
INSERT INTO `oc_zone` VALUES ('2606', '168', 'Nueva Ecija', 'NEC', '1');
INSERT INTO `oc_zone` VALUES ('2607', '168', 'Nueva Vizcaya', 'NVZ', '1');
INSERT INTO `oc_zone` VALUES ('2608', '168', 'Palawan', 'PLW', '1');
INSERT INTO `oc_zone` VALUES ('2609', '168', 'Pampanga', 'PMP', '1');
INSERT INTO `oc_zone` VALUES ('2610', '168', 'Pangasinan', 'PNG', '1');
INSERT INTO `oc_zone` VALUES ('2611', '168', 'Quezon', 'QZN', '1');
INSERT INTO `oc_zone` VALUES ('2612', '168', 'Quirino', 'QRN', '1');
INSERT INTO `oc_zone` VALUES ('2613', '168', 'Rizal', 'RIZ', '1');
INSERT INTO `oc_zone` VALUES ('2614', '168', 'Romblon', 'ROM', '1');
INSERT INTO `oc_zone` VALUES ('2615', '168', 'Samar', 'SMR', '1');
INSERT INTO `oc_zone` VALUES ('2616', '168', 'Sarangani', 'SRG', '1');
INSERT INTO `oc_zone` VALUES ('2617', '168', 'Siquijor', 'SQJ', '1');
INSERT INTO `oc_zone` VALUES ('2618', '168', 'Sorsogon', 'SRS', '1');
INSERT INTO `oc_zone` VALUES ('2619', '168', 'South Cotabato', 'SCO', '1');
INSERT INTO `oc_zone` VALUES ('2620', '168', 'Southern Leyte', 'SLE', '1');
INSERT INTO `oc_zone` VALUES ('2621', '168', 'Sultan Kudarat', 'SKU', '1');
INSERT INTO `oc_zone` VALUES ('2622', '168', 'Sulu', 'SLU', '1');
INSERT INTO `oc_zone` VALUES ('2623', '168', 'Surigao del Norte', 'SNO', '1');
INSERT INTO `oc_zone` VALUES ('2624', '168', 'Surigao del Sur', 'SSU', '1');
INSERT INTO `oc_zone` VALUES ('2625', '168', 'Tarlac', 'TAR', '1');
INSERT INTO `oc_zone` VALUES ('2626', '168', 'Tawi-Tawi', 'TAW', '1');
INSERT INTO `oc_zone` VALUES ('2627', '168', 'Zambales', 'ZBL', '1');
INSERT INTO `oc_zone` VALUES ('2628', '168', 'Zamboanga del Norte', 'ZNO', '1');
INSERT INTO `oc_zone` VALUES ('2629', '168', 'Zamboanga del Sur', 'ZSU', '1');
INSERT INTO `oc_zone` VALUES ('2630', '168', 'Zamboanga Sibugay', 'ZSI', '1');
INSERT INTO `oc_zone` VALUES ('2631', '170', 'Dolnoslaskie', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('2632', '170', 'Kujawsko-Pomorskie', 'KP', '1');
INSERT INTO `oc_zone` VALUES ('2633', '170', 'Lodzkie', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('2634', '170', 'Lubelskie', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('2635', '170', 'Lubuskie', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('2636', '170', 'Malopolskie', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('2637', '170', 'Mazowieckie', 'MZ', '1');
INSERT INTO `oc_zone` VALUES ('2638', '170', 'Opolskie', 'OP', '1');
INSERT INTO `oc_zone` VALUES ('2639', '170', 'Podkarpackie', 'PP', '1');
INSERT INTO `oc_zone` VALUES ('2640', '170', 'Podlaskie', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2641', '170', 'Pomorskie', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('2642', '170', 'Slaskie', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2643', '170', 'Swietokrzyskie', 'SW', '1');
INSERT INTO `oc_zone` VALUES ('2644', '170', 'Warminsko-Mazurskie', 'WM', '1');
INSERT INTO `oc_zone` VALUES ('2645', '170', 'Wielkopolskie', 'WP', '1');
INSERT INTO `oc_zone` VALUES ('2646', '170', 'Zachodniopomorskie', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('2647', '198', 'Saint Pierre', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2648', '198', 'Miquelon', 'M', '1');
INSERT INTO `oc_zone` VALUES ('2649', '171', 'A&ccedil;ores', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('2650', '171', 'Aveiro', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('2651', '171', 'Beja', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('2652', '171', 'Braga', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2653', '171', 'Bragan&ccedil;a', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2654', '171', 'Castelo Branco', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('2655', '171', 'Coimbra', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('2656', '171', '&Eacute;vora', 'EV', '1');
INSERT INTO `oc_zone` VALUES ('2657', '171', 'Faro', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2658', '171', 'Guarda', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('2659', '171', 'Leiria', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('2660', '171', 'Lisboa', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('2661', '171', 'Madeira', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('2662', '171', 'Portalegre', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('2663', '171', 'Porto', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2664', '171', 'Santar&eacute;m', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2665', '171', 'Set&uacute;bal', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('2666', '171', 'Viana do Castelo', 'VC', '1');
INSERT INTO `oc_zone` VALUES ('2667', '171', 'Vila Real', 'VR', '1');
INSERT INTO `oc_zone` VALUES ('2668', '171', 'Viseu', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('2669', '173', 'Ad Dawhah', 'DW', '1');
INSERT INTO `oc_zone` VALUES ('2670', '173', 'Al Ghuwayriyah', 'GW', '1');
INSERT INTO `oc_zone` VALUES ('2671', '173', 'Al Jumayliyah', 'JM', '1');
INSERT INTO `oc_zone` VALUES ('2672', '173', 'Al Khawr', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2673', '173', 'Al Wakrah', 'WK', '1');
INSERT INTO `oc_zone` VALUES ('2674', '173', 'Ar Rayyan', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('2675', '173', 'Jarayan al Batinah', 'JB', '1');
INSERT INTO `oc_zone` VALUES ('2676', '173', 'Madinat ash Shamal', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('2677', '173', 'Umm Sa\'id', 'UD', '1');
INSERT INTO `oc_zone` VALUES ('2678', '173', 'Umm Salal', 'UL', '1');
INSERT INTO `oc_zone` VALUES ('2679', '175', 'Alba', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2680', '175', 'Arad', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2681', '175', 'Arges', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2682', '175', 'Bacau', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('2683', '175', 'Bihor', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('2684', '175', 'Bistrita-Nasaud', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2685', '175', 'Botosani', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('2686', '175', 'Brasov', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('2687', '175', 'Braila', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2688', '175', 'Bucuresti', 'B', '1');
INSERT INTO `oc_zone` VALUES ('2689', '175', 'Buzau', 'BZ', '1');
INSERT INTO `oc_zone` VALUES ('2690', '175', 'Caras-Severin', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('2691', '175', 'Calarasi', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2692', '175', 'Cluj', 'CJ', '1');
INSERT INTO `oc_zone` VALUES ('2693', '175', 'Constanta', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('2694', '175', 'Covasna', 'CV', '1');
INSERT INTO `oc_zone` VALUES ('2695', '175', 'Dimbovita', 'DB', '1');
INSERT INTO `oc_zone` VALUES ('2696', '175', 'Dolj', 'DJ', '1');
INSERT INTO `oc_zone` VALUES ('2697', '175', 'Galati', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('2698', '175', 'Giurgiu', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2699', '175', 'Gorj', 'GJ', '1');
INSERT INTO `oc_zone` VALUES ('2700', '175', 'Harghita', 'HR', '1');
INSERT INTO `oc_zone` VALUES ('2701', '175', 'Hunedoara', 'HD', '1');
INSERT INTO `oc_zone` VALUES ('2702', '175', 'Ialomita', 'IL', '1');
INSERT INTO `oc_zone` VALUES ('2703', '175', 'Iasi', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('2704', '175', 'Ilfov', 'IF', '1');
INSERT INTO `oc_zone` VALUES ('2705', '175', 'Maramures', 'MM', '1');
INSERT INTO `oc_zone` VALUES ('2706', '175', 'Mehedinti', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('2707', '175', 'Mures', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('2708', '175', 'Neamt', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('2709', '175', 'Olt', 'OT', '1');
INSERT INTO `oc_zone` VALUES ('2710', '175', 'Prahova', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('2711', '175', 'Satu-Mare', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2712', '175', 'Salaj', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('2713', '175', 'Sibiu', 'SB', '1');
INSERT INTO `oc_zone` VALUES ('2714', '175', 'Suceava', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('2715', '175', 'Teleorman', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2716', '175', 'Timis', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2717', '175', 'Tulcea', 'TL', '1');
INSERT INTO `oc_zone` VALUES ('2718', '175', 'Vaslui', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('2719', '175', 'Valcea', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('2720', '175', 'Vrancea', 'VN', '1');
INSERT INTO `oc_zone` VALUES ('2721', '176', 'Abakan', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2722', '176', 'Aginskoye', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('2723', '176', 'Anadyr', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2724', '176', 'Arkahangelsk', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2725', '176', 'Astrakhan', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2726', '176', 'Barnaul', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2727', '176', 'Belgorod', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('2728', '176', 'Birobidzhan', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('2729', '176', 'Blagoveshchensk', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('2730', '176', 'Bryansk', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2731', '176', 'Cheboksary', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2732', '176', 'Chelyabinsk', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2733', '176', 'Cherkessk', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('2734', '176', 'Chita', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('2735', '176', 'Dudinka', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('2736', '176', 'Elista', 'EL', '1');
INSERT INTO `oc_zone` VALUES ('2737', '176', 'Gomo-Altaysk', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('2738', '176', 'Gorno-Altaysk', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2739', '176', 'Groznyy', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('2740', '176', 'Irkutsk', 'IR', '1');
INSERT INTO `oc_zone` VALUES ('2741', '176', 'Ivanovo', 'IV', '1');
INSERT INTO `oc_zone` VALUES ('2742', '176', 'Izhevsk', 'IZ', '1');
INSERT INTO `oc_zone` VALUES ('2743', '176', 'Kalinigrad', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2744', '176', 'Kaluga', 'KL', '1');
INSERT INTO `oc_zone` VALUES ('2745', '176', 'Kasnodar', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('2746', '176', 'Kazan', 'KZ', '1');
INSERT INTO `oc_zone` VALUES ('2747', '176', 'Kemerovo', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('2748', '176', 'Khabarovsk', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('2749', '176', 'Khanty-Mansiysk', 'KM', '1');
INSERT INTO `oc_zone` VALUES ('2750', '176', 'Kostroma', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2751', '176', 'Krasnodar', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2752', '176', 'Krasnoyarsk', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('2753', '176', 'Kudymkar', 'KU', '1');
INSERT INTO `oc_zone` VALUES ('2754', '176', 'Kurgan', 'KG', '1');
INSERT INTO `oc_zone` VALUES ('2755', '176', 'Kursk', 'KK', '1');
INSERT INTO `oc_zone` VALUES ('2756', '176', 'Kyzyl', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('2757', '176', 'Lipetsk', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('2758', '176', 'Magadan', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2759', '176', 'Makhachkala', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('2760', '176', 'Maykop', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('2761', '176', 'Moscow', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2762', '176', 'Murmansk', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('2763', '176', 'Nalchik', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('2764', '176', 'Naryan Mar', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('2765', '176', 'Nazran', 'NZ', '1');
INSERT INTO `oc_zone` VALUES ('2766', '176', 'Nizhniy Novgorod', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2767', '176', 'Novgorod', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('2768', '176', 'Novosibirsk', 'NV', '1');
INSERT INTO `oc_zone` VALUES ('2769', '176', 'Omsk', 'OM', '1');
INSERT INTO `oc_zone` VALUES ('2770', '176', 'Orel', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('2771', '176', 'Orenburg', 'OE', '1');
INSERT INTO `oc_zone` VALUES ('2772', '176', 'Palana', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2773', '176', 'Penza', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('2774', '176', 'Perm', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2775', '176', 'Petropavlovsk-Kamchatskiy', 'PK', '1');
INSERT INTO `oc_zone` VALUES ('2776', '176', 'Petrozavodsk', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('2777', '176', 'Pskov', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('2778', '176', 'Rostov-na-Donu', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('2779', '176', 'Ryazan', 'RY', '1');
INSERT INTO `oc_zone` VALUES ('2780', '176', 'Salekhard', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2781', '176', 'Samara', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2782', '176', 'Saransk', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('2783', '176', 'Saratov', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('2784', '176', 'Smolensk', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2785', '176', 'St. Petersburg', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('2786', '176', 'Stavropol', 'ST', '1');
INSERT INTO `oc_zone` VALUES ('2787', '176', 'Syktyvkar', 'SY', '1');
INSERT INTO `oc_zone` VALUES ('2788', '176', 'Tambov', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2789', '176', 'Tomsk', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('2790', '176', 'Tula', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('2791', '176', 'Tura', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('2792', '176', 'Tver', 'TV', '1');
INSERT INTO `oc_zone` VALUES ('2793', '176', 'Tyumen', 'TY', '1');
INSERT INTO `oc_zone` VALUES ('2794', '176', 'Ufa', 'UF', '1');
INSERT INTO `oc_zone` VALUES ('2795', '176', 'Ul\'yanovsk', 'UL', '1');
INSERT INTO `oc_zone` VALUES ('2796', '176', 'Ulan-Ude', 'UU', '1');
INSERT INTO `oc_zone` VALUES ('2797', '176', 'Ust\'-Ordynskiy', 'US', '1');
INSERT INTO `oc_zone` VALUES ('2798', '176', 'Vladikavkaz', 'VL', '1');
INSERT INTO `oc_zone` VALUES ('2799', '176', 'Vladimir', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('2800', '176', 'Vladivostok', 'VV', '1');
INSERT INTO `oc_zone` VALUES ('2801', '176', 'Volgograd', 'VG', '1');
INSERT INTO `oc_zone` VALUES ('2802', '176', 'Vologda', 'VD', '1');
INSERT INTO `oc_zone` VALUES ('2803', '176', 'Voronezh', 'VO', '1');
INSERT INTO `oc_zone` VALUES ('2804', '176', 'Vyatka', 'VY', '1');
INSERT INTO `oc_zone` VALUES ('2805', '176', 'Yakutsk', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('2806', '176', 'Yaroslavl', 'YR', '1');
INSERT INTO `oc_zone` VALUES ('2807', '176', 'Yekaterinburg', 'YE', '1');
INSERT INTO `oc_zone` VALUES ('2808', '176', 'Yoshkar-Ola', 'YO', '1');
INSERT INTO `oc_zone` VALUES ('2809', '177', 'Butare', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2810', '177', 'Byumba', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('2811', '177', 'Cyangugu', 'CY', '1');
INSERT INTO `oc_zone` VALUES ('2812', '177', 'Gikongoro', 'GK', '1');
INSERT INTO `oc_zone` VALUES ('2813', '177', 'Gisenyi', 'GS', '1');
INSERT INTO `oc_zone` VALUES ('2814', '177', 'Gitarama', 'GT', '1');
INSERT INTO `oc_zone` VALUES ('2815', '177', 'Kibungo', 'KG', '1');
INSERT INTO `oc_zone` VALUES ('2816', '177', 'Kibuye', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('2817', '177', 'Kigali Rurale', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('2818', '177', 'Kigali-ville', 'KV', '1');
INSERT INTO `oc_zone` VALUES ('2819', '177', 'Ruhengeri', 'RU', '1');
INSERT INTO `oc_zone` VALUES ('2820', '177', 'Umutara', 'UM', '1');
INSERT INTO `oc_zone` VALUES ('2821', '178', 'Christ Church Nichola Town', 'CCN', '1');
INSERT INTO `oc_zone` VALUES ('2822', '178', 'Saint Anne Sandy Point', 'SAS', '1');
INSERT INTO `oc_zone` VALUES ('2823', '178', 'Saint George Basseterre', 'SGB', '1');
INSERT INTO `oc_zone` VALUES ('2824', '178', 'Saint George Gingerland', 'SGG', '1');
INSERT INTO `oc_zone` VALUES ('2825', '178', 'Saint James Windward', 'SJW', '1');
INSERT INTO `oc_zone` VALUES ('2826', '178', 'Saint John Capesterre', 'SJC', '1');
INSERT INTO `oc_zone` VALUES ('2827', '178', 'Saint John Figtree', 'SJF', '1');
INSERT INTO `oc_zone` VALUES ('2828', '178', 'Saint Mary Cayon', 'SMC', '1');
INSERT INTO `oc_zone` VALUES ('2829', '178', 'Saint Paul Capesterre', 'CAP', '1');
INSERT INTO `oc_zone` VALUES ('2830', '178', 'Saint Paul Charlestown', 'CHA', '1');
INSERT INTO `oc_zone` VALUES ('2831', '178', 'Saint Peter Basseterre', 'SPB', '1');
INSERT INTO `oc_zone` VALUES ('2832', '178', 'Saint Thomas Lowland', 'STL', '1');
INSERT INTO `oc_zone` VALUES ('2833', '178', 'Saint Thomas Middle Island', 'STM', '1');
INSERT INTO `oc_zone` VALUES ('2834', '178', 'Trinity Palmetto Point', 'TPP', '1');
INSERT INTO `oc_zone` VALUES ('2835', '179', 'Anse-la-Raye', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2836', '179', 'Castries', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2837', '179', 'Choiseul', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2838', '179', 'Dauphin', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2839', '179', 'Dennery', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('2840', '179', 'Gros-Islet', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('2841', '179', 'Laborie', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('2842', '179', 'Micoud', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('2843', '179', 'Praslin', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2844', '179', 'Soufriere', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('2845', '179', 'Vieux-Fort', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('2846', '180', 'Charlotte', 'C', '1');
INSERT INTO `oc_zone` VALUES ('2847', '180', 'Grenadines', 'R', '1');
INSERT INTO `oc_zone` VALUES ('2848', '180', 'Saint Andrew', 'A', '1');
INSERT INTO `oc_zone` VALUES ('2849', '180', 'Saint David', 'D', '1');
INSERT INTO `oc_zone` VALUES ('2850', '180', 'Saint George', 'G', '1');
INSERT INTO `oc_zone` VALUES ('2851', '180', 'Saint Patrick', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2852', '181', 'A\'ana', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('2853', '181', 'Aiga-i-le-Tai', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('2854', '181', 'Atua', 'AT', '1');
INSERT INTO `oc_zone` VALUES ('2855', '181', 'Fa\'asaleleaga', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2856', '181', 'Gaga\'emauga', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2857', '181', 'Gagaifomauga', 'GF', '1');
INSERT INTO `oc_zone` VALUES ('2858', '181', 'Palauli', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('2859', '181', 'Satupa\'itea', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2860', '181', 'Tuamasaga', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('2861', '181', 'Va\'a-o-Fonoti', 'VF', '1');
INSERT INTO `oc_zone` VALUES ('2862', '181', 'Vaisigano', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('2863', '182', 'Acquaviva', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('2864', '182', 'Borgo Maggiore', 'BM', '1');
INSERT INTO `oc_zone` VALUES ('2865', '182', 'Chiesanuova', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2866', '182', 'Domagnano', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('2867', '182', 'Faetano', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2868', '182', 'Fiorentino', 'FI', '1');
INSERT INTO `oc_zone` VALUES ('2869', '182', 'Montegiardino', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('2870', '182', 'Citta di San Marino', 'SM', '1');
INSERT INTO `oc_zone` VALUES ('2871', '182', 'Serravalle', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('2872', '183', 'Sao Tome', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2873', '183', 'Principe', 'P', '1');
INSERT INTO `oc_zone` VALUES ('2874', '184', 'Al Bahah', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('2875', '184', 'Al Hudud ash Shamaliyah', 'HS', '1');
INSERT INTO `oc_zone` VALUES ('2876', '184', 'Al Jawf', 'JF', '1');
INSERT INTO `oc_zone` VALUES ('2877', '184', 'Al Madinah', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('2878', '184', 'Al Qasim', 'QS', '1');
INSERT INTO `oc_zone` VALUES ('2879', '184', 'Ar Riyad', 'RD', '1');
INSERT INTO `oc_zone` VALUES ('2880', '184', 'Ash Sharqiyah (Eastern)', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('2881', '184', '\'Asir', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2882', '184', 'Ha\'il', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('2883', '184', 'Jizan', 'JZ', '1');
INSERT INTO `oc_zone` VALUES ('2884', '184', 'Makkah', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('2885', '184', 'Najran', 'NR', '1');
INSERT INTO `oc_zone` VALUES ('2886', '184', 'Tabuk', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('2887', '185', 'Dakar', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('2888', '185', 'Diourbel', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('2889', '185', 'Fatick', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('2890', '185', 'Kaolack', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('2891', '185', 'Kolda', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2892', '185', 'Louga', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('2893', '185', 'Matam', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('2894', '185', 'Saint-Louis', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2895', '185', 'Tambacounda', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2896', '185', 'Thies', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('2897', '185', 'Ziguinchor', 'ZI', '1');
INSERT INTO `oc_zone` VALUES ('2898', '186', 'Anse aux Pins', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('2899', '186', 'Anse Boileau', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2900', '186', 'Anse Etoile', 'AE', '1');
INSERT INTO `oc_zone` VALUES ('2901', '186', 'Anse Louis', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('2902', '186', 'Anse Royale', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('2903', '186', 'Baie Lazare', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('2904', '186', 'Baie Sainte Anne', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('2905', '186', 'Beau Vallon', 'BV', '1');
INSERT INTO `oc_zone` VALUES ('2906', '186', 'Bel Air', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2907', '186', 'Bel Ombre', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('2908', '186', 'Cascade', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2909', '186', 'Glacis', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('2910', '186', 'Grand\' Anse (on Mahe)', 'GM', '1');
INSERT INTO `oc_zone` VALUES ('2911', '186', 'Grand\' Anse (on Praslin)', 'GP', '1');
INSERT INTO `oc_zone` VALUES ('2912', '186', 'La Digue', 'DG', '1');
INSERT INTO `oc_zone` VALUES ('2913', '186', 'La Riviere Anglaise', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('2914', '186', 'Mont Buxton', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('2915', '186', 'Mont Fleuri', 'MF', '1');
INSERT INTO `oc_zone` VALUES ('2916', '186', 'Plaisance', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('2917', '186', 'Pointe La Rue', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2918', '186', 'Port Glaud', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('2919', '186', 'Saint Louis', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2920', '186', 'Takamaka', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('2921', '187', 'Eastern', 'E', '1');
INSERT INTO `oc_zone` VALUES ('2922', '187', 'Northern', 'N', '1');
INSERT INTO `oc_zone` VALUES ('2923', '187', 'Southern', 'S', '1');
INSERT INTO `oc_zone` VALUES ('2924', '187', 'Western', 'W', '1');
INSERT INTO `oc_zone` VALUES ('2925', '189', 'Banskobystrický', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2926', '189', 'Bratislavský', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2927', '189', 'Košický', 'KO', '1');
INSERT INTO `oc_zone` VALUES ('2928', '189', 'Nitriansky', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('2929', '189', 'Prešovský', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('2930', '189', 'Trenčiansky', 'TC', '1');
INSERT INTO `oc_zone` VALUES ('2931', '189', 'Trnavský', 'TV', '1');
INSERT INTO `oc_zone` VALUES ('2932', '189', 'Žilinský', 'ZI', '1');
INSERT INTO `oc_zone` VALUES ('2933', '191', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2934', '191', 'Choiseul', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('2935', '191', 'Guadalcanal', 'GC', '1');
INSERT INTO `oc_zone` VALUES ('2936', '191', 'Honiara', 'HO', '1');
INSERT INTO `oc_zone` VALUES ('2937', '191', 'Isabel', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('2938', '191', 'Makira', 'MK', '1');
INSERT INTO `oc_zone` VALUES ('2939', '191', 'Malaita', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('2940', '191', 'Rennell and Bellona', 'RB', '1');
INSERT INTO `oc_zone` VALUES ('2941', '191', 'Temotu', 'TM', '1');
INSERT INTO `oc_zone` VALUES ('2942', '191', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('2943', '192', 'Awdal', 'AW', '1');
INSERT INTO `oc_zone` VALUES ('2944', '192', 'Bakool', 'BK', '1');
INSERT INTO `oc_zone` VALUES ('2945', '192', 'Banaadir', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('2946', '192', 'Bari', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('2947', '192', 'Bay', 'BY', '1');
INSERT INTO `oc_zone` VALUES ('2948', '192', 'Galguduud', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('2949', '192', 'Gedo', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('2950', '192', 'Hiiraan', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('2951', '192', 'Jubbada Dhexe', 'JD', '1');
INSERT INTO `oc_zone` VALUES ('2952', '192', 'Jubbada Hoose', 'JH', '1');
INSERT INTO `oc_zone` VALUES ('2953', '192', 'Mudug', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('2954', '192', 'Nugaal', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('2955', '192', 'Sanaag', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('2956', '192', 'Shabeellaha Dhexe', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('2957', '192', 'Shabeellaha Hoose', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('2958', '192', 'Sool', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('2959', '192', 'Togdheer', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('2960', '192', 'Woqooyi Galbeed', 'WG', '1');
INSERT INTO `oc_zone` VALUES ('2961', '193', 'Eastern Cape', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('2962', '193', 'Free State', 'FS', '1');
INSERT INTO `oc_zone` VALUES ('2963', '193', 'Gauteng', 'GT', '1');
INSERT INTO `oc_zone` VALUES ('2964', '193', 'KwaZulu-Natal', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('2965', '193', 'Limpopo', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('2966', '193', 'Mpumalanga', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('2967', '193', 'North West', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('2968', '193', 'Northern Cape', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('2969', '193', 'Western Cape', 'WC', '1');
INSERT INTO `oc_zone` VALUES ('2970', '195', 'La Coru&ntilde;a', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('2971', '195', '&Aacute;lava', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('2972', '195', 'Albacete', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('2973', '195', 'Alicante', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('2974', '195', 'Almeria', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('2975', '195', 'Asturias', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('2976', '195', '&Aacute;vila', 'AV', '1');
INSERT INTO `oc_zone` VALUES ('2977', '195', 'Badajoz', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('2978', '195', 'Baleares', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('2979', '195', 'Barcelona', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('2980', '195', 'Burgos', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('2981', '195', 'C&aacute;ceres', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('2982', '195', 'C&aacute;diz', 'CZ', '1');
INSERT INTO `oc_zone` VALUES ('2983', '195', 'Cantabria', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('2984', '195', 'Castell&oacute;n', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('2985', '195', 'Ceuta', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('2986', '195', 'Ciudad Real', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('2987', '195', 'C&oacute;rdoba', 'CD', '1');
INSERT INTO `oc_zone` VALUES ('2988', '195', 'Cuenca', 'CU', '1');
INSERT INTO `oc_zone` VALUES ('2989', '195', 'Girona', 'GI', '1');
INSERT INTO `oc_zone` VALUES ('2990', '195', 'Granada', 'GD', '1');
INSERT INTO `oc_zone` VALUES ('2991', '195', 'Guadalajara', 'GJ', '1');
INSERT INTO `oc_zone` VALUES ('2992', '195', 'Guip&uacute;zcoa', 'GP', '1');
INSERT INTO `oc_zone` VALUES ('2993', '195', 'Huelva', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('2994', '195', 'Huesca', 'HS', '1');
INSERT INTO `oc_zone` VALUES ('2995', '195', 'Ja&eacute;n', 'JN', '1');
INSERT INTO `oc_zone` VALUES ('2996', '195', 'La Rioja', 'RJ', '1');
INSERT INTO `oc_zone` VALUES ('2997', '195', 'Las Palmas', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('2998', '195', 'Leon', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('2999', '195', 'Lleida', 'LL', '1');
INSERT INTO `oc_zone` VALUES ('3000', '195', 'Lugo', 'LG', '1');
INSERT INTO `oc_zone` VALUES ('3001', '195', 'Madrid', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('3002', '195', 'Malaga', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3003', '195', 'Melilla', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('3004', '195', 'Murcia', 'MU', '1');
INSERT INTO `oc_zone` VALUES ('3005', '195', 'Navarra', 'NV', '1');
INSERT INTO `oc_zone` VALUES ('3006', '195', 'Ourense', 'OU', '1');
INSERT INTO `oc_zone` VALUES ('3007', '195', 'Palencia', 'PL', '1');
INSERT INTO `oc_zone` VALUES ('3008', '195', 'Pontevedra', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('3009', '195', 'Salamanca', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3010', '195', 'Santa Cruz de Tenerife', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('3011', '195', 'Segovia', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('3012', '195', 'Sevilla', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('3013', '195', 'Soria', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3014', '195', 'Tarragona', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3015', '195', 'Teruel', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('3016', '195', 'Toledo', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3017', '195', 'Valencia', 'VC', '1');
INSERT INTO `oc_zone` VALUES ('3018', '195', 'Valladolid', 'VD', '1');
INSERT INTO `oc_zone` VALUES ('3019', '195', 'Vizcaya', 'VZ', '1');
INSERT INTO `oc_zone` VALUES ('3020', '195', 'Zamora', 'ZM', '1');
INSERT INTO `oc_zone` VALUES ('3021', '195', 'Zaragoza', 'ZR', '1');
INSERT INTO `oc_zone` VALUES ('3022', '196', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('3023', '196', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('3024', '196', 'North Central', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('3025', '196', 'Northern', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('3026', '196', 'North Western', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3027', '196', 'Sabaragamuwa', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3028', '196', 'Southern', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3029', '196', 'Uva', 'UV', '1');
INSERT INTO `oc_zone` VALUES ('3030', '196', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('3032', '197', 'Saint Helena', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3034', '199', 'A\'ali an Nil', 'ANL', '1');
INSERT INTO `oc_zone` VALUES ('3035', '199', 'Al Bahr al Ahmar', 'BAM', '1');
INSERT INTO `oc_zone` VALUES ('3036', '199', 'Al Buhayrat', 'BRT', '1');
INSERT INTO `oc_zone` VALUES ('3037', '199', 'Al Jazirah', 'JZR', '1');
INSERT INTO `oc_zone` VALUES ('3038', '199', 'Al Khartum', 'KRT', '1');
INSERT INTO `oc_zone` VALUES ('3039', '199', 'Al Qadarif', 'QDR', '1');
INSERT INTO `oc_zone` VALUES ('3040', '199', 'Al Wahdah', 'WDH', '1');
INSERT INTO `oc_zone` VALUES ('3041', '199', 'An Nil al Abyad', 'ANB', '1');
INSERT INTO `oc_zone` VALUES ('3042', '199', 'An Nil al Azraq', 'ANZ', '1');
INSERT INTO `oc_zone` VALUES ('3043', '199', 'Ash Shamaliyah', 'ASH', '1');
INSERT INTO `oc_zone` VALUES ('3044', '199', 'Bahr al Jabal', 'BJA', '1');
INSERT INTO `oc_zone` VALUES ('3045', '199', 'Gharb al Istiwa\'iyah', 'GIS', '1');
INSERT INTO `oc_zone` VALUES ('3046', '199', 'Gharb Bahr al Ghazal', 'GBG', '1');
INSERT INTO `oc_zone` VALUES ('3047', '199', 'Gharb Darfur', 'GDA', '1');
INSERT INTO `oc_zone` VALUES ('3048', '199', 'Gharb Kurdufan', 'GKU', '1');
INSERT INTO `oc_zone` VALUES ('3049', '199', 'Janub Darfur', 'JDA', '1');
INSERT INTO `oc_zone` VALUES ('3050', '199', 'Janub Kurdufan', 'JKU', '1');
INSERT INTO `oc_zone` VALUES ('3051', '199', 'Junqali', 'JQL', '1');
INSERT INTO `oc_zone` VALUES ('3052', '199', 'Kassala', 'KSL', '1');
INSERT INTO `oc_zone` VALUES ('3053', '199', 'Nahr an Nil', 'NNL', '1');
INSERT INTO `oc_zone` VALUES ('3054', '199', 'Shamal Bahr al Ghazal', 'SBG', '1');
INSERT INTO `oc_zone` VALUES ('3055', '199', 'Shamal Darfur', 'SDA', '1');
INSERT INTO `oc_zone` VALUES ('3056', '199', 'Shamal Kurdufan', 'SKU', '1');
INSERT INTO `oc_zone` VALUES ('3057', '199', 'Sharq al Istiwa\'iyah', 'SIS', '1');
INSERT INTO `oc_zone` VALUES ('3058', '199', 'Sinnar', 'SNR', '1');
INSERT INTO `oc_zone` VALUES ('3059', '199', 'Warab', 'WRB', '1');
INSERT INTO `oc_zone` VALUES ('3060', '200', 'Brokopondo', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('3061', '200', 'Commewijne', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('3062', '200', 'Coronie', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('3063', '200', 'Marowijne', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3064', '200', 'Nickerie', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('3065', '200', 'Para', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3066', '200', 'Paramaribo', 'PM', '1');
INSERT INTO `oc_zone` VALUES ('3067', '200', 'Saramacca', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3068', '200', 'Sipaliwini', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3069', '200', 'Wanica', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('3070', '202', 'Hhohho', 'H', '1');
INSERT INTO `oc_zone` VALUES ('3071', '202', 'Lubombo', 'L', '1');
INSERT INTO `oc_zone` VALUES ('3072', '202', 'Manzini', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3073', '202', 'Shishelweni', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3074', '203', 'Blekinge', 'K', '1');
INSERT INTO `oc_zone` VALUES ('3075', '203', 'Dalarna', 'W', '1');
INSERT INTO `oc_zone` VALUES ('3076', '203', 'G&auml;vleborg', 'X', '1');
INSERT INTO `oc_zone` VALUES ('3077', '203', 'Gotland', 'I', '1');
INSERT INTO `oc_zone` VALUES ('3078', '203', 'Halland', 'N', '1');
INSERT INTO `oc_zone` VALUES ('3079', '203', 'J&auml;mtland', 'Z', '1');
INSERT INTO `oc_zone` VALUES ('3080', '203', 'J&ouml;nk&ouml;ping', 'F', '1');
INSERT INTO `oc_zone` VALUES ('3081', '203', 'Kalmar', 'H', '1');
INSERT INTO `oc_zone` VALUES ('3082', '203', 'Kronoberg', 'G', '1');
INSERT INTO `oc_zone` VALUES ('3083', '203', 'Norrbotten', 'BD', '1');
INSERT INTO `oc_zone` VALUES ('3084', '203', '&Ouml;rebro', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3085', '203', '&Ouml;sterg&ouml;tland', 'E', '1');
INSERT INTO `oc_zone` VALUES ('3086', '203', 'Sk&aring;ne', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3087', '203', 'S&ouml;dermanland', 'D', '1');
INSERT INTO `oc_zone` VALUES ('3088', '203', 'Stockholm', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('3089', '203', 'Uppsala', 'C', '1');
INSERT INTO `oc_zone` VALUES ('3090', '203', 'V&auml;rmland', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3091', '203', 'V&auml;sterbotten', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('3092', '203', 'V&auml;sternorrland', 'Y', '1');
INSERT INTO `oc_zone` VALUES ('3093', '203', 'V&auml;stmanland', 'U', '1');
INSERT INTO `oc_zone` VALUES ('3094', '203', 'V&auml;stra G&ouml;taland', 'O', '1');
INSERT INTO `oc_zone` VALUES ('3095', '204', 'Aargau', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3096', '204', 'Appenzell Ausserrhoden', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3097', '204', 'Appenzell Innerrhoden', 'AI', '1');
INSERT INTO `oc_zone` VALUES ('3098', '204', 'Basel-Stadt', 'BS', '1');
INSERT INTO `oc_zone` VALUES ('3099', '204', 'Basel-Landschaft', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('3100', '204', 'Bern', 'BE', '1');
INSERT INTO `oc_zone` VALUES ('3101', '204', 'Fribourg', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('3102', '204', 'Gen&egrave;ve', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('3103', '204', 'Glarus', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('3104', '204', 'Graub&uuml;nden', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('3105', '204', 'Jura', 'JU', '1');
INSERT INTO `oc_zone` VALUES ('3106', '204', 'Luzern', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('3107', '204', 'Neuch&acirc;tel', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('3108', '204', 'Nidwald', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3109', '204', 'Obwald', 'OW', '1');
INSERT INTO `oc_zone` VALUES ('3110', '204', 'St. Gallen', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('3111', '204', 'Schaffhausen', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3112', '204', 'Schwyz', 'SZ', '1');
INSERT INTO `oc_zone` VALUES ('3113', '204', 'Solothurn', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3114', '204', 'Thurgau', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('3115', '204', 'Ticino', 'TI', '1');
INSERT INTO `oc_zone` VALUES ('3116', '204', 'Uri', 'UR', '1');
INSERT INTO `oc_zone` VALUES ('3117', '204', 'Valais', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('3118', '204', 'Vaud', 'VD', '1');
INSERT INTO `oc_zone` VALUES ('3119', '204', 'Zug', 'ZG', '1');
INSERT INTO `oc_zone` VALUES ('3120', '204', 'Z&uuml;rich', 'ZH', '1');
INSERT INTO `oc_zone` VALUES ('3121', '205', 'Al Hasakah', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('3122', '205', 'Al Ladhiqiyah', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3123', '205', 'Al Qunaytirah', 'QU', '1');
INSERT INTO `oc_zone` VALUES ('3124', '205', 'Ar Raqqah', 'RQ', '1');
INSERT INTO `oc_zone` VALUES ('3125', '205', 'As Suwayda', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3126', '205', 'Dara', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('3127', '205', 'Dayr az Zawr', 'DZ', '1');
INSERT INTO `oc_zone` VALUES ('3128', '205', 'Dimashq', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('3129', '205', 'Halab', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('3130', '205', 'Hamah', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('3131', '205', 'Hims', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3132', '205', 'Idlib', 'ID', '1');
INSERT INTO `oc_zone` VALUES ('3133', '205', 'Rif Dimashq', 'RD', '1');
INSERT INTO `oc_zone` VALUES ('3134', '205', 'Tartus', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3135', '206', 'Chang-hua', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('3136', '206', 'Chia-i', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('3137', '206', 'Hsin-chu', 'HS', '1');
INSERT INTO `oc_zone` VALUES ('3138', '206', 'Hua-lien', 'HL', '1');
INSERT INTO `oc_zone` VALUES ('3139', '206', 'I-lan', 'IL', '1');
INSERT INTO `oc_zone` VALUES ('3140', '206', 'Kao-hsiung county', 'KH', '1');
INSERT INTO `oc_zone` VALUES ('3141', '206', 'Kin-men', 'KM', '1');
INSERT INTO `oc_zone` VALUES ('3142', '206', 'Lien-chiang', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('3143', '206', 'Miao-li', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('3144', '206', 'Nan-t\'ou', 'NT', '1');
INSERT INTO `oc_zone` VALUES ('3145', '206', 'P\'eng-hu', 'PH', '1');
INSERT INTO `oc_zone` VALUES ('3146', '206', 'P\'ing-tung', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('3147', '206', 'T\'ai-chung', 'TG', '1');
INSERT INTO `oc_zone` VALUES ('3148', '206', 'T\'ai-nan', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3149', '206', 'T\'ai-pei county', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('3150', '206', 'T\'ai-tung', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('3151', '206', 'T\'ao-yuan', 'TY', '1');
INSERT INTO `oc_zone` VALUES ('3152', '206', 'Yun-lin', 'YL', '1');
INSERT INTO `oc_zone` VALUES ('3153', '206', 'Chia-i city', 'CC', '1');
INSERT INTO `oc_zone` VALUES ('3154', '206', 'Chi-lung', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('3155', '206', 'Hsin-chu', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('3156', '206', 'T\'ai-chung', 'TH', '1');
INSERT INTO `oc_zone` VALUES ('3157', '206', 'T\'ai-nan', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3158', '206', 'Kao-hsiung city', 'KC', '1');
INSERT INTO `oc_zone` VALUES ('3159', '206', 'T\'ai-pei city', 'TC', '1');
INSERT INTO `oc_zone` VALUES ('3160', '207', 'Gorno-Badakhstan', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('3161', '207', 'Khatlon', 'KT', '1');
INSERT INTO `oc_zone` VALUES ('3162', '207', 'Sughd', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3163', '208', 'Arusha', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3164', '208', 'Dar es Salaam', 'DS', '1');
INSERT INTO `oc_zone` VALUES ('3165', '208', 'Dodoma', 'DO', '1');
INSERT INTO `oc_zone` VALUES ('3166', '208', 'Iringa', 'IR', '1');
INSERT INTO `oc_zone` VALUES ('3167', '208', 'Kagera', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('3168', '208', 'Kigoma', 'KI', '1');
INSERT INTO `oc_zone` VALUES ('3169', '208', 'Kilimanjaro', 'KJ', '1');
INSERT INTO `oc_zone` VALUES ('3170', '208', 'Lindi', 'LN', '1');
INSERT INTO `oc_zone` VALUES ('3171', '208', 'Manyara', 'MY', '1');
INSERT INTO `oc_zone` VALUES ('3172', '208', 'Mara', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('3173', '208', 'Mbeya', 'MB', '1');
INSERT INTO `oc_zone` VALUES ('3174', '208', 'Morogoro', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3175', '208', 'Mtwara', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('3176', '208', 'Mwanza', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('3177', '208', 'Pemba North', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('3178', '208', 'Pemba South', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('3179', '208', 'Pwani', 'PW', '1');
INSERT INTO `oc_zone` VALUES ('3180', '208', 'Rukwa', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('3181', '208', 'Ruvuma', 'RV', '1');
INSERT INTO `oc_zone` VALUES ('3182', '208', 'Shinyanga', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3183', '208', 'Singida', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3184', '208', 'Tabora', 'TB', '1');
INSERT INTO `oc_zone` VALUES ('3185', '208', 'Tanga', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3186', '208', 'Zanzibar Central/South', 'ZC', '1');
INSERT INTO `oc_zone` VALUES ('3187', '208', 'Zanzibar North', 'ZN', '1');
INSERT INTO `oc_zone` VALUES ('3188', '208', 'Zanzibar Urban/West', 'ZU', '1');
INSERT INTO `oc_zone` VALUES ('3189', '209', 'Amnat Charoen', 'Amnat Charoen', '1');
INSERT INTO `oc_zone` VALUES ('3190', '209', 'Ang Thong', 'Ang Thong', '1');
INSERT INTO `oc_zone` VALUES ('3191', '209', 'Ayutthaya', 'Ayutthaya', '1');
INSERT INTO `oc_zone` VALUES ('3192', '209', 'Bangkok', 'Bangkok', '1');
INSERT INTO `oc_zone` VALUES ('3193', '209', 'Buriram', 'Buriram', '1');
INSERT INTO `oc_zone` VALUES ('3194', '209', 'Chachoengsao', 'Chachoengsao', '1');
INSERT INTO `oc_zone` VALUES ('3195', '209', 'Chai Nat', 'Chai Nat', '1');
INSERT INTO `oc_zone` VALUES ('3196', '209', 'Chaiyaphum', 'Chaiyaphum', '1');
INSERT INTO `oc_zone` VALUES ('3197', '209', 'Chanthaburi', 'Chanthaburi', '1');
INSERT INTO `oc_zone` VALUES ('3198', '209', 'Chiang Mai', 'Chiang Mai', '1');
INSERT INTO `oc_zone` VALUES ('3199', '209', 'Chiang Rai', 'Chiang Rai', '1');
INSERT INTO `oc_zone` VALUES ('3200', '209', 'Chon Buri', 'Chon Buri', '1');
INSERT INTO `oc_zone` VALUES ('3201', '209', 'Chumphon', 'Chumphon', '1');
INSERT INTO `oc_zone` VALUES ('3202', '209', 'Kalasin', 'Kalasin', '1');
INSERT INTO `oc_zone` VALUES ('3203', '209', 'Kamphaeng Phet', 'Kamphaeng Phet', '1');
INSERT INTO `oc_zone` VALUES ('3204', '209', 'Kanchanaburi', 'Kanchanaburi', '1');
INSERT INTO `oc_zone` VALUES ('3205', '209', 'Khon Kaen', 'Khon Kaen', '1');
INSERT INTO `oc_zone` VALUES ('3206', '209', 'Krabi', 'Krabi', '1');
INSERT INTO `oc_zone` VALUES ('3207', '209', 'Lampang', 'Lampang', '1');
INSERT INTO `oc_zone` VALUES ('3208', '209', 'Lamphun', 'Lamphun', '1');
INSERT INTO `oc_zone` VALUES ('3209', '209', 'Loei', 'Loei', '1');
INSERT INTO `oc_zone` VALUES ('3210', '209', 'Lop Buri', 'Lop Buri', '1');
INSERT INTO `oc_zone` VALUES ('3211', '209', 'Mae Hong Son', 'Mae Hong Son', '1');
INSERT INTO `oc_zone` VALUES ('3212', '209', 'Maha Sarakham', 'Maha Sarakham', '1');
INSERT INTO `oc_zone` VALUES ('3213', '209', 'Mukdahan', 'Mukdahan', '1');
INSERT INTO `oc_zone` VALUES ('3214', '209', 'Nakhon Nayok', 'Nakhon Nayok', '1');
INSERT INTO `oc_zone` VALUES ('3215', '209', 'Nakhon Pathom', 'Nakhon Pathom', '1');
INSERT INTO `oc_zone` VALUES ('3216', '209', 'Nakhon Phanom', 'Nakhon Phanom', '1');
INSERT INTO `oc_zone` VALUES ('3217', '209', 'Nakhon Ratchasima', 'Nakhon Ratchasima', '1');
INSERT INTO `oc_zone` VALUES ('3218', '209', 'Nakhon Sawan', 'Nakhon Sawan', '1');
INSERT INTO `oc_zone` VALUES ('3219', '209', 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', '1');
INSERT INTO `oc_zone` VALUES ('3220', '209', 'Nan', 'Nan', '1');
INSERT INTO `oc_zone` VALUES ('3221', '209', 'Narathiwat', 'Narathiwat', '1');
INSERT INTO `oc_zone` VALUES ('3222', '209', 'Nong Bua Lamphu', 'Nong Bua Lamphu', '1');
INSERT INTO `oc_zone` VALUES ('3223', '209', 'Nong Khai', 'Nong Khai', '1');
INSERT INTO `oc_zone` VALUES ('3224', '209', 'Nonthaburi', 'Nonthaburi', '1');
INSERT INTO `oc_zone` VALUES ('3225', '209', 'Pathum Thani', 'Pathum Thani', '1');
INSERT INTO `oc_zone` VALUES ('3226', '209', 'Pattani', 'Pattani', '1');
INSERT INTO `oc_zone` VALUES ('3227', '209', 'Phangnga', 'Phangnga', '1');
INSERT INTO `oc_zone` VALUES ('3228', '209', 'Phatthalung', 'Phatthalung', '1');
INSERT INTO `oc_zone` VALUES ('3229', '209', 'Phayao', 'Phayao', '1');
INSERT INTO `oc_zone` VALUES ('3230', '209', 'Phetchabun', 'Phetchabun', '1');
INSERT INTO `oc_zone` VALUES ('3231', '209', 'Phetchaburi', 'Phetchaburi', '1');
INSERT INTO `oc_zone` VALUES ('3232', '209', 'Phichit', 'Phichit', '1');
INSERT INTO `oc_zone` VALUES ('3233', '209', 'Phitsanulok', 'Phitsanulok', '1');
INSERT INTO `oc_zone` VALUES ('3234', '209', 'Phrae', 'Phrae', '1');
INSERT INTO `oc_zone` VALUES ('3235', '209', 'Phuket', 'Phuket', '1');
INSERT INTO `oc_zone` VALUES ('3236', '209', 'Prachin Buri', 'Prachin Buri', '1');
INSERT INTO `oc_zone` VALUES ('3237', '209', 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', '1');
INSERT INTO `oc_zone` VALUES ('3238', '209', 'Ranong', 'Ranong', '1');
INSERT INTO `oc_zone` VALUES ('3239', '209', 'Ratchaburi', 'Ratchaburi', '1');
INSERT INTO `oc_zone` VALUES ('3240', '209', 'Rayong', 'Rayong', '1');
INSERT INTO `oc_zone` VALUES ('3241', '209', 'Roi Et', 'Roi Et', '1');
INSERT INTO `oc_zone` VALUES ('3242', '209', 'Sa Kaeo', 'Sa Kaeo', '1');
INSERT INTO `oc_zone` VALUES ('3243', '209', 'Sakon Nakhon', 'Sakon Nakhon', '1');
INSERT INTO `oc_zone` VALUES ('3244', '209', 'Samut Prakan', 'Samut Prakan', '1');
INSERT INTO `oc_zone` VALUES ('3245', '209', 'Samut Sakhon', 'Samut Sakhon', '1');
INSERT INTO `oc_zone` VALUES ('3246', '209', 'Samut Songkhram', 'Samut Songkhram', '1');
INSERT INTO `oc_zone` VALUES ('3247', '209', 'Sara Buri', 'Sara Buri', '1');
INSERT INTO `oc_zone` VALUES ('3248', '209', 'Satun', 'Satun', '1');
INSERT INTO `oc_zone` VALUES ('3249', '209', 'Sing Buri', 'Sing Buri', '1');
INSERT INTO `oc_zone` VALUES ('3250', '209', 'Sisaket', 'Sisaket', '1');
INSERT INTO `oc_zone` VALUES ('3251', '209', 'Songkhla', 'Songkhla', '1');
INSERT INTO `oc_zone` VALUES ('3252', '209', 'Sukhothai', 'Sukhothai', '1');
INSERT INTO `oc_zone` VALUES ('3253', '209', 'Suphan Buri', 'Suphan Buri', '1');
INSERT INTO `oc_zone` VALUES ('3254', '209', 'Surat Thani', 'Surat Thani', '1');
INSERT INTO `oc_zone` VALUES ('3255', '209', 'Surin', 'Surin', '1');
INSERT INTO `oc_zone` VALUES ('3256', '209', 'Tak', 'Tak', '1');
INSERT INTO `oc_zone` VALUES ('3257', '209', 'Trang', 'Trang', '1');
INSERT INTO `oc_zone` VALUES ('3258', '209', 'Trat', 'Trat', '1');
INSERT INTO `oc_zone` VALUES ('3259', '209', 'Ubon Ratchathani', 'Ubon Ratchathani', '1');
INSERT INTO `oc_zone` VALUES ('3260', '209', 'Udon Thani', 'Udon Thani', '1');
INSERT INTO `oc_zone` VALUES ('3261', '209', 'Uthai Thani', 'Uthai Thani', '1');
INSERT INTO `oc_zone` VALUES ('3262', '209', 'Uttaradit', 'Uttaradit', '1');
INSERT INTO `oc_zone` VALUES ('3263', '209', 'Yala', 'Yala', '1');
INSERT INTO `oc_zone` VALUES ('3264', '209', 'Yasothon', 'Yasothon', '1');
INSERT INTO `oc_zone` VALUES ('3265', '210', 'Kara', 'K', '1');
INSERT INTO `oc_zone` VALUES ('3266', '210', 'Plateaux', 'P', '1');
INSERT INTO `oc_zone` VALUES ('3267', '210', 'Savanes', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3268', '210', 'Centrale', 'C', '1');
INSERT INTO `oc_zone` VALUES ('3269', '210', 'Maritime', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3270', '211', 'Atafu', 'A', '1');
INSERT INTO `oc_zone` VALUES ('3271', '211', 'Fakaofo', 'F', '1');
INSERT INTO `oc_zone` VALUES ('3272', '211', 'Nukunonu', 'N', '1');
INSERT INTO `oc_zone` VALUES ('3273', '212', 'Ha\'apai', 'H', '1');
INSERT INTO `oc_zone` VALUES ('3274', '212', 'Tongatapu', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3275', '212', 'Vava\'u', 'V', '1');
INSERT INTO `oc_zone` VALUES ('3276', '213', 'Couva/Tabaquite/Talparo', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3277', '213', 'Diego Martin', 'DM', '1');
INSERT INTO `oc_zone` VALUES ('3278', '213', 'Mayaro/Rio Claro', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('3279', '213', 'Penal/Debe', 'PD', '1');
INSERT INTO `oc_zone` VALUES ('3280', '213', 'Princes Town', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('3281', '213', 'Sangre Grande', 'SG', '1');
INSERT INTO `oc_zone` VALUES ('3282', '213', 'San Juan/Laventille', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3283', '213', 'Siparia', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3284', '213', 'Tunapuna/Piarco', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('3285', '213', 'Port of Spain', 'PS', '1');
INSERT INTO `oc_zone` VALUES ('3286', '213', 'San Fernando', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('3287', '213', 'Arima', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3288', '213', 'Point Fortin', 'PF', '1');
INSERT INTO `oc_zone` VALUES ('3289', '213', 'Chaguanas', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('3290', '213', 'Tobago', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3291', '214', 'Ariana', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3292', '214', 'Beja', 'BJ', '1');
INSERT INTO `oc_zone` VALUES ('3293', '214', 'Ben Arous', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3294', '214', 'Bizerte', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('3295', '214', 'Gabes', 'GB', '1');
INSERT INTO `oc_zone` VALUES ('3296', '214', 'Gafsa', 'GF', '1');
INSERT INTO `oc_zone` VALUES ('3297', '214', 'Jendouba', 'JE', '1');
INSERT INTO `oc_zone` VALUES ('3298', '214', 'Kairouan', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('3299', '214', 'Kasserine', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('3300', '214', 'Kebili', 'KB', '1');
INSERT INTO `oc_zone` VALUES ('3301', '214', 'Kef', 'KF', '1');
INSERT INTO `oc_zone` VALUES ('3302', '214', 'Mahdia', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('3303', '214', 'Manouba', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3304', '214', 'Medenine', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3305', '214', 'Monastir', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3306', '214', 'Nabeul', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('3307', '214', 'Sfax', 'SF', '1');
INSERT INTO `oc_zone` VALUES ('3308', '214', 'Sidi', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('3309', '214', 'Siliana', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3310', '214', 'Sousse', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3311', '214', 'Tataouine', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3312', '214', 'Tozeur', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3313', '214', 'Tunis', 'TU', '1');
INSERT INTO `oc_zone` VALUES ('3314', '214', 'Zaghouan', 'ZA', '1');
INSERT INTO `oc_zone` VALUES ('3315', '215', 'Adana', 'ADA', '1');
INSERT INTO `oc_zone` VALUES ('3316', '215', 'Adıyaman', 'ADI', '1');
INSERT INTO `oc_zone` VALUES ('3317', '215', 'Afyonkarahisar', 'AFY', '1');
INSERT INTO `oc_zone` VALUES ('3318', '215', 'Ağrı', 'AGR', '1');
INSERT INTO `oc_zone` VALUES ('3319', '215', 'Aksaray', 'AKS', '1');
INSERT INTO `oc_zone` VALUES ('3320', '215', 'Amasya', 'AMA', '1');
INSERT INTO `oc_zone` VALUES ('3321', '215', 'Ankara', 'ANK', '1');
INSERT INTO `oc_zone` VALUES ('3322', '215', 'Antalya', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('3323', '215', 'Ardahan', 'ARD', '1');
INSERT INTO `oc_zone` VALUES ('3324', '215', 'Artvin', 'ART', '1');
INSERT INTO `oc_zone` VALUES ('3325', '215', 'Aydın', 'AYI', '1');
INSERT INTO `oc_zone` VALUES ('3326', '215', 'Balıkesir', 'BAL', '1');
INSERT INTO `oc_zone` VALUES ('3327', '215', 'Bartın', 'BAR', '1');
INSERT INTO `oc_zone` VALUES ('3328', '215', 'Batman', 'BAT', '1');
INSERT INTO `oc_zone` VALUES ('3329', '215', 'Bayburt', 'BAY', '1');
INSERT INTO `oc_zone` VALUES ('3330', '215', 'Bilecik', 'BIL', '1');
INSERT INTO `oc_zone` VALUES ('3331', '215', 'Bingöl', 'BIN', '1');
INSERT INTO `oc_zone` VALUES ('3332', '215', 'Bitlis', 'BIT', '1');
INSERT INTO `oc_zone` VALUES ('3333', '215', 'Bolu', 'BOL', '1');
INSERT INTO `oc_zone` VALUES ('3334', '215', 'Burdur', 'BRD', '1');
INSERT INTO `oc_zone` VALUES ('3335', '215', 'Bursa', 'BRS', '1');
INSERT INTO `oc_zone` VALUES ('3336', '215', 'Çanakkale', 'CKL', '1');
INSERT INTO `oc_zone` VALUES ('3337', '215', 'Çankırı', 'CKR', '1');
INSERT INTO `oc_zone` VALUES ('3338', '215', 'Çorum', 'COR', '1');
INSERT INTO `oc_zone` VALUES ('3339', '215', 'Denizli', 'DEN', '1');
INSERT INTO `oc_zone` VALUES ('3340', '215', 'Diyarbakır', 'DIY', '1');
INSERT INTO `oc_zone` VALUES ('3341', '215', 'Düzce', 'DUZ', '1');
INSERT INTO `oc_zone` VALUES ('3342', '215', 'Edirne', 'EDI', '1');
INSERT INTO `oc_zone` VALUES ('3343', '215', 'Elazığ', 'ELA', '1');
INSERT INTO `oc_zone` VALUES ('3344', '215', 'Erzincan', 'EZC', '1');
INSERT INTO `oc_zone` VALUES ('3345', '215', 'Erzurum', 'EZR', '1');
INSERT INTO `oc_zone` VALUES ('3346', '215', 'Eskişehir', 'ESK', '1');
INSERT INTO `oc_zone` VALUES ('3347', '215', 'Gaziantep', 'GAZ', '1');
INSERT INTO `oc_zone` VALUES ('3348', '215', 'Giresun', 'GIR', '1');
INSERT INTO `oc_zone` VALUES ('3349', '215', 'Gümüşhane', 'GMS', '1');
INSERT INTO `oc_zone` VALUES ('3350', '215', 'Hakkari', 'HKR', '1');
INSERT INTO `oc_zone` VALUES ('3351', '215', 'Hatay', 'HTY', '1');
INSERT INTO `oc_zone` VALUES ('3352', '215', 'Iğdır', 'IGD', '1');
INSERT INTO `oc_zone` VALUES ('3353', '215', 'Isparta', 'ISP', '1');
INSERT INTO `oc_zone` VALUES ('3354', '215', 'İstanbul', 'IST', '1');
INSERT INTO `oc_zone` VALUES ('3355', '215', 'İzmir', 'IZM', '1');
INSERT INTO `oc_zone` VALUES ('3356', '215', 'Kahramanmaraş', 'KAH', '1');
INSERT INTO `oc_zone` VALUES ('3357', '215', 'Karabük', 'KRB', '1');
INSERT INTO `oc_zone` VALUES ('3358', '215', 'Karaman', 'KRM', '1');
INSERT INTO `oc_zone` VALUES ('3359', '215', 'Kars', 'KRS', '1');
INSERT INTO `oc_zone` VALUES ('3360', '215', 'Kastamonu', 'KAS', '1');
INSERT INTO `oc_zone` VALUES ('3361', '215', 'Kayseri', 'KAY', '1');
INSERT INTO `oc_zone` VALUES ('3362', '215', 'Kilis', 'KLS', '1');
INSERT INTO `oc_zone` VALUES ('3363', '215', 'Kırıkkale', 'KRK', '1');
INSERT INTO `oc_zone` VALUES ('3364', '215', 'Kırklareli', 'KLR', '1');
INSERT INTO `oc_zone` VALUES ('3365', '215', 'Kırşehir', 'KRH', '1');
INSERT INTO `oc_zone` VALUES ('3366', '215', 'Kocaeli', 'KOC', '1');
INSERT INTO `oc_zone` VALUES ('3367', '215', 'Konya', 'KON', '1');
INSERT INTO `oc_zone` VALUES ('3368', '215', 'Kütahya', 'KUT', '1');
INSERT INTO `oc_zone` VALUES ('3369', '215', 'Malatya', 'MAL', '1');
INSERT INTO `oc_zone` VALUES ('3370', '215', 'Manisa', 'MAN', '1');
INSERT INTO `oc_zone` VALUES ('3371', '215', 'Mardin', 'MAR', '1');
INSERT INTO `oc_zone` VALUES ('3372', '215', 'Mersin', 'MER', '1');
INSERT INTO `oc_zone` VALUES ('3373', '215', 'Muğla', 'MUG', '1');
INSERT INTO `oc_zone` VALUES ('3374', '215', 'Muş', 'MUS', '1');
INSERT INTO `oc_zone` VALUES ('3375', '215', 'Nevşehir', 'NEV', '1');
INSERT INTO `oc_zone` VALUES ('3376', '215', 'Niğde', 'NIG', '1');
INSERT INTO `oc_zone` VALUES ('3377', '215', 'Ordu', 'ORD', '1');
INSERT INTO `oc_zone` VALUES ('3378', '215', 'Osmaniye', 'OSM', '1');
INSERT INTO `oc_zone` VALUES ('3379', '215', 'Rize', 'RIZ', '1');
INSERT INTO `oc_zone` VALUES ('3380', '215', 'Sakarya', 'SAK', '1');
INSERT INTO `oc_zone` VALUES ('3381', '215', 'Samsun', 'SAM', '1');
INSERT INTO `oc_zone` VALUES ('3382', '215', 'Şanlıurfa', 'SAN', '1');
INSERT INTO `oc_zone` VALUES ('3383', '215', 'Siirt', 'SII', '1');
INSERT INTO `oc_zone` VALUES ('3384', '215', 'Sinop', 'SIN', '1');
INSERT INTO `oc_zone` VALUES ('3385', '215', 'Şırnak', 'SIR', '1');
INSERT INTO `oc_zone` VALUES ('3386', '215', 'Sivas', 'SIV', '1');
INSERT INTO `oc_zone` VALUES ('3387', '215', 'Tekirdağ', 'TEL', '1');
INSERT INTO `oc_zone` VALUES ('3388', '215', 'Tokat', 'TOK', '1');
INSERT INTO `oc_zone` VALUES ('3389', '215', 'Trabzon', 'TRA', '1');
INSERT INTO `oc_zone` VALUES ('3390', '215', 'Tunceli', 'TUN', '1');
INSERT INTO `oc_zone` VALUES ('3391', '215', 'Uşak', 'USK', '1');
INSERT INTO `oc_zone` VALUES ('3392', '215', 'Van', 'VAN', '1');
INSERT INTO `oc_zone` VALUES ('3393', '215', 'Yalova', 'YAL', '1');
INSERT INTO `oc_zone` VALUES ('3394', '215', 'Yozgat', 'YOZ', '1');
INSERT INTO `oc_zone` VALUES ('3395', '215', 'Zonguldak', 'ZON', '1');
INSERT INTO `oc_zone` VALUES ('3396', '216', 'Ahal Welayaty', 'A', '1');
INSERT INTO `oc_zone` VALUES ('3397', '216', 'Balkan Welayaty', 'B', '1');
INSERT INTO `oc_zone` VALUES ('3398', '216', 'Dashhowuz Welayaty', 'D', '1');
INSERT INTO `oc_zone` VALUES ('3399', '216', 'Lebap Welayaty', 'L', '1');
INSERT INTO `oc_zone` VALUES ('3400', '216', 'Mary Welayaty', 'M', '1');
INSERT INTO `oc_zone` VALUES ('3401', '217', 'Ambergris Cays', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('3402', '217', 'Dellis Cay', 'DC', '1');
INSERT INTO `oc_zone` VALUES ('3403', '217', 'French Cay', 'FC', '1');
INSERT INTO `oc_zone` VALUES ('3404', '217', 'Little Water Cay', 'LW', '1');
INSERT INTO `oc_zone` VALUES ('3405', '217', 'Parrot Cay', 'RC', '1');
INSERT INTO `oc_zone` VALUES ('3406', '217', 'Pine Cay', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('3407', '217', 'Salt Cay', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3408', '217', 'Grand Turk', 'GT', '1');
INSERT INTO `oc_zone` VALUES ('3409', '217', 'South Caicos', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('3410', '217', 'East Caicos', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('3411', '217', 'Middle Caicos', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('3412', '217', 'North Caicos', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('3413', '217', 'Providenciales', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('3414', '217', 'West Caicos', 'WC', '1');
INSERT INTO `oc_zone` VALUES ('3415', '218', 'Nanumanga', 'NMG', '1');
INSERT INTO `oc_zone` VALUES ('3416', '218', 'Niulakita', 'NLK', '1');
INSERT INTO `oc_zone` VALUES ('3417', '218', 'Niutao', 'NTO', '1');
INSERT INTO `oc_zone` VALUES ('3418', '218', 'Funafuti', 'FUN', '1');
INSERT INTO `oc_zone` VALUES ('3419', '218', 'Nanumea', 'NME', '1');
INSERT INTO `oc_zone` VALUES ('3420', '218', 'Nui', 'NUI', '1');
INSERT INTO `oc_zone` VALUES ('3421', '218', 'Nukufetau', 'NFT', '1');
INSERT INTO `oc_zone` VALUES ('3422', '218', 'Nukulaelae', 'NLL', '1');
INSERT INTO `oc_zone` VALUES ('3423', '218', 'Vaitupu', 'VAI', '1');
INSERT INTO `oc_zone` VALUES ('3424', '219', 'Kalangala', 'KAL', '1');
INSERT INTO `oc_zone` VALUES ('3425', '219', 'Kampala', 'KMP', '1');
INSERT INTO `oc_zone` VALUES ('3426', '219', 'Kayunga', 'KAY', '1');
INSERT INTO `oc_zone` VALUES ('3427', '219', 'Kiboga', 'KIB', '1');
INSERT INTO `oc_zone` VALUES ('3428', '219', 'Luwero', 'LUW', '1');
INSERT INTO `oc_zone` VALUES ('3429', '219', 'Masaka', 'MAS', '1');
INSERT INTO `oc_zone` VALUES ('3430', '219', 'Mpigi', 'MPI', '1');
INSERT INTO `oc_zone` VALUES ('3431', '219', 'Mubende', 'MUB', '1');
INSERT INTO `oc_zone` VALUES ('3432', '219', 'Mukono', 'MUK', '1');
INSERT INTO `oc_zone` VALUES ('3433', '219', 'Nakasongola', 'NKS', '1');
INSERT INTO `oc_zone` VALUES ('3434', '219', 'Rakai', 'RAK', '1');
INSERT INTO `oc_zone` VALUES ('3435', '219', 'Sembabule', 'SEM', '1');
INSERT INTO `oc_zone` VALUES ('3436', '219', 'Wakiso', 'WAK', '1');
INSERT INTO `oc_zone` VALUES ('3437', '219', 'Bugiri', 'BUG', '1');
INSERT INTO `oc_zone` VALUES ('3438', '219', 'Busia', 'BUS', '1');
INSERT INTO `oc_zone` VALUES ('3439', '219', 'Iganga', 'IGA', '1');
INSERT INTO `oc_zone` VALUES ('3440', '219', 'Jinja', 'JIN', '1');
INSERT INTO `oc_zone` VALUES ('3441', '219', 'Kaberamaido', 'KAB', '1');
INSERT INTO `oc_zone` VALUES ('3442', '219', 'Kamuli', 'KML', '1');
INSERT INTO `oc_zone` VALUES ('3443', '219', 'Kapchorwa', 'KPC', '1');
INSERT INTO `oc_zone` VALUES ('3444', '219', 'Katakwi', 'KTK', '1');
INSERT INTO `oc_zone` VALUES ('3445', '219', 'Kumi', 'KUM', '1');
INSERT INTO `oc_zone` VALUES ('3446', '219', 'Mayuge', 'MAY', '1');
INSERT INTO `oc_zone` VALUES ('3447', '219', 'Mbale', 'MBA', '1');
INSERT INTO `oc_zone` VALUES ('3448', '219', 'Pallisa', 'PAL', '1');
INSERT INTO `oc_zone` VALUES ('3449', '219', 'Sironko', 'SIR', '1');
INSERT INTO `oc_zone` VALUES ('3450', '219', 'Soroti', 'SOR', '1');
INSERT INTO `oc_zone` VALUES ('3451', '219', 'Tororo', 'TOR', '1');
INSERT INTO `oc_zone` VALUES ('3452', '219', 'Adjumani', 'ADJ', '1');
INSERT INTO `oc_zone` VALUES ('3453', '219', 'Apac', 'APC', '1');
INSERT INTO `oc_zone` VALUES ('3454', '219', 'Arua', 'ARU', '1');
INSERT INTO `oc_zone` VALUES ('3455', '219', 'Gulu', 'GUL', '1');
INSERT INTO `oc_zone` VALUES ('3456', '219', 'Kitgum', 'KIT', '1');
INSERT INTO `oc_zone` VALUES ('3457', '219', 'Kotido', 'KOT', '1');
INSERT INTO `oc_zone` VALUES ('3458', '219', 'Lira', 'LIR', '1');
INSERT INTO `oc_zone` VALUES ('3459', '219', 'Moroto', 'MRT', '1');
INSERT INTO `oc_zone` VALUES ('3460', '219', 'Moyo', 'MOY', '1');
INSERT INTO `oc_zone` VALUES ('3461', '219', 'Nakapiripirit', 'NAK', '1');
INSERT INTO `oc_zone` VALUES ('3462', '219', 'Nebbi', 'NEB', '1');
INSERT INTO `oc_zone` VALUES ('3463', '219', 'Pader', 'PAD', '1');
INSERT INTO `oc_zone` VALUES ('3464', '219', 'Yumbe', 'YUM', '1');
INSERT INTO `oc_zone` VALUES ('3465', '219', 'Bundibugyo', 'BUN', '1');
INSERT INTO `oc_zone` VALUES ('3466', '219', 'Bushenyi', 'BSH', '1');
INSERT INTO `oc_zone` VALUES ('3467', '219', 'Hoima', 'HOI', '1');
INSERT INTO `oc_zone` VALUES ('3468', '219', 'Kabale', 'KBL', '1');
INSERT INTO `oc_zone` VALUES ('3469', '219', 'Kabarole', 'KAR', '1');
INSERT INTO `oc_zone` VALUES ('3470', '219', 'Kamwenge', 'KAM', '1');
INSERT INTO `oc_zone` VALUES ('3471', '219', 'Kanungu', 'KAN', '1');
INSERT INTO `oc_zone` VALUES ('3472', '219', 'Kasese', 'KAS', '1');
INSERT INTO `oc_zone` VALUES ('3473', '219', 'Kibaale', 'KBA', '1');
INSERT INTO `oc_zone` VALUES ('3474', '219', 'Kisoro', 'KIS', '1');
INSERT INTO `oc_zone` VALUES ('3475', '219', 'Kyenjojo', 'KYE', '1');
INSERT INTO `oc_zone` VALUES ('3476', '219', 'Masindi', 'MSN', '1');
INSERT INTO `oc_zone` VALUES ('3477', '219', 'Mbarara', 'MBR', '1');
INSERT INTO `oc_zone` VALUES ('3478', '219', 'Ntungamo', 'NTU', '1');
INSERT INTO `oc_zone` VALUES ('3479', '219', 'Rukungiri', 'RUK', '1');
INSERT INTO `oc_zone` VALUES ('3480', '220', 'Cherkas\'ka Oblast\'', '71', '1');
INSERT INTO `oc_zone` VALUES ('3481', '220', 'Chernihivs\'ka Oblast\'', '74', '1');
INSERT INTO `oc_zone` VALUES ('3482', '220', 'Chernivets\'ka Oblast\'', '77', '1');
INSERT INTO `oc_zone` VALUES ('3483', '220', 'Crimea', '43', '1');
INSERT INTO `oc_zone` VALUES ('3484', '220', 'Dnipropetrovs\'ka Oblast\'', '12', '1');
INSERT INTO `oc_zone` VALUES ('3485', '220', 'Donets\'ka Oblast\'', '14', '1');
INSERT INTO `oc_zone` VALUES ('3486', '220', 'Ivano-Frankivs\'ka Oblast\'', '26', '1');
INSERT INTO `oc_zone` VALUES ('3487', '220', 'Khersons\'ka Oblast\'', '65', '1');
INSERT INTO `oc_zone` VALUES ('3488', '220', 'Khmel\'nyts\'ka Oblast\'', '68', '1');
INSERT INTO `oc_zone` VALUES ('3489', '220', 'Kirovohrads\'ka Oblast\'', '35', '1');
INSERT INTO `oc_zone` VALUES ('3490', '220', 'Kyiv', '30', '1');
INSERT INTO `oc_zone` VALUES ('3491', '220', 'Kyivs\'ka Oblast\'', '32', '1');
INSERT INTO `oc_zone` VALUES ('3492', '220', 'Luhans\'ka Oblast\'', '09', '1');
INSERT INTO `oc_zone` VALUES ('3493', '220', 'L\'vivs\'ka Oblast\'', '46', '1');
INSERT INTO `oc_zone` VALUES ('3494', '220', 'Mykolayivs\'ka Oblast\'', '48', '1');
INSERT INTO `oc_zone` VALUES ('3495', '220', 'Odes\'ka Oblast\'', '51', '1');
INSERT INTO `oc_zone` VALUES ('3496', '220', 'Poltavs\'ka Oblast\'', '53', '1');
INSERT INTO `oc_zone` VALUES ('3497', '220', 'Rivnens\'ka Oblast\'', '56', '1');
INSERT INTO `oc_zone` VALUES ('3498', '220', 'Sevastopol\'', '40', '1');
INSERT INTO `oc_zone` VALUES ('3499', '220', 'Sums\'ka Oblast\'', '59', '1');
INSERT INTO `oc_zone` VALUES ('3500', '220', 'Ternopil\'s\'ka Oblast\'', '61', '1');
INSERT INTO `oc_zone` VALUES ('3501', '220', 'Vinnyts\'ka Oblast\'', '05', '1');
INSERT INTO `oc_zone` VALUES ('3502', '220', 'Volyns\'ka Oblast\'', '07', '1');
INSERT INTO `oc_zone` VALUES ('3503', '220', 'Zakarpats\'ka Oblast\'', '21', '1');
INSERT INTO `oc_zone` VALUES ('3504', '220', 'Zaporiz\'ka Oblast\'', '23', '1');
INSERT INTO `oc_zone` VALUES ('3505', '220', 'Zhytomyrs\'ka oblast\'', '18', '1');
INSERT INTO `oc_zone` VALUES ('3506', '221', 'Abu Dhabi', 'ADH', '1');
INSERT INTO `oc_zone` VALUES ('3507', '221', '\'Ajman', 'AJ', '1');
INSERT INTO `oc_zone` VALUES ('3508', '221', 'Al Fujayrah', 'FU', '1');
INSERT INTO `oc_zone` VALUES ('3509', '221', 'Ash Shariqah', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3510', '221', 'Dubai', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('3511', '221', 'R\'as al Khaymah', 'RK', '1');
INSERT INTO `oc_zone` VALUES ('3512', '221', 'Umm al Qaywayn', 'UQ', '1');
INSERT INTO `oc_zone` VALUES ('3513', '222', 'Aberdeen', 'ABN', '1');
INSERT INTO `oc_zone` VALUES ('3514', '222', 'Aberdeenshire', 'ABNS', '1');
INSERT INTO `oc_zone` VALUES ('3515', '222', 'Anglesey', 'ANG', '1');
INSERT INTO `oc_zone` VALUES ('3516', '222', 'Angus', 'AGS', '1');
INSERT INTO `oc_zone` VALUES ('3517', '222', 'Argyll and Bute', 'ARY', '1');
INSERT INTO `oc_zone` VALUES ('3518', '222', 'Bedfordshire', 'BEDS', '1');
INSERT INTO `oc_zone` VALUES ('3519', '222', 'Berkshire', 'BERKS', '1');
INSERT INTO `oc_zone` VALUES ('3520', '222', 'Blaenau Gwent', 'BLA', '1');
INSERT INTO `oc_zone` VALUES ('3521', '222', 'Bridgend', 'BRI', '1');
INSERT INTO `oc_zone` VALUES ('3522', '222', 'Bristol', 'BSTL', '1');
INSERT INTO `oc_zone` VALUES ('3523', '222', 'Buckinghamshire', 'BUCKS', '1');
INSERT INTO `oc_zone` VALUES ('3524', '222', 'Caerphilly', 'CAE', '1');
INSERT INTO `oc_zone` VALUES ('3525', '222', 'Cambridgeshire', 'CAMBS', '1');
INSERT INTO `oc_zone` VALUES ('3526', '222', 'Cardiff', 'CDF', '1');
INSERT INTO `oc_zone` VALUES ('3527', '222', 'Carmarthenshire', 'CARM', '1');
INSERT INTO `oc_zone` VALUES ('3528', '222', 'Ceredigion', 'CDGN', '1');
INSERT INTO `oc_zone` VALUES ('3529', '222', 'Cheshire', 'CHES', '1');
INSERT INTO `oc_zone` VALUES ('3530', '222', 'Clackmannanshire', 'CLACK', '1');
INSERT INTO `oc_zone` VALUES ('3531', '222', 'Conwy', 'CON', '1');
INSERT INTO `oc_zone` VALUES ('3532', '222', 'Cornwall', 'CORN', '1');
INSERT INTO `oc_zone` VALUES ('3533', '222', 'Denbighshire', 'DNBG', '1');
INSERT INTO `oc_zone` VALUES ('3534', '222', 'Derbyshire', 'DERBY', '1');
INSERT INTO `oc_zone` VALUES ('3535', '222', 'Devon', 'DVN', '1');
INSERT INTO `oc_zone` VALUES ('3536', '222', 'Dorset', 'DOR', '1');
INSERT INTO `oc_zone` VALUES ('3537', '222', 'Dumfries and Galloway', 'DGL', '1');
INSERT INTO `oc_zone` VALUES ('3538', '222', 'Dundee', 'DUND', '1');
INSERT INTO `oc_zone` VALUES ('3539', '222', 'Durham', 'DHM', '1');
INSERT INTO `oc_zone` VALUES ('3540', '222', 'East Ayrshire', 'ARYE', '1');
INSERT INTO `oc_zone` VALUES ('3541', '222', 'East Dunbartonshire', 'DUNBE', '1');
INSERT INTO `oc_zone` VALUES ('3542', '222', 'East Lothian', 'LOTE', '1');
INSERT INTO `oc_zone` VALUES ('3543', '222', 'East Renfrewshire', 'RENE', '1');
INSERT INTO `oc_zone` VALUES ('3544', '222', 'East Riding of Yorkshire', 'ERYS', '1');
INSERT INTO `oc_zone` VALUES ('3545', '222', 'East Sussex', 'SXE', '1');
INSERT INTO `oc_zone` VALUES ('3546', '222', 'Edinburgh', 'EDIN', '1');
INSERT INTO `oc_zone` VALUES ('3547', '222', 'Essex', 'ESX', '1');
INSERT INTO `oc_zone` VALUES ('3548', '222', 'Falkirk', 'FALK', '1');
INSERT INTO `oc_zone` VALUES ('3549', '222', 'Fife', 'FFE', '1');
INSERT INTO `oc_zone` VALUES ('3550', '222', 'Flintshire', 'FLINT', '1');
INSERT INTO `oc_zone` VALUES ('3551', '222', 'Glasgow', 'GLAS', '1');
INSERT INTO `oc_zone` VALUES ('3552', '222', 'Gloucestershire', 'GLOS', '1');
INSERT INTO `oc_zone` VALUES ('3553', '222', 'Greater London', 'LDN', '1');
INSERT INTO `oc_zone` VALUES ('3554', '222', 'Greater Manchester', 'MCH', '1');
INSERT INTO `oc_zone` VALUES ('3555', '222', 'Gwynedd', 'GDD', '1');
INSERT INTO `oc_zone` VALUES ('3556', '222', 'Hampshire', 'HANTS', '1');
INSERT INTO `oc_zone` VALUES ('3557', '222', 'Herefordshire', 'HWR', '1');
INSERT INTO `oc_zone` VALUES ('3558', '222', 'Hertfordshire', 'HERTS', '1');
INSERT INTO `oc_zone` VALUES ('3559', '222', 'Highlands', 'HLD', '1');
INSERT INTO `oc_zone` VALUES ('3560', '222', 'Inverclyde', 'IVER', '1');
INSERT INTO `oc_zone` VALUES ('3561', '222', 'Isle of Wight', 'IOW', '1');
INSERT INTO `oc_zone` VALUES ('3562', '222', 'Kent', 'KNT', '1');
INSERT INTO `oc_zone` VALUES ('3563', '222', 'Lancashire', 'LANCS', '1');
INSERT INTO `oc_zone` VALUES ('3564', '222', 'Leicestershire', 'LEICS', '1');
INSERT INTO `oc_zone` VALUES ('3565', '222', 'Lincolnshire', 'LINCS', '1');
INSERT INTO `oc_zone` VALUES ('3566', '222', 'Merseyside', 'MSY', '1');
INSERT INTO `oc_zone` VALUES ('3567', '222', 'Merthyr Tydfil', 'MERT', '1');
INSERT INTO `oc_zone` VALUES ('3568', '222', 'Midlothian', 'MLOT', '1');
INSERT INTO `oc_zone` VALUES ('3569', '222', 'Monmouthshire', 'MMOUTH', '1');
INSERT INTO `oc_zone` VALUES ('3570', '222', 'Moray', 'MORAY', '1');
INSERT INTO `oc_zone` VALUES ('3571', '222', 'Neath Port Talbot', 'NPRTAL', '1');
INSERT INTO `oc_zone` VALUES ('3572', '222', 'Newport', 'NEWPT', '1');
INSERT INTO `oc_zone` VALUES ('3573', '222', 'Norfolk', 'NOR', '1');
INSERT INTO `oc_zone` VALUES ('3574', '222', 'North Ayrshire', 'ARYN', '1');
INSERT INTO `oc_zone` VALUES ('3575', '222', 'North Lanarkshire', 'LANN', '1');
INSERT INTO `oc_zone` VALUES ('3576', '222', 'North Yorkshire', 'YSN', '1');
INSERT INTO `oc_zone` VALUES ('3577', '222', 'Northamptonshire', 'NHM', '1');
INSERT INTO `oc_zone` VALUES ('3578', '222', 'Northumberland', 'NLD', '1');
INSERT INTO `oc_zone` VALUES ('3579', '222', 'Nottinghamshire', 'NOT', '1');
INSERT INTO `oc_zone` VALUES ('3580', '222', 'Orkney Islands', 'ORK', '1');
INSERT INTO `oc_zone` VALUES ('3581', '222', 'Oxfordshire', 'OFE', '1');
INSERT INTO `oc_zone` VALUES ('3582', '222', 'Pembrokeshire', 'PEM', '1');
INSERT INTO `oc_zone` VALUES ('3583', '222', 'Perth and Kinross', 'PERTH', '1');
INSERT INTO `oc_zone` VALUES ('3584', '222', 'Powys', 'PWS', '1');
INSERT INTO `oc_zone` VALUES ('3585', '222', 'Renfrewshire', 'REN', '1');
INSERT INTO `oc_zone` VALUES ('3586', '222', 'Rhondda Cynon Taff', 'RHON', '1');
INSERT INTO `oc_zone` VALUES ('3587', '222', 'Rutland', 'RUT', '1');
INSERT INTO `oc_zone` VALUES ('3588', '222', 'Scottish Borders', 'BOR', '1');
INSERT INTO `oc_zone` VALUES ('3589', '222', 'Shetland Islands', 'SHET', '1');
INSERT INTO `oc_zone` VALUES ('3590', '222', 'Shropshire', 'SPE', '1');
INSERT INTO `oc_zone` VALUES ('3591', '222', 'Somerset', 'SOM', '1');
INSERT INTO `oc_zone` VALUES ('3592', '222', 'South Ayrshire', 'ARYS', '1');
INSERT INTO `oc_zone` VALUES ('3593', '222', 'South Lanarkshire', 'LANS', '1');
INSERT INTO `oc_zone` VALUES ('3594', '222', 'South Yorkshire', 'YSS', '1');
INSERT INTO `oc_zone` VALUES ('3595', '222', 'Staffordshire', 'SFD', '1');
INSERT INTO `oc_zone` VALUES ('3596', '222', 'Stirling', 'STIR', '1');
INSERT INTO `oc_zone` VALUES ('3597', '222', 'Suffolk', 'SFK', '1');
INSERT INTO `oc_zone` VALUES ('3598', '222', 'Surrey', 'SRY', '1');
INSERT INTO `oc_zone` VALUES ('3599', '222', 'Swansea', 'SWAN', '1');
INSERT INTO `oc_zone` VALUES ('3600', '222', 'Torfaen', 'TORF', '1');
INSERT INTO `oc_zone` VALUES ('3601', '222', 'Tyne and Wear', 'TWR', '1');
INSERT INTO `oc_zone` VALUES ('3602', '222', 'Vale of Glamorgan', 'VGLAM', '1');
INSERT INTO `oc_zone` VALUES ('3603', '222', 'Warwickshire', 'WARKS', '1');
INSERT INTO `oc_zone` VALUES ('3604', '222', 'West Dunbartonshire', 'WDUN', '1');
INSERT INTO `oc_zone` VALUES ('3605', '222', 'West Lothian', 'WLOT', '1');
INSERT INTO `oc_zone` VALUES ('3606', '222', 'West Midlands', 'WMD', '1');
INSERT INTO `oc_zone` VALUES ('3607', '222', 'West Sussex', 'SXW', '1');
INSERT INTO `oc_zone` VALUES ('3608', '222', 'West Yorkshire', 'YSW', '1');
INSERT INTO `oc_zone` VALUES ('3609', '222', 'Western Isles', 'WIL', '1');
INSERT INTO `oc_zone` VALUES ('3610', '222', 'Wiltshire', 'WLT', '1');
INSERT INTO `oc_zone` VALUES ('3611', '222', 'Worcestershire', 'WORCS', '1');
INSERT INTO `oc_zone` VALUES ('3612', '222', 'Wrexham', 'WRX', '1');
INSERT INTO `oc_zone` VALUES ('3613', '223', 'Alabama', 'AL', '1');
INSERT INTO `oc_zone` VALUES ('3614', '223', 'Alaska', 'AK', '1');
INSERT INTO `oc_zone` VALUES ('3615', '223', 'American Samoa', 'AS', '1');
INSERT INTO `oc_zone` VALUES ('3616', '223', 'Arizona', 'AZ', '1');
INSERT INTO `oc_zone` VALUES ('3617', '223', 'Arkansas', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3618', '223', 'Armed Forces Africa', 'AF', '1');
INSERT INTO `oc_zone` VALUES ('3619', '223', 'Armed Forces Americas', 'AA', '1');
INSERT INTO `oc_zone` VALUES ('3620', '223', 'Armed Forces Canada', 'AC', '1');
INSERT INTO `oc_zone` VALUES ('3621', '223', 'Armed Forces Europe', 'AE', '1');
INSERT INTO `oc_zone` VALUES ('3622', '223', 'Armed Forces Middle East', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('3623', '223', 'Armed Forces Pacific', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('3624', '223', 'California', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('3625', '223', 'Colorado', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3626', '223', 'Connecticut', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3627', '223', 'Delaware', 'DE', '1');
INSERT INTO `oc_zone` VALUES ('3628', '223', 'District of Columbia', 'DC', '1');
INSERT INTO `oc_zone` VALUES ('3629', '223', 'Federated States Of Micronesia', 'FM', '1');
INSERT INTO `oc_zone` VALUES ('3630', '223', 'Florida', 'FL', '1');
INSERT INTO `oc_zone` VALUES ('3631', '223', 'Georgia', 'GA', '1');
INSERT INTO `oc_zone` VALUES ('3632', '223', 'Guam', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('3633', '223', 'Hawaii', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3634', '223', 'Idaho', 'ID', '1');
INSERT INTO `oc_zone` VALUES ('3635', '223', 'Illinois', 'IL', '1');
INSERT INTO `oc_zone` VALUES ('3636', '223', 'Indiana', 'IN', '1');
INSERT INTO `oc_zone` VALUES ('3637', '223', 'Iowa', 'IA', '1');
INSERT INTO `oc_zone` VALUES ('3638', '223', 'Kansas', 'KS', '1');
INSERT INTO `oc_zone` VALUES ('3639', '223', 'Kentucky', 'KY', '1');
INSERT INTO `oc_zone` VALUES ('3640', '223', 'Louisiana', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3641', '223', 'Maine', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3642', '223', 'Marshall Islands', 'MH', '1');
INSERT INTO `oc_zone` VALUES ('3643', '223', 'Maryland', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('3644', '223', 'Massachusetts', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3645', '223', 'Michigan', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('3646', '223', 'Minnesota', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3647', '223', 'Mississippi', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('3648', '223', 'Missouri', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3649', '223', 'Montana', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('3650', '223', 'Nebraska', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('3651', '223', 'Nevada', 'NV', '1');
INSERT INTO `oc_zone` VALUES ('3652', '223', 'New Hampshire', 'NH', '1');
INSERT INTO `oc_zone` VALUES ('3653', '223', 'New Jersey', 'NJ', '1');
INSERT INTO `oc_zone` VALUES ('3654', '223', 'New Mexico', 'NM', '1');
INSERT INTO `oc_zone` VALUES ('3655', '223', 'New York', 'NY', '1');
INSERT INTO `oc_zone` VALUES ('3656', '223', 'North Carolina', 'NC', '1');
INSERT INTO `oc_zone` VALUES ('3657', '223', 'North Dakota', 'ND', '1');
INSERT INTO `oc_zone` VALUES ('3658', '223', 'Northern Mariana Islands', 'MP', '1');
INSERT INTO `oc_zone` VALUES ('3659', '223', 'Ohio', 'OH', '1');
INSERT INTO `oc_zone` VALUES ('3660', '223', 'Oklahoma', 'OK', '1');
INSERT INTO `oc_zone` VALUES ('3661', '223', 'Oregon', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('3662', '223', 'Palau', 'PW', '1');
INSERT INTO `oc_zone` VALUES ('3663', '223', 'Pennsylvania', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3664', '223', 'Puerto Rico', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('3665', '223', 'Rhode Island', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('3666', '223', 'South Carolina', 'SC', '1');
INSERT INTO `oc_zone` VALUES ('3667', '223', 'South Dakota', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('3668', '223', 'Tennessee', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3669', '223', 'Texas', 'TX', '1');
INSERT INTO `oc_zone` VALUES ('3670', '223', 'Utah', 'UT', '1');
INSERT INTO `oc_zone` VALUES ('3671', '223', 'Vermont', 'VT', '1');
INSERT INTO `oc_zone` VALUES ('3672', '223', 'Virgin Islands', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('3673', '223', 'Virginia', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('3674', '223', 'Washington', 'WA', '1');
INSERT INTO `oc_zone` VALUES ('3675', '223', 'West Virginia', 'WV', '1');
INSERT INTO `oc_zone` VALUES ('3676', '223', 'Wisconsin', 'WI', '1');
INSERT INTO `oc_zone` VALUES ('3677', '223', 'Wyoming', 'WY', '1');
INSERT INTO `oc_zone` VALUES ('3678', '224', 'Baker Island', 'BI', '1');
INSERT INTO `oc_zone` VALUES ('3679', '224', 'Howland Island', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3680', '224', 'Jarvis Island', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('3681', '224', 'Johnston Atoll', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('3682', '224', 'Kingman Reef', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('3683', '224', 'Midway Atoll', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3684', '224', 'Navassa Island', 'NI', '1');
INSERT INTO `oc_zone` VALUES ('3685', '224', 'Palmyra Atoll', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3686', '224', 'Wake Island', 'WI', '1');
INSERT INTO `oc_zone` VALUES ('3687', '225', 'Artigas', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3688', '225', 'Canelones', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('3689', '225', 'Cerro Largo', 'CL', '1');
INSERT INTO `oc_zone` VALUES ('3690', '225', 'Colonia', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3691', '225', 'Durazno', 'DU', '1');
INSERT INTO `oc_zone` VALUES ('3692', '225', 'Flores', 'FS', '1');
INSERT INTO `oc_zone` VALUES ('3693', '225', 'Florida', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('3694', '225', 'Lavalleja', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3695', '225', 'Maldonado', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3696', '225', 'Montevideo', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3697', '225', 'Paysandu', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3698', '225', 'Rio Negro', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('3699', '225', 'Rivera', 'RV', '1');
INSERT INTO `oc_zone` VALUES ('3700', '225', 'Rocha', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('3701', '225', 'Salto', 'SL', '1');
INSERT INTO `oc_zone` VALUES ('3702', '225', 'San Jose', 'SJ', '1');
INSERT INTO `oc_zone` VALUES ('3703', '225', 'Soriano', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3704', '225', 'Tacuarembo', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3705', '225', 'Treinta y Tres', 'TT', '1');
INSERT INTO `oc_zone` VALUES ('3706', '226', 'Andijon', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('3707', '226', 'Buxoro', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('3708', '226', 'Farg\'ona', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('3709', '226', 'Jizzax', 'JI', '1');
INSERT INTO `oc_zone` VALUES ('3710', '226', 'Namangan', 'NG', '1');
INSERT INTO `oc_zone` VALUES ('3711', '226', 'Navoiy', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3712', '226', 'Qashqadaryo', 'QA', '1');
INSERT INTO `oc_zone` VALUES ('3713', '226', 'Qoraqalpog\'iston Republikasi', 'QR', '1');
INSERT INTO `oc_zone` VALUES ('3714', '226', 'Samarqand', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3715', '226', 'Sirdaryo', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3716', '226', 'Surxondaryo', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3717', '226', 'Toshkent City', 'TK', '1');
INSERT INTO `oc_zone` VALUES ('3718', '226', 'Toshkent Region', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3719', '226', 'Xorazm', 'XO', '1');
INSERT INTO `oc_zone` VALUES ('3720', '227', 'Malampa', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3721', '227', 'Penama', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('3722', '227', 'Sanma', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3723', '227', 'Shefa', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3724', '227', 'Tafea', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3725', '227', 'Torba', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3726', '229', 'Amazonas', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('3727', '229', 'Anzoategui', 'AN', '1');
INSERT INTO `oc_zone` VALUES ('3728', '229', 'Apure', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('3729', '229', 'Aragua', 'AR', '1');
INSERT INTO `oc_zone` VALUES ('3730', '229', 'Barinas', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3731', '229', 'Bolivar', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('3732', '229', 'Carabobo', 'CA', '1');
INSERT INTO `oc_zone` VALUES ('3733', '229', 'Cojedes', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3734', '229', 'Delta Amacuro', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('3735', '229', 'Dependencias Federales', 'DF', '1');
INSERT INTO `oc_zone` VALUES ('3736', '229', 'Distrito Federal', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('3737', '229', 'Falcon', 'FA', '1');
INSERT INTO `oc_zone` VALUES ('3738', '229', 'Guarico', 'GU', '1');
INSERT INTO `oc_zone` VALUES ('3739', '229', 'Lara', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3740', '229', 'Merida', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3741', '229', 'Miranda', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('3742', '229', 'Monagas', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3743', '229', 'Nueva Esparta', 'NE', '1');
INSERT INTO `oc_zone` VALUES ('3744', '229', 'Portuguesa', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('3745', '229', 'Sucre', 'SU', '1');
INSERT INTO `oc_zone` VALUES ('3746', '229', 'Tachira', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3747', '229', 'Trujillo', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('3748', '229', 'Vargas', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('3749', '229', 'Yaracuy', 'YA', '1');
INSERT INTO `oc_zone` VALUES ('3750', '229', 'Zulia', 'ZU', '1');
INSERT INTO `oc_zone` VALUES ('3751', '230', 'An Giang', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3752', '230', 'Bac Giang', 'BG', '1');
INSERT INTO `oc_zone` VALUES ('3753', '230', 'Bac Kan', 'BK', '1');
INSERT INTO `oc_zone` VALUES ('3754', '230', 'Bac Lieu', 'BL', '1');
INSERT INTO `oc_zone` VALUES ('3755', '230', 'Bac Ninh', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('3756', '230', 'Ba Ria-Vung Tau', 'BR', '1');
INSERT INTO `oc_zone` VALUES ('3757', '230', 'Ben Tre', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('3758', '230', 'Binh Dinh', 'BH', '1');
INSERT INTO `oc_zone` VALUES ('3759', '230', 'Binh Duong', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('3760', '230', 'Binh Phuoc', 'BP', '1');
INSERT INTO `oc_zone` VALUES ('3761', '230', 'Binh Thuan', 'BT', '1');
INSERT INTO `oc_zone` VALUES ('3762', '230', 'Ca Mau', 'CM', '1');
INSERT INTO `oc_zone` VALUES ('3763', '230', 'Can Tho', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3764', '230', 'Cao Bang', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('3765', '230', 'Dak Lak', 'DL', '1');
INSERT INTO `oc_zone` VALUES ('3766', '230', 'Dak Nong', 'DG', '1');
INSERT INTO `oc_zone` VALUES ('3767', '230', 'Da Nang', 'DN', '1');
INSERT INTO `oc_zone` VALUES ('3768', '230', 'Dien Bien', 'DB', '1');
INSERT INTO `oc_zone` VALUES ('3769', '230', 'Dong Nai', 'DI', '1');
INSERT INTO `oc_zone` VALUES ('3770', '230', 'Dong Thap', 'DT', '1');
INSERT INTO `oc_zone` VALUES ('3771', '230', 'Gia Lai', 'GL', '1');
INSERT INTO `oc_zone` VALUES ('3772', '230', 'Ha Giang', 'HG', '1');
INSERT INTO `oc_zone` VALUES ('3773', '230', 'Hai Duong', 'HD', '1');
INSERT INTO `oc_zone` VALUES ('3774', '230', 'Hai Phong', 'HP', '1');
INSERT INTO `oc_zone` VALUES ('3775', '230', 'Ha Nam', 'HM', '1');
INSERT INTO `oc_zone` VALUES ('3776', '230', 'Ha Noi', 'HI', '1');
INSERT INTO `oc_zone` VALUES ('3777', '230', 'Ha Tay', 'HT', '1');
INSERT INTO `oc_zone` VALUES ('3778', '230', 'Ha Tinh', 'HH', '1');
INSERT INTO `oc_zone` VALUES ('3779', '230', 'Hoa Binh', 'HB', '1');
INSERT INTO `oc_zone` VALUES ('3780', '230', 'Ho Chi Minh City', 'HC', '1');
INSERT INTO `oc_zone` VALUES ('3781', '230', 'Hau Giang', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('3782', '230', 'Hung Yen', 'HY', '1');
INSERT INTO `oc_zone` VALUES ('3783', '232', 'Saint Croix', 'C', '1');
INSERT INTO `oc_zone` VALUES ('3784', '232', 'Saint John', 'J', '1');
INSERT INTO `oc_zone` VALUES ('3785', '232', 'Saint Thomas', 'T', '1');
INSERT INTO `oc_zone` VALUES ('3786', '233', 'Alo', 'A', '1');
INSERT INTO `oc_zone` VALUES ('3787', '233', 'Sigave', 'S', '1');
INSERT INTO `oc_zone` VALUES ('3788', '233', 'Wallis', 'W', '1');
INSERT INTO `oc_zone` VALUES ('3789', '235', 'Abyan', 'AB', '1');
INSERT INTO `oc_zone` VALUES ('3790', '235', 'Adan', 'AD', '1');
INSERT INTO `oc_zone` VALUES ('3791', '235', 'Amran', 'AM', '1');
INSERT INTO `oc_zone` VALUES ('3792', '235', 'Al Bayda', 'BA', '1');
INSERT INTO `oc_zone` VALUES ('3793', '235', 'Ad Dali', 'DA', '1');
INSERT INTO `oc_zone` VALUES ('3794', '235', 'Dhamar', 'DH', '1');
INSERT INTO `oc_zone` VALUES ('3795', '235', 'Hadramawt', 'HD', '1');
INSERT INTO `oc_zone` VALUES ('3796', '235', 'Hajjah', 'HJ', '1');
INSERT INTO `oc_zone` VALUES ('3797', '235', 'Al Hudaydah', 'HU', '1');
INSERT INTO `oc_zone` VALUES ('3798', '235', 'Ibb', 'IB', '1');
INSERT INTO `oc_zone` VALUES ('3799', '235', 'Al Jawf', 'JA', '1');
INSERT INTO `oc_zone` VALUES ('3800', '235', 'Lahij', 'LA', '1');
INSERT INTO `oc_zone` VALUES ('3801', '235', 'Ma\'rib', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3802', '235', 'Al Mahrah', 'MR', '1');
INSERT INTO `oc_zone` VALUES ('3803', '235', 'Al Mahwit', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('3804', '235', 'Sa\'dah', 'SD', '1');
INSERT INTO `oc_zone` VALUES ('3805', '235', 'San\'a', 'SN', '1');
INSERT INTO `oc_zone` VALUES ('3806', '235', 'Shabwah', 'SH', '1');
INSERT INTO `oc_zone` VALUES ('3807', '235', 'Ta\'izz', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3812', '237', 'Bas-Congo', 'BC', '1');
INSERT INTO `oc_zone` VALUES ('3813', '237', 'Bandundu', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('3814', '237', 'Equateur', 'EQ', '1');
INSERT INTO `oc_zone` VALUES ('3815', '237', 'Katanga', 'KA', '1');
INSERT INTO `oc_zone` VALUES ('3816', '237', 'Kasai-Oriental', 'KE', '1');
INSERT INTO `oc_zone` VALUES ('3817', '237', 'Kinshasa', 'KN', '1');
INSERT INTO `oc_zone` VALUES ('3818', '237', 'Kasai-Occidental', 'KW', '1');
INSERT INTO `oc_zone` VALUES ('3819', '237', 'Maniema', 'MA', '1');
INSERT INTO `oc_zone` VALUES ('3820', '237', 'Nord-Kivu', 'NK', '1');
INSERT INTO `oc_zone` VALUES ('3821', '237', 'Orientale', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('3822', '237', 'Sud-Kivu', 'SK', '1');
INSERT INTO `oc_zone` VALUES ('3823', '238', 'Central', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('3824', '238', 'Copperbelt', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('3825', '238', 'Eastern', 'EA', '1');
INSERT INTO `oc_zone` VALUES ('3826', '238', 'Luapula', 'LP', '1');
INSERT INTO `oc_zone` VALUES ('3827', '238', 'Lusaka', 'LK', '1');
INSERT INTO `oc_zone` VALUES ('3828', '238', 'Northern', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('3829', '238', 'North-Western', 'NW', '1');
INSERT INTO `oc_zone` VALUES ('3830', '238', 'Southern', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3831', '238', 'Western', 'WE', '1');
INSERT INTO `oc_zone` VALUES ('3832', '239', 'Bulawayo', 'BU', '1');
INSERT INTO `oc_zone` VALUES ('3833', '239', 'Harare', 'HA', '1');
INSERT INTO `oc_zone` VALUES ('3834', '239', 'Manicaland', 'ML', '1');
INSERT INTO `oc_zone` VALUES ('3835', '239', 'Mashonaland Central', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('3836', '239', 'Mashonaland East', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3837', '239', 'Mashonaland West', 'MW', '1');
INSERT INTO `oc_zone` VALUES ('3838', '239', 'Masvingo', 'MV', '1');
INSERT INTO `oc_zone` VALUES ('3839', '239', 'Matabeleland North', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3840', '239', 'Matabeleland South', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('3841', '239', 'Midlands', 'MD', '1');
INSERT INTO `oc_zone` VALUES ('3861', '105', 'Campobasso', 'CB', '1');
INSERT INTO `oc_zone` VALUES ('3862', '105', 'Carbonia-Iglesias', 'CI', '1');
INSERT INTO `oc_zone` VALUES ('3863', '105', 'Caserta', 'CE', '1');
INSERT INTO `oc_zone` VALUES ('3864', '105', 'Catania', 'CT', '1');
INSERT INTO `oc_zone` VALUES ('3865', '105', 'Catanzaro', 'CZ', '1');
INSERT INTO `oc_zone` VALUES ('3866', '105', 'Chieti', 'CH', '1');
INSERT INTO `oc_zone` VALUES ('3867', '105', 'Como', 'CO', '1');
INSERT INTO `oc_zone` VALUES ('3868', '105', 'Cosenza', 'CS', '1');
INSERT INTO `oc_zone` VALUES ('3869', '105', 'Cremona', 'CR', '1');
INSERT INTO `oc_zone` VALUES ('3870', '105', 'Crotone', 'KR', '1');
INSERT INTO `oc_zone` VALUES ('3871', '105', 'Cuneo', 'CN', '1');
INSERT INTO `oc_zone` VALUES ('3872', '105', 'Enna', 'EN', '1');
INSERT INTO `oc_zone` VALUES ('3873', '105', 'Ferrara', 'FE', '1');
INSERT INTO `oc_zone` VALUES ('3874', '105', 'Firenze', 'FI', '1');
INSERT INTO `oc_zone` VALUES ('3875', '105', 'Foggia', 'FG', '1');
INSERT INTO `oc_zone` VALUES ('3876', '105', 'Forli-Cesena', 'FC', '1');
INSERT INTO `oc_zone` VALUES ('3877', '105', 'Frosinone', 'FR', '1');
INSERT INTO `oc_zone` VALUES ('3878', '105', 'Genova', 'GE', '1');
INSERT INTO `oc_zone` VALUES ('3879', '105', 'Gorizia', 'GO', '1');
INSERT INTO `oc_zone` VALUES ('3880', '105', 'Grosseto', 'GR', '1');
INSERT INTO `oc_zone` VALUES ('3881', '105', 'Imperia', 'IM', '1');
INSERT INTO `oc_zone` VALUES ('3882', '105', 'Isernia', 'IS', '1');
INSERT INTO `oc_zone` VALUES ('3883', '105', 'L&#39;Aquila', 'AQ', '1');
INSERT INTO `oc_zone` VALUES ('3884', '105', 'La Spezia', 'SP', '1');
INSERT INTO `oc_zone` VALUES ('3885', '105', 'Latina', 'LT', '1');
INSERT INTO `oc_zone` VALUES ('3886', '105', 'Lecce', 'LE', '1');
INSERT INTO `oc_zone` VALUES ('3887', '105', 'Lecco', 'LC', '1');
INSERT INTO `oc_zone` VALUES ('3888', '105', 'Livorno', 'LI', '1');
INSERT INTO `oc_zone` VALUES ('3889', '105', 'Lodi', 'LO', '1');
INSERT INTO `oc_zone` VALUES ('3890', '105', 'Lucca', 'LU', '1');
INSERT INTO `oc_zone` VALUES ('3891', '105', 'Macerata', 'MC', '1');
INSERT INTO `oc_zone` VALUES ('3892', '105', 'Mantova', 'MN', '1');
INSERT INTO `oc_zone` VALUES ('3893', '105', 'Massa-Carrara', 'MS', '1');
INSERT INTO `oc_zone` VALUES ('3894', '105', 'Matera', 'MT', '1');
INSERT INTO `oc_zone` VALUES ('3895', '105', 'Medio Campidano', 'VS', '1');
INSERT INTO `oc_zone` VALUES ('3896', '105', 'Messina', 'ME', '1');
INSERT INTO `oc_zone` VALUES ('3897', '105', 'Milano', 'MI', '1');
INSERT INTO `oc_zone` VALUES ('3898', '105', 'Modena', 'MO', '1');
INSERT INTO `oc_zone` VALUES ('3899', '105', 'Napoli', 'NA', '1');
INSERT INTO `oc_zone` VALUES ('3900', '105', 'Novara', 'NO', '1');
INSERT INTO `oc_zone` VALUES ('3901', '105', 'Nuoro', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('3902', '105', 'Ogliastra', 'OG', '1');
INSERT INTO `oc_zone` VALUES ('3903', '105', 'Olbia-Tempio', 'OT', '1');
INSERT INTO `oc_zone` VALUES ('3904', '105', 'Oristano', 'OR', '1');
INSERT INTO `oc_zone` VALUES ('3905', '105', 'Padova', 'PD', '1');
INSERT INTO `oc_zone` VALUES ('3906', '105', 'Palermo', 'PA', '1');
INSERT INTO `oc_zone` VALUES ('3907', '105', 'Parma', 'PR', '1');
INSERT INTO `oc_zone` VALUES ('3908', '105', 'Pavia', 'PV', '1');
INSERT INTO `oc_zone` VALUES ('3909', '105', 'Perugia', 'PG', '1');
INSERT INTO `oc_zone` VALUES ('3910', '105', 'Pesaro e Urbino', 'PU', '1');
INSERT INTO `oc_zone` VALUES ('3911', '105', 'Pescara', 'PE', '1');
INSERT INTO `oc_zone` VALUES ('3912', '105', 'Piacenza', 'PC', '1');
INSERT INTO `oc_zone` VALUES ('3913', '105', 'Pisa', 'PI', '1');
INSERT INTO `oc_zone` VALUES ('3914', '105', 'Pistoia', 'PT', '1');
INSERT INTO `oc_zone` VALUES ('3915', '105', 'Pordenone', 'PN', '1');
INSERT INTO `oc_zone` VALUES ('3916', '105', 'Potenza', 'PZ', '1');
INSERT INTO `oc_zone` VALUES ('3917', '105', 'Prato', 'PO', '1');
INSERT INTO `oc_zone` VALUES ('3918', '105', 'Ragusa', 'RG', '1');
INSERT INTO `oc_zone` VALUES ('3919', '105', 'Ravenna', 'RA', '1');
INSERT INTO `oc_zone` VALUES ('3920', '105', 'Reggio Calabria', 'RC', '1');
INSERT INTO `oc_zone` VALUES ('3921', '105', 'Reggio Emilia', 'RE', '1');
INSERT INTO `oc_zone` VALUES ('3922', '105', 'Rieti', 'RI', '1');
INSERT INTO `oc_zone` VALUES ('3923', '105', 'Rimini', 'RN', '1');
INSERT INTO `oc_zone` VALUES ('3924', '105', 'Roma', 'RM', '1');
INSERT INTO `oc_zone` VALUES ('3925', '105', 'Rovigo', 'RO', '1');
INSERT INTO `oc_zone` VALUES ('3926', '105', 'Salerno', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('3927', '105', 'Sassari', 'SS', '1');
INSERT INTO `oc_zone` VALUES ('3928', '105', 'Savona', 'SV', '1');
INSERT INTO `oc_zone` VALUES ('3929', '105', 'Siena', 'SI', '1');
INSERT INTO `oc_zone` VALUES ('3930', '105', 'Siracusa', 'SR', '1');
INSERT INTO `oc_zone` VALUES ('3931', '105', 'Sondrio', 'SO', '1');
INSERT INTO `oc_zone` VALUES ('3932', '105', 'Taranto', 'TA', '1');
INSERT INTO `oc_zone` VALUES ('3933', '105', 'Teramo', 'TE', '1');
INSERT INTO `oc_zone` VALUES ('3934', '105', 'Terni', 'TR', '1');
INSERT INTO `oc_zone` VALUES ('3935', '105', 'Torino', 'TO', '1');
INSERT INTO `oc_zone` VALUES ('3936', '105', 'Trapani', 'TP', '1');
INSERT INTO `oc_zone` VALUES ('3937', '105', 'Trento', 'TN', '1');
INSERT INTO `oc_zone` VALUES ('3938', '105', 'Treviso', 'TV', '1');
INSERT INTO `oc_zone` VALUES ('3939', '105', 'Trieste', 'TS', '1');
INSERT INTO `oc_zone` VALUES ('3940', '105', 'Udine', 'UD', '1');
INSERT INTO `oc_zone` VALUES ('3941', '105', 'Varese', 'VA', '1');
INSERT INTO `oc_zone` VALUES ('3942', '105', 'Venezia', 'VE', '1');
INSERT INTO `oc_zone` VALUES ('3943', '105', 'Verbano-Cusio-Ossola', 'VB', '1');
INSERT INTO `oc_zone` VALUES ('3944', '105', 'Vercelli', 'VC', '1');
INSERT INTO `oc_zone` VALUES ('3945', '105', 'Verona', 'VR', '1');
INSERT INTO `oc_zone` VALUES ('3946', '105', 'Vibo Valentia', 'VV', '1');
INSERT INTO `oc_zone` VALUES ('3947', '105', 'Vicenza', 'VI', '1');
INSERT INTO `oc_zone` VALUES ('3948', '105', 'Viterbo', 'VT', '1');
INSERT INTO `oc_zone` VALUES ('3949', '222', 'County Antrim', 'ANT', '1');
INSERT INTO `oc_zone` VALUES ('3950', '222', 'County Armagh', 'ARM', '1');
INSERT INTO `oc_zone` VALUES ('3951', '222', 'County Down', 'DOW', '1');
INSERT INTO `oc_zone` VALUES ('3952', '222', 'County Fermanagh', 'FER', '1');
INSERT INTO `oc_zone` VALUES ('3953', '222', 'County Londonderry', 'LDY', '1');
INSERT INTO `oc_zone` VALUES ('3954', '222', 'County Tyrone', 'TYR', '1');
INSERT INTO `oc_zone` VALUES ('3955', '222', 'Cumbria', 'CMA', '1');
INSERT INTO `oc_zone` VALUES ('3956', '190', 'Pomurska', '1', '1');
INSERT INTO `oc_zone` VALUES ('3957', '190', 'Podravska', '2', '1');
INSERT INTO `oc_zone` VALUES ('3958', '190', 'Koroška', '3', '1');
INSERT INTO `oc_zone` VALUES ('3959', '190', 'Savinjska', '4', '1');
INSERT INTO `oc_zone` VALUES ('3960', '190', 'Zasavska', '5', '1');
INSERT INTO `oc_zone` VALUES ('3961', '190', 'Spodnjeposavska', '6', '1');
INSERT INTO `oc_zone` VALUES ('3962', '190', 'Jugovzhodna Slovenija', '7', '1');
INSERT INTO `oc_zone` VALUES ('3963', '190', 'Osrednjeslovenska', '8', '1');
INSERT INTO `oc_zone` VALUES ('3964', '190', 'Gorenjska', '9', '1');
INSERT INTO `oc_zone` VALUES ('3965', '190', 'Notranjsko-kraška', '10', '1');
INSERT INTO `oc_zone` VALUES ('3966', '190', 'Goriška', '11', '1');
INSERT INTO `oc_zone` VALUES ('3967', '190', 'Obalno-kraška', '12', '1');
INSERT INTO `oc_zone` VALUES ('3968', '33', 'Ruse', '', '1');
INSERT INTO `oc_zone` VALUES ('3969', '101', 'Alborz', 'ALB', '1');
INSERT INTO `oc_zone` VALUES ('3970', '21', 'Brussels-Capital Region', 'BRU', '1');
INSERT INTO `oc_zone` VALUES ('3971', '138', 'Aguascalientes', 'AG', '1');
INSERT INTO `oc_zone` VALUES ('3973', '242', 'Andrijevica', '01', '1');
INSERT INTO `oc_zone` VALUES ('3974', '242', 'Bar', '02', '1');
INSERT INTO `oc_zone` VALUES ('3975', '242', 'Berane', '03', '1');
INSERT INTO `oc_zone` VALUES ('3976', '242', 'Bijelo Polje', '04', '1');
INSERT INTO `oc_zone` VALUES ('3977', '242', 'Budva', '05', '1');
INSERT INTO `oc_zone` VALUES ('3978', '242', 'Cetinje', '06', '1');
INSERT INTO `oc_zone` VALUES ('3979', '242', 'Danilovgrad', '07', '1');
INSERT INTO `oc_zone` VALUES ('3980', '242', 'Herceg-Novi', '08', '1');
INSERT INTO `oc_zone` VALUES ('3981', '242', 'Kolašin', '09', '1');
INSERT INTO `oc_zone` VALUES ('3982', '242', 'Kotor', '10', '1');
INSERT INTO `oc_zone` VALUES ('3983', '242', 'Mojkovac', '11', '1');
INSERT INTO `oc_zone` VALUES ('3984', '242', 'Nikšić', '12', '1');
INSERT INTO `oc_zone` VALUES ('3985', '242', 'Plav', '13', '1');
INSERT INTO `oc_zone` VALUES ('3986', '242', 'Pljevlja', '14', '1');
INSERT INTO `oc_zone` VALUES ('3987', '242', 'Plužine', '15', '1');
INSERT INTO `oc_zone` VALUES ('3988', '242', 'Podgorica', '16', '1');
INSERT INTO `oc_zone` VALUES ('3989', '242', 'Rožaje', '17', '1');
INSERT INTO `oc_zone` VALUES ('3990', '242', 'Šavnik', '18', '1');
INSERT INTO `oc_zone` VALUES ('3991', '242', 'Tivat', '19', '1');
INSERT INTO `oc_zone` VALUES ('3992', '242', 'Ulcinj', '20', '1');
INSERT INTO `oc_zone` VALUES ('3993', '242', 'Žabljak', '21', '1');
INSERT INTO `oc_zone` VALUES ('3994', '243', 'Belgrade', '00', '1');
INSERT INTO `oc_zone` VALUES ('3995', '243', 'North Bačka', '01', '1');
INSERT INTO `oc_zone` VALUES ('3996', '243', 'Central Banat', '02', '1');
INSERT INTO `oc_zone` VALUES ('3997', '243', 'North Banat', '03', '1');
INSERT INTO `oc_zone` VALUES ('3998', '243', 'South Banat', '04', '1');
INSERT INTO `oc_zone` VALUES ('3999', '243', 'West Bačka', '05', '1');
INSERT INTO `oc_zone` VALUES ('4000', '243', 'South Bačka', '06', '1');
INSERT INTO `oc_zone` VALUES ('4001', '243', 'Srem', '07', '1');
INSERT INTO `oc_zone` VALUES ('4002', '243', 'Mačva', '08', '1');
INSERT INTO `oc_zone` VALUES ('4003', '243', 'Kolubara', '09', '1');
INSERT INTO `oc_zone` VALUES ('4004', '243', 'Podunavlje', '10', '1');
INSERT INTO `oc_zone` VALUES ('4005', '243', 'Braničevo', '11', '1');
INSERT INTO `oc_zone` VALUES ('4006', '243', 'Šumadija', '12', '1');
INSERT INTO `oc_zone` VALUES ('4007', '243', 'Pomoravlje', '13', '1');
INSERT INTO `oc_zone` VALUES ('4008', '243', 'Bor', '14', '1');
INSERT INTO `oc_zone` VALUES ('4009', '243', 'Zaječar', '15', '1');
INSERT INTO `oc_zone` VALUES ('4010', '243', 'Zlatibor', '16', '1');
INSERT INTO `oc_zone` VALUES ('4011', '243', 'Moravica', '17', '1');
INSERT INTO `oc_zone` VALUES ('4012', '243', 'Raška', '18', '1');
INSERT INTO `oc_zone` VALUES ('4013', '243', 'Rasina', '19', '1');
INSERT INTO `oc_zone` VALUES ('4014', '243', 'Nišava', '20', '1');
INSERT INTO `oc_zone` VALUES ('4015', '243', 'Toplica', '21', '1');
INSERT INTO `oc_zone` VALUES ('4016', '243', 'Pirot', '22', '1');
INSERT INTO `oc_zone` VALUES ('4017', '243', 'Jablanica', '23', '1');
INSERT INTO `oc_zone` VALUES ('4018', '243', 'Pčinja', '24', '1');
INSERT INTO `oc_zone` VALUES ('4020', '245', 'Bonaire', 'BO', '1');
INSERT INTO `oc_zone` VALUES ('4021', '245', 'Saba', 'SA', '1');
INSERT INTO `oc_zone` VALUES ('4022', '245', 'Sint Eustatius', 'SE', '1');
INSERT INTO `oc_zone` VALUES ('4023', '248', 'Central Equatoria', 'EC', '1');
INSERT INTO `oc_zone` VALUES ('4024', '248', 'Eastern Equatoria', 'EE', '1');
INSERT INTO `oc_zone` VALUES ('4025', '248', 'Jonglei', 'JG', '1');
INSERT INTO `oc_zone` VALUES ('4026', '248', 'Lakes', 'LK', '1');
INSERT INTO `oc_zone` VALUES ('4027', '248', 'Northern Bahr el-Ghazal', 'BN', '1');
INSERT INTO `oc_zone` VALUES ('4028', '248', 'Unity', 'UY', '1');
INSERT INTO `oc_zone` VALUES ('4029', '248', 'Upper Nile', 'NU', '1');
INSERT INTO `oc_zone` VALUES ('4030', '248', 'Warrap', 'WR', '1');
INSERT INTO `oc_zone` VALUES ('4031', '248', 'Western Bahr el-Ghazal', 'BW', '1');
INSERT INTO `oc_zone` VALUES ('4032', '248', 'Western Equatoria', 'EW', '1');
INSERT INTO `oc_zone` VALUES ('4036', '117', 'Ainaži, Salacgrīvas novads', '0661405', '1');
INSERT INTO `oc_zone` VALUES ('4037', '117', 'Aizkraukle, Aizkraukles novads', '0320201', '1');
INSERT INTO `oc_zone` VALUES ('4038', '117', 'Aizkraukles novads', '0320200', '1');
INSERT INTO `oc_zone` VALUES ('4039', '117', 'Aizpute, Aizputes novads', '0640605', '1');
INSERT INTO `oc_zone` VALUES ('4040', '117', 'Aizputes novads', '0640600', '1');
INSERT INTO `oc_zone` VALUES ('4041', '117', 'Aknīste, Aknīstes novads', '0560805', '1');
INSERT INTO `oc_zone` VALUES ('4042', '117', 'Aknīstes novads', '0560800', '1');
INSERT INTO `oc_zone` VALUES ('4043', '117', 'Aloja, Alojas novads', '0661007', '1');
INSERT INTO `oc_zone` VALUES ('4044', '117', 'Alojas novads', '0661000', '1');
INSERT INTO `oc_zone` VALUES ('4045', '117', 'Alsungas novads', '0624200', '1');
INSERT INTO `oc_zone` VALUES ('4046', '117', 'Alūksne, Alūksnes novads', '0360201', '1');
INSERT INTO `oc_zone` VALUES ('4047', '117', 'Alūksnes novads', '0360200', '1');
INSERT INTO `oc_zone` VALUES ('4048', '117', 'Amatas novads', '0424701', '1');
INSERT INTO `oc_zone` VALUES ('4049', '117', 'Ape, Apes novads', '0360805', '1');
INSERT INTO `oc_zone` VALUES ('4050', '117', 'Apes novads', '0360800', '1');
INSERT INTO `oc_zone` VALUES ('4051', '117', 'Auce, Auces novads', '0460805', '1');
INSERT INTO `oc_zone` VALUES ('4052', '117', 'Auces novads', '0460800', '1');
INSERT INTO `oc_zone` VALUES ('4053', '117', 'Ādažu novads', '0804400', '1');
INSERT INTO `oc_zone` VALUES ('4054', '117', 'Babītes novads', '0804900', '1');
INSERT INTO `oc_zone` VALUES ('4055', '117', 'Baldone, Baldones novads', '0800605', '1');
INSERT INTO `oc_zone` VALUES ('4056', '117', 'Baldones novads', '0800600', '1');
INSERT INTO `oc_zone` VALUES ('4057', '117', 'Baloži, Ķekavas novads', '0800807', '1');
INSERT INTO `oc_zone` VALUES ('4058', '117', 'Baltinavas novads', '0384400', '1');
INSERT INTO `oc_zone` VALUES ('4059', '117', 'Balvi, Balvu novads', '0380201', '1');
INSERT INTO `oc_zone` VALUES ('4060', '117', 'Balvu novads', '0380200', '1');
INSERT INTO `oc_zone` VALUES ('4061', '117', 'Bauska, Bauskas novads', '0400201', '1');
INSERT INTO `oc_zone` VALUES ('4062', '117', 'Bauskas novads', '0400200', '1');
INSERT INTO `oc_zone` VALUES ('4063', '117', 'Beverīnas novads', '0964700', '1');
INSERT INTO `oc_zone` VALUES ('4064', '117', 'Brocēni, Brocēnu novads', '0840605', '1');
INSERT INTO `oc_zone` VALUES ('4065', '117', 'Brocēnu novads', '0840601', '1');
INSERT INTO `oc_zone` VALUES ('4066', '117', 'Burtnieku novads', '0967101', '1');
INSERT INTO `oc_zone` VALUES ('4067', '117', 'Carnikavas novads', '0805200', '1');
INSERT INTO `oc_zone` VALUES ('4068', '117', 'Cesvaine, Cesvaines novads', '0700807', '1');
INSERT INTO `oc_zone` VALUES ('4069', '117', 'Cesvaines novads', '0700800', '1');
INSERT INTO `oc_zone` VALUES ('4070', '117', 'Cēsis, Cēsu novads', '0420201', '1');
INSERT INTO `oc_zone` VALUES ('4071', '117', 'Cēsu novads', '0420200', '1');
INSERT INTO `oc_zone` VALUES ('4072', '117', 'Ciblas novads', '0684901', '1');
INSERT INTO `oc_zone` VALUES ('4073', '117', 'Dagda, Dagdas novads', '0601009', '1');
INSERT INTO `oc_zone` VALUES ('4074', '117', 'Dagdas novads', '0601000', '1');
INSERT INTO `oc_zone` VALUES ('4075', '117', 'Daugavpils', '0050000', '1');
INSERT INTO `oc_zone` VALUES ('4076', '117', 'Daugavpils novads', '0440200', '1');
INSERT INTO `oc_zone` VALUES ('4077', '117', 'Dobele, Dobeles novads', '0460201', '1');
INSERT INTO `oc_zone` VALUES ('4078', '117', 'Dobeles novads', '0460200', '1');
INSERT INTO `oc_zone` VALUES ('4079', '117', 'Dundagas novads', '0885100', '1');
INSERT INTO `oc_zone` VALUES ('4080', '117', 'Durbe, Durbes novads', '0640807', '1');
INSERT INTO `oc_zone` VALUES ('4081', '117', 'Durbes novads', '0640801', '1');
INSERT INTO `oc_zone` VALUES ('4082', '117', 'Engures novads', '0905100', '1');
INSERT INTO `oc_zone` VALUES ('4083', '117', 'Ērgļu novads', '0705500', '1');
INSERT INTO `oc_zone` VALUES ('4084', '117', 'Garkalnes novads', '0806000', '1');
INSERT INTO `oc_zone` VALUES ('4085', '117', 'Grobiņa, Grobiņas novads', '0641009', '1');
INSERT INTO `oc_zone` VALUES ('4086', '117', 'Grobiņas novads', '0641000', '1');
INSERT INTO `oc_zone` VALUES ('4087', '117', 'Gulbene, Gulbenes novads', '0500201', '1');
INSERT INTO `oc_zone` VALUES ('4088', '117', 'Gulbenes novads', '0500200', '1');
INSERT INTO `oc_zone` VALUES ('4089', '117', 'Iecavas novads', '0406400', '1');
INSERT INTO `oc_zone` VALUES ('4090', '117', 'Ikšķile, Ikšķiles novads', '0740605', '1');
INSERT INTO `oc_zone` VALUES ('4091', '117', 'Ikšķiles novads', '0740600', '1');
INSERT INTO `oc_zone` VALUES ('4092', '117', 'Ilūkste, Ilūkstes novads', '0440807', '1');
INSERT INTO `oc_zone` VALUES ('4093', '117', 'Ilūkstes novads', '0440801', '1');
INSERT INTO `oc_zone` VALUES ('4094', '117', 'Inčukalna novads', '0801800', '1');
INSERT INTO `oc_zone` VALUES ('4095', '117', 'Jaunjelgava, Jaunjelgavas novads', '0321007', '1');
INSERT INTO `oc_zone` VALUES ('4096', '117', 'Jaunjelgavas novads', '0321000', '1');
INSERT INTO `oc_zone` VALUES ('4097', '117', 'Jaunpiebalgas novads', '0425700', '1');
INSERT INTO `oc_zone` VALUES ('4098', '117', 'Jaunpils novads', '0905700', '1');
INSERT INTO `oc_zone` VALUES ('4099', '117', 'Jelgava', '0090000', '1');
INSERT INTO `oc_zone` VALUES ('4100', '117', 'Jelgavas novads', '0540200', '1');
INSERT INTO `oc_zone` VALUES ('4101', '117', 'Jēkabpils', '0110000', '1');
INSERT INTO `oc_zone` VALUES ('4102', '117', 'Jēkabpils novads', '0560200', '1');
INSERT INTO `oc_zone` VALUES ('4103', '117', 'Jūrmala', '0130000', '1');
INSERT INTO `oc_zone` VALUES ('4104', '117', 'Kalnciems, Jelgavas novads', '0540211', '1');
INSERT INTO `oc_zone` VALUES ('4105', '117', 'Kandava, Kandavas novads', '0901211', '1');
INSERT INTO `oc_zone` VALUES ('4106', '117', 'Kandavas novads', '0901201', '1');
INSERT INTO `oc_zone` VALUES ('4107', '117', 'Kārsava, Kārsavas novads', '0681009', '1');
INSERT INTO `oc_zone` VALUES ('4108', '117', 'Kārsavas novads', '0681000', '1');
INSERT INTO `oc_zone` VALUES ('4109', '117', 'Kocēnu novads ,bij. Valmieras)', '0960200', '1');
INSERT INTO `oc_zone` VALUES ('4110', '117', 'Kokneses novads', '0326100', '1');
INSERT INTO `oc_zone` VALUES ('4111', '117', 'Krāslava, Krāslavas novads', '0600201', '1');
INSERT INTO `oc_zone` VALUES ('4112', '117', 'Krāslavas novads', '0600202', '1');
INSERT INTO `oc_zone` VALUES ('4113', '117', 'Krimuldas novads', '0806900', '1');
INSERT INTO `oc_zone` VALUES ('4114', '117', 'Krustpils novads', '0566900', '1');
INSERT INTO `oc_zone` VALUES ('4115', '117', 'Kuldīga, Kuldīgas novads', '0620201', '1');
INSERT INTO `oc_zone` VALUES ('4116', '117', 'Kuldīgas novads', '0620200', '1');
INSERT INTO `oc_zone` VALUES ('4117', '117', 'Ķeguma novads', '0741001', '1');
INSERT INTO `oc_zone` VALUES ('4118', '117', 'Ķegums, Ķeguma novads', '0741009', '1');
INSERT INTO `oc_zone` VALUES ('4119', '117', 'Ķekavas novads', '0800800', '1');
INSERT INTO `oc_zone` VALUES ('4120', '117', 'Lielvārde, Lielvārdes novads', '0741413', '1');
INSERT INTO `oc_zone` VALUES ('4121', '117', 'Lielvārdes novads', '0741401', '1');
INSERT INTO `oc_zone` VALUES ('4122', '117', 'Liepāja', '0170000', '1');
INSERT INTO `oc_zone` VALUES ('4123', '117', 'Limbaži, Limbažu novads', '0660201', '1');
INSERT INTO `oc_zone` VALUES ('4124', '117', 'Limbažu novads', '0660200', '1');
INSERT INTO `oc_zone` VALUES ('4125', '117', 'Līgatne, Līgatnes novads', '0421211', '1');
INSERT INTO `oc_zone` VALUES ('4126', '117', 'Līgatnes novads', '0421200', '1');
INSERT INTO `oc_zone` VALUES ('4127', '117', 'Līvāni, Līvānu novads', '0761211', '1');
INSERT INTO `oc_zone` VALUES ('4128', '117', 'Līvānu novads', '0761201', '1');
INSERT INTO `oc_zone` VALUES ('4129', '117', 'Lubāna, Lubānas novads', '0701413', '1');
INSERT INTO `oc_zone` VALUES ('4130', '117', 'Lubānas novads', '0701400', '1');
INSERT INTO `oc_zone` VALUES ('4131', '117', 'Ludza, Ludzas novads', '0680201', '1');
INSERT INTO `oc_zone` VALUES ('4132', '117', 'Ludzas novads', '0680200', '1');
INSERT INTO `oc_zone` VALUES ('4133', '117', 'Madona, Madonas novads', '0700201', '1');
INSERT INTO `oc_zone` VALUES ('4134', '117', 'Madonas novads', '0700200', '1');
INSERT INTO `oc_zone` VALUES ('4135', '117', 'Mazsalaca, Mazsalacas novads', '0961011', '1');
INSERT INTO `oc_zone` VALUES ('4136', '117', 'Mazsalacas novads', '0961000', '1');
INSERT INTO `oc_zone` VALUES ('4137', '117', 'Mālpils novads', '0807400', '1');
INSERT INTO `oc_zone` VALUES ('4138', '117', 'Mārupes novads', '0807600', '1');
INSERT INTO `oc_zone` VALUES ('4139', '117', 'Mērsraga novads', '0887600', '1');
INSERT INTO `oc_zone` VALUES ('4140', '117', 'Naukšēnu novads', '0967300', '1');
INSERT INTO `oc_zone` VALUES ('4141', '117', 'Neretas novads', '0327100', '1');
INSERT INTO `oc_zone` VALUES ('4142', '117', 'Nīcas novads', '0647900', '1');
INSERT INTO `oc_zone` VALUES ('4143', '117', 'Ogre, Ogres novads', '0740201', '1');
INSERT INTO `oc_zone` VALUES ('4144', '117', 'Ogres novads', '0740202', '1');
INSERT INTO `oc_zone` VALUES ('4145', '117', 'Olaine, Olaines novads', '0801009', '1');
INSERT INTO `oc_zone` VALUES ('4146', '117', 'Olaines novads', '0801000', '1');
INSERT INTO `oc_zone` VALUES ('4147', '117', 'Ozolnieku novads', '0546701', '1');
INSERT INTO `oc_zone` VALUES ('4148', '117', 'Pārgaujas novads', '0427500', '1');
INSERT INTO `oc_zone` VALUES ('4149', '117', 'Pāvilosta, Pāvilostas novads', '0641413', '1');
INSERT INTO `oc_zone` VALUES ('4150', '117', 'Pāvilostas novads', '0641401', '1');
INSERT INTO `oc_zone` VALUES ('4151', '117', 'Piltene, Ventspils novads', '0980213', '1');
INSERT INTO `oc_zone` VALUES ('4152', '117', 'Pļaviņas, Pļaviņu novads', '0321413', '1');
INSERT INTO `oc_zone` VALUES ('4153', '117', 'Pļaviņu novads', '0321400', '1');
INSERT INTO `oc_zone` VALUES ('4154', '117', 'Preiļi, Preiļu novads', '0760201', '1');
INSERT INTO `oc_zone` VALUES ('4155', '117', 'Preiļu novads', '0760202', '1');
INSERT INTO `oc_zone` VALUES ('4156', '117', 'Priekule, Priekules novads', '0641615', '1');
INSERT INTO `oc_zone` VALUES ('4157', '117', 'Priekules novads', '0641600', '1');
INSERT INTO `oc_zone` VALUES ('4158', '117', 'Priekuļu novads', '0427300', '1');
INSERT INTO `oc_zone` VALUES ('4159', '117', 'Raunas novads', '0427700', '1');
INSERT INTO `oc_zone` VALUES ('4160', '117', 'Rēzekne', '0210000', '1');
INSERT INTO `oc_zone` VALUES ('4161', '117', 'Rēzeknes novads', '0780200', '1');
INSERT INTO `oc_zone` VALUES ('4162', '117', 'Riebiņu novads', '0766300', '1');
INSERT INTO `oc_zone` VALUES ('4163', '117', 'Rīga', '0010000', '1');
INSERT INTO `oc_zone` VALUES ('4164', '117', 'Rojas novads', '0888300', '1');
INSERT INTO `oc_zone` VALUES ('4165', '117', 'Ropažu novads', '0808400', '1');
INSERT INTO `oc_zone` VALUES ('4166', '117', 'Rucavas novads', '0648500', '1');
INSERT INTO `oc_zone` VALUES ('4167', '117', 'Rugāju novads', '0387500', '1');
INSERT INTO `oc_zone` VALUES ('4168', '117', 'Rundāles novads', '0407700', '1');
INSERT INTO `oc_zone` VALUES ('4169', '117', 'Rūjiena, Rūjienas novads', '0961615', '1');
INSERT INTO `oc_zone` VALUES ('4170', '117', 'Rūjienas novads', '0961600', '1');
INSERT INTO `oc_zone` VALUES ('4171', '117', 'Sabile, Talsu novads', '0880213', '1');
INSERT INTO `oc_zone` VALUES ('4172', '117', 'Salacgrīva, Salacgrīvas novads', '0661415', '1');
INSERT INTO `oc_zone` VALUES ('4173', '117', 'Salacgrīvas novads', '0661400', '1');
INSERT INTO `oc_zone` VALUES ('4174', '117', 'Salas novads', '0568700', '1');
INSERT INTO `oc_zone` VALUES ('4175', '117', 'Salaspils novads', '0801200', '1');
INSERT INTO `oc_zone` VALUES ('4176', '117', 'Salaspils, Salaspils novads', '0801211', '1');
INSERT INTO `oc_zone` VALUES ('4177', '117', 'Saldus novads', '0840200', '1');
INSERT INTO `oc_zone` VALUES ('4178', '117', 'Saldus, Saldus novads', '0840201', '1');
INSERT INTO `oc_zone` VALUES ('4179', '117', 'Saulkrasti, Saulkrastu novads', '0801413', '1');
INSERT INTO `oc_zone` VALUES ('4180', '117', 'Saulkrastu novads', '0801400', '1');
INSERT INTO `oc_zone` VALUES ('4181', '117', 'Seda, Strenču novads', '0941813', '1');
INSERT INTO `oc_zone` VALUES ('4182', '117', 'Sējas novads', '0809200', '1');
INSERT INTO `oc_zone` VALUES ('4183', '117', 'Sigulda, Siguldas novads', '0801615', '1');
INSERT INTO `oc_zone` VALUES ('4184', '117', 'Siguldas novads', '0801601', '1');
INSERT INTO `oc_zone` VALUES ('4185', '117', 'Skrīveru novads', '0328200', '1');
INSERT INTO `oc_zone` VALUES ('4186', '117', 'Skrunda, Skrundas novads', '0621209', '1');
INSERT INTO `oc_zone` VALUES ('4187', '117', 'Skrundas novads', '0621200', '1');
INSERT INTO `oc_zone` VALUES ('4188', '117', 'Smiltene, Smiltenes novads', '0941615', '1');
INSERT INTO `oc_zone` VALUES ('4189', '117', 'Smiltenes novads', '0941600', '1');
INSERT INTO `oc_zone` VALUES ('4190', '117', 'Staicele, Alojas novads', '0661017', '1');
INSERT INTO `oc_zone` VALUES ('4191', '117', 'Stende, Talsu novads', '0880215', '1');
INSERT INTO `oc_zone` VALUES ('4192', '117', 'Stopiņu novads', '0809600', '1');
INSERT INTO `oc_zone` VALUES ('4193', '117', 'Strenči, Strenču novads', '0941817', '1');
INSERT INTO `oc_zone` VALUES ('4194', '117', 'Strenču novads', '0941800', '1');
INSERT INTO `oc_zone` VALUES ('4195', '117', 'Subate, Ilūkstes novads', '0440815', '1');
INSERT INTO `oc_zone` VALUES ('4196', '117', 'Talsi, Talsu novads', '0880201', '1');
INSERT INTO `oc_zone` VALUES ('4197', '117', 'Talsu novads', '0880200', '1');
INSERT INTO `oc_zone` VALUES ('4198', '117', 'Tērvetes novads', '0468900', '1');
INSERT INTO `oc_zone` VALUES ('4199', '117', 'Tukuma novads', '0900200', '1');
INSERT INTO `oc_zone` VALUES ('4200', '117', 'Tukums, Tukuma novads', '0900201', '1');
INSERT INTO `oc_zone` VALUES ('4201', '117', 'Vaiņodes novads', '0649300', '1');
INSERT INTO `oc_zone` VALUES ('4202', '117', 'Valdemārpils, Talsu novads', '0880217', '1');
INSERT INTO `oc_zone` VALUES ('4203', '117', 'Valka, Valkas novads', '0940201', '1');
INSERT INTO `oc_zone` VALUES ('4204', '117', 'Valkas novads', '0940200', '1');
INSERT INTO `oc_zone` VALUES ('4205', '117', 'Valmiera', '0250000', '1');
INSERT INTO `oc_zone` VALUES ('4206', '117', 'Vangaži, Inčukalna novads', '0801817', '1');
INSERT INTO `oc_zone` VALUES ('4207', '117', 'Varakļāni, Varakļānu novads', '0701817', '1');
INSERT INTO `oc_zone` VALUES ('4208', '117', 'Varakļānu novads', '0701800', '1');
INSERT INTO `oc_zone` VALUES ('4209', '117', 'Vārkavas novads', '0769101', '1');
INSERT INTO `oc_zone` VALUES ('4210', '117', 'Vecpiebalgas novads', '0429300', '1');
INSERT INTO `oc_zone` VALUES ('4211', '117', 'Vecumnieku novads', '0409500', '1');
INSERT INTO `oc_zone` VALUES ('4212', '117', 'Ventspils', '0270000', '1');
INSERT INTO `oc_zone` VALUES ('4213', '117', 'Ventspils novads', '0980200', '1');
INSERT INTO `oc_zone` VALUES ('4214', '117', 'Viesīte, Viesītes novads', '0561815', '1');
INSERT INTO `oc_zone` VALUES ('4215', '117', 'Viesītes novads', '0561800', '1');
INSERT INTO `oc_zone` VALUES ('4216', '117', 'Viļaka, Viļakas novads', '0381615', '1');
INSERT INTO `oc_zone` VALUES ('4217', '117', 'Viļakas novads', '0381600', '1');
INSERT INTO `oc_zone` VALUES ('4218', '117', 'Viļāni, Viļānu novads', '0781817', '1');
INSERT INTO `oc_zone` VALUES ('4219', '117', 'Viļānu novads', '0781800', '1');
INSERT INTO `oc_zone` VALUES ('4220', '117', 'Zilupe, Zilupes novads', '0681817', '1');
INSERT INTO `oc_zone` VALUES ('4221', '117', 'Zilupes novads', '0681801', '1');
INSERT INTO `oc_zone` VALUES ('4222', '43', 'Arica y Parinacota', 'AP', '1');
INSERT INTO `oc_zone` VALUES ('4223', '43', 'Los Rios', 'LR', '1');
INSERT INTO `oc_zone` VALUES ('4224', '220', 'Kharkivs\'ka Oblast\'', '63', '1');
INSERT INTO `oc_zone` VALUES ('4225', '118', 'Beirut', 'LB-BR', '1');
INSERT INTO `oc_zone` VALUES ('4226', '118', 'Bekaa', 'LB-BE', '1');
INSERT INTO `oc_zone` VALUES ('4227', '118', 'Mount Lebanon', 'LB-ML', '1');
INSERT INTO `oc_zone` VALUES ('4228', '118', 'Nabatieh', 'LB-NB', '1');
INSERT INTO `oc_zone` VALUES ('4229', '118', 'North', 'LB-NR', '1');
INSERT INTO `oc_zone` VALUES ('4230', '118', 'South', 'LB-ST', '1');

-- ----------------------------
-- Table structure for `oc_zone_to_geo_zone`
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_zone_to_geo_zone
-- ----------------------------
INSERT INTO `oc_zone_to_geo_zone` VALUES ('1', '222', '0', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('2', '222', '3513', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('3', '222', '3514', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('4', '222', '3515', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('5', '222', '3516', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('6', '222', '3517', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('7', '222', '3518', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('8', '222', '3519', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('9', '222', '3520', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('10', '222', '3521', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('11', '222', '3522', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('12', '222', '3523', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('13', '222', '3524', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('14', '222', '3525', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('15', '222', '3526', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('16', '222', '3527', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('17', '222', '3528', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('18', '222', '3529', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('19', '222', '3530', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('20', '222', '3531', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('21', '222', '3532', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('22', '222', '3533', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('23', '222', '3534', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('24', '222', '3535', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('25', '222', '3536', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('26', '222', '3537', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('27', '222', '3538', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('28', '222', '3539', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('29', '222', '3540', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('30', '222', '3541', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('31', '222', '3542', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('32', '222', '3543', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('33', '222', '3544', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('34', '222', '3545', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('35', '222', '3546', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('36', '222', '3547', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('37', '222', '3548', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('38', '222', '3549', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('39', '222', '3550', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('40', '222', '3551', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('41', '222', '3552', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('42', '222', '3553', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('43', '222', '3554', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('44', '222', '3555', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('45', '222', '3556', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('46', '222', '3557', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('47', '222', '3558', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('48', '222', '3559', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('49', '222', '3560', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('50', '222', '3561', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('51', '222', '3562', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('52', '222', '3563', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('53', '222', '3564', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('54', '222', '3565', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('55', '222', '3566', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('56', '222', '3567', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('57', '222', '3568', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('58', '222', '3569', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('59', '222', '3570', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('60', '222', '3571', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('61', '222', '3572', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('62', '222', '3573', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('63', '222', '3574', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('64', '222', '3575', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('65', '222', '3576', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('66', '222', '3577', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('67', '222', '3578', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('68', '222', '3579', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('69', '222', '3580', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('70', '222', '3581', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('71', '222', '3582', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('72', '222', '3583', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('73', '222', '3584', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('74', '222', '3585', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('75', '222', '3586', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('76', '222', '3587', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('77', '222', '3588', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('78', '222', '3589', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('79', '222', '3590', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('80', '222', '3591', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('81', '222', '3592', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('82', '222', '3593', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('83', '222', '3594', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('84', '222', '3595', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('85', '222', '3596', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('86', '222', '3597', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('87', '222', '3598', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('88', '222', '3599', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('89', '222', '3600', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('90', '222', '3601', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('91', '222', '3602', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('92', '222', '3603', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('93', '222', '3604', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('94', '222', '3605', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('95', '222', '3606', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('96', '222', '3607', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('97', '222', '3608', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('98', '222', '3609', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('99', '222', '3610', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('100', '222', '3611', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('101', '222', '3612', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('102', '222', '3949', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('103', '222', '3950', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('104', '222', '3951', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('105', '222', '3952', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('106', '222', '3953', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('107', '222', '3954', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('108', '222', '3955', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES ('109', '222', '3972', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
