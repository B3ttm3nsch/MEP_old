/*
 Navicat Premium Data Transfer

 Source Server         : Audio4R
 Source Server Type    : MySQL
 Source Server Version : 50633
 Source Host           : 124.23.57.7
 Source Database       : copper_rico

 Target Server Type    : MySQL
 Target Server Version : 50633
 File Encoding         : utf-8

 Date: 05/17/2018 09:56:20 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `bsag_product_categories`
-- ----------------------------
DROP TABLE IF EXISTS `bsag_product_categories`;
CREATE TABLE `bsag_product_categories` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `bsag_product_categories`
-- ----------------------------
BEGIN;
INSERT INTO `bsag_product_categories` VALUES ('1', 'Film', '1', '2016-02-24 12:36:44', '2016-02-24 12:36:44'), ('2', 'Serie', '1', '2016-02-24 12:36:44', '2016-02-24 12:36:44'), ('3', 'Corp. Media', '1', '2016-02-24 12:36:44', '2016-02-24 12:36:44');
COMMIT;

-- ----------------------------
--  Table structure for `bsag_product_variations`
-- ----------------------------
DROP TABLE IF EXISTS `bsag_product_variations`;
CREATE TABLE `bsag_product_variations` (
  `id` smallint(5) unsigned NOT NULL COMMENT 'id from pipedrive',
  `product_id` smallint(6) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `needs_calculation` tinyint(1) unsigned DEFAULT '1',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `bsag_product_variations`
-- ----------------------------
BEGIN;
INSERT INTO `bsag_product_variations` VALUES ('3', '7', 'Standardablauf', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('5', '7', 'Pre-Lim', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('6', '9', 'Standardablauf', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('8', '9', 'Pre-Lim', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('9', '10', 'Standardablauf', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('11', '10', 'Pre-Lim', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('12', '11', 'Standardablauf', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('13', '11', 'Pre-Lim', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('14', '11', 'Acc', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('15', '12', 'Standardablauf', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('16', '12', 'Pre-Lim', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('17', '12', 'Acc', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('18', '13', 'Standardablauf', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('19', '13', 'Pre-Lim', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('20', '13', 'Acc', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('21', '9', 'Trailer', '0', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('22', '9', 'Marketing', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('23', '7', 'Trailer', '0', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('24', '7', 'Marketing', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('25', '10', 'Trailer', '0', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('26', '10', 'Marketing', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('27', '11', 'Trailer', '0', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('28', '11', 'Marketing', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('29', '12', 'Trailer', '0', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('30', '12', 'Marketing', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('31', '13', 'Trailer', '0', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06'), ('32', '13', 'Marketing', '1', '1', '2016-05-23 18:04:06', '2016-05-23 18:04:06');
COMMIT;

-- ----------------------------
--  Table structure for `bsag_products`
-- ----------------------------
DROP TABLE IF EXISTS `bsag_products`;
CREATE TABLE `bsag_products` (
  `id` smallint(5) unsigned NOT NULL COMMENT 'id value from pipedrive',
  `code` varchar(10) DEFAULT NULL COMMENT 'code value from pipedrive',
  `name` varchar(30) NOT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `segment` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `bsag_products`
-- ----------------------------
BEGIN;
INSERT INTO `bsag_products` VALUES ('3', 'UT_001', 'UT', null, null, null, '1', '2015-12-10 10:04:59', '2015-12-21 14:49:32'), ('4', 'BA_001', 'BAR', null, null, null, '1', '2015-12-10 10:06:08', '2015-12-21 14:52:21'), ('7', 'KP_001', 'KINO PREMIUM', null, 'Kino', 'Premium', '1', '2015-12-16 23:26:35', '2016-04-28 05:58:44'), ('9', 'KA_001', 'KINO ArtHouse', null, 'Kino', 'ArtHouse', '1', '2015-12-21 14:37:50', '2016-04-28 05:58:20'), ('10', 'KS_001', 'KINO STANDARD', null, 'Kino', 'Standard', '1', '2015-12-21 14:38:10', '2016-04-28 05:50:55'), ('11', 'TVP_001', 'TV PREMIUM', null, 'TV', 'Premium', '1', '2015-12-21 14:43:49', '2016-04-28 06:01:34'), ('12', 'TVS_001', 'TV STANDARD', null, 'TV', 'Standard', '1', '2015-12-21 14:44:35', '2016-04-28 05:57:33'), ('13', 'TVV_001', 'TV VALUE', null, 'TV', 'Value', '1', '2015-12-21 14:44:40', '2016-08-18 07:57:44'), ('14', 'CM_001', 'Corporate Media', null, 'CM', null, '1', '2015-12-21 14:45:50', '2015-12-21 14:52:05'), ('15', 'SDH_001', 'SDH', null, null, null, '1', '2015-12-21 14:47:01', '2015-12-21 14:50:57'), ('16', 'AD_001', 'AD', null, null, null, '1', '2015-12-22 09:53:22', '2015-12-22 12:20:56'), ('22', null, 'CM', null, null, null, '1', '2017-07-11 14:32:21', '2017-07-11 14:32:21');
COMMIT;

-- ----------------------------
--  Table structure for `bsag_project_partial_versions`
-- ----------------------------
DROP TABLE IF EXISTS `bsag_project_partial_versions`;
CREATE TABLE `bsag_project_partial_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL,
  `partial_id` int(10) unsigned NOT NULL,
  `version_id` smallint(5) unsigned DEFAULT NULL,
  `guid` varchar(100) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'Titel wurde noch nicht vergeben',
  `notes` varchar(2000) DEFAULT NULL,
  `duration` smallint(5) unsigned DEFAULT NULL,
  `duration_in_seconds` decimal(6,3) DEFAULT NULL,
  `offset_in_seconds` decimal(6,3) DEFAULT NULL,
  `framerate` float(4,2) DEFAULT '24.00',
  `word_count_source` int(11) DEFAULT NULL,
  `word_count_localized` int(11) DEFAULT NULL,
  `take_count` int(11) DEFAULT NULL,
  `talk_time` float(6,2) DEFAULT NULL,
  `video_asset_name` varchar(200) DEFAULT NULL,
  `video_asset_poster` varchar(200) DEFAULT NULL,
  `is_active` tinyint(1) unsigned DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iProject` (`project_id`) USING HASH,
  KEY `iFileGuid` (`video_asset_name`),
  KEY `iPartial` (`partial_id`),
  KEY `iVersion` (`version_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `bsag_project_partial_versions`
-- ----------------------------
BEGIN;
INSERT INTO `bsag_project_partial_versions` VALUES ('1', '1', '1', '1', '1111', 'Titel v1', null, null, null, null, '24.00', null, null, null, null, null, null, '1', null, null), ('2', '1', '2', '1', '2222', 'Titel v1', null, null, null, null, '24.00', null, null, null, null, null, null, '1', null, null), ('3', '1', '3', '1', '3333', 'Titel v1', null, null, null, null, '24.00', null, null, null, null, null, null, '1', null, null), ('4', '1', '4', '1', '4444', 'Titel v1', null, null, null, null, '24.00', null, null, null, null, null, null, '1', null, null), ('5', '1', '5', '1', '5555', 'Titel v1', null, null, null, null, '24.00', null, null, null, null, null, null, '1', null, null), ('6', '1', '6', '1', '6666', 'Titel v1', null, null, null, null, '24.00', null, null, null, null, null, null, '1', null, null), ('7', '1', '7', '1', '7777', 'Titel v1', null, null, null, null, '24.00', null, null, null, null, null, null, '1', null, null), ('8', '2', '8', '2', '11111', 'Titel v2', null, null, null, null, '24.00', null, null, null, null, null, null, '1', null, null), ('9', '2', '9', '2', '22222', 'Titel v2', null, null, null, null, '24.00', null, null, null, null, null, null, '1', null, null), ('10', '2', '10', '2', '33333', 'Titel v2', null, null, null, null, '24.00', null, null, null, null, null, null, '1', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `bsag_project_partials`
-- ----------------------------
DROP TABLE IF EXISTS `bsag_project_partials`;
CREATE TABLE `bsag_project_partials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL,
  `number` smallint(5) unsigned NOT NULL,
  `production_code` varchar(16) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'Titel wurde noch nicht vergeben',
  `title_localized1` varchar(255) DEFAULT NULL,
  `title_localized2` varchar(255) DEFAULT NULL,
  `title_localized3` varchar(255) DEFAULT NULL,
  `synopsis` varchar(2000) DEFAULT NULL,
  `synopsis_localized` varchar(2000) DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `imdb_id` varchar(10) DEFAULT NULL,
  `poster_url` varchar(500) DEFAULT NULL,
  `poster_file_name` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) unsigned DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iProject` (`project_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `bsag_project_partials`
-- ----------------------------
BEGIN;
INSERT INTO `bsag_project_partials` VALUES ('1', '1', '101', '0x1111', 'Titel 101', 'Titel 101 Übersetzung', null, null, null, null, null, null, null, null, '1', null, null), ('2', '1', '102', '0x2222', 'Titel 102', 'Titel 102 Übersetzung', null, null, null, null, null, null, null, null, '1', null, null), ('3', '1', '103', '0x3333', 'Titel 103', 'Titel 103 Übersetzung', null, null, null, null, null, null, null, null, '1', null, null), ('4', '1', '104', '0x4444', 'Titel 104', 'Titel 104 Übersetzung', null, null, null, null, null, null, null, null, '1', null, null), ('5', '1', '105', '0x5555', 'Titel 105', 'Titel 105 Übersetzung', null, null, null, null, null, null, null, null, '1', null, null), ('6', '1', '106', '0x6666', 'Titel 106', 'Titel 106 Übersetzung', null, null, null, null, null, null, null, null, '1', null, null), ('7', '1', '107', '0x7777', 'Titel 107', 'Titel 107 Übersetzung', null, null, null, null, null, null, null, null, '1', null, null), ('8', '2', '101', '0x1111', 'Titel 101', 'Titel 101 Übersetzung', null, null, null, null, null, null, null, null, '1', null, null), ('9', '2', '102', '0x2222', 'Titel 102', 'Titel 102 Übersetzung', null, null, null, null, null, null, null, null, '1', null, null), ('10', '2', '103', '0x3333', 'Titel 103', 'Titel 103 Übersetzung', null, null, null, null, null, null, null, null, '1', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `bsag_project_versions`
-- ----------------------------
DROP TABLE IF EXISTS `bsag_project_versions`;
CREATE TABLE `bsag_project_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `is_final` tinyint(1) DEFAULT '1',
  `is_deletable` tinyint(1) unsigned DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iProject` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `bsag_project_versions`
-- ----------------------------
BEGIN;
INSERT INTO `bsag_project_versions` VALUES ('1', '1', 'Final', '1', '0', '2018-04-08 14:20:27', '2018-04-08 14:20:27'), ('2', '2', 'Final', '1', '0', '2018-04-20 17:07:27', '2018-05-08 19:56:08');
COMMIT;

-- ----------------------------
--  Table structure for `tblClients`
-- ----------------------------
DROP TABLE IF EXISTS `tblClients`;
CREATE TABLE `tblClients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `sage_id` int(11) DEFAULT NULL,
  `bank_account_id` smallint(6) DEFAULT '1',
  `Name` varchar(150) DEFAULT NULL,
  `Manager` int(11) DEFAULT '0',
  `Phone1` varchar(30) DEFAULT NULL,
  `Phone2` varchar(30) DEFAULT NULL,
  `Phone3` varchar(30) DEFAULT NULL,
  `FAX` varchar(30) DEFAULT NULL,
  `Address1` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Postcode` varchar(11) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `Description` text,
  `Archived` tinyint(1) DEFAULT '0',
  `ContactName` varchar(255) DEFAULT NULL,
  `ContactEmail` varchar(255) DEFAULT NULL,
  `Colour` varchar(7) NOT NULL DEFAULT '',
  `language` varchar(5) DEFAULT 'D',
  `debtor_id` int(11) DEFAULT NULL,
  `ustid` varchar(20) DEFAULT NULL,
  `email_global` varchar(50) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_archived` (`Archived`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tblClients`
-- ----------------------------
BEGIN;
INSERT INTO `tblClients` VALUES ('1', '1000600', '1', 'Studiocanal GmbH', '4', null, null, null, null, 'Neue Promenade 4', null, 'Berlin', null, 'DE', '10178', null, null, '0', null, null, '', 'D', null, 'DE', null, null, '2018-03-09 11:22:38', '2018-04-20 17:12:08'), ('2', '1051000', '1', 'Deluxe Media Inc USA', '4', null, null, null, null, 'PO Box 10009', null, 'Burbank, CA ', null, 'US', '91510-0009', null, null, '0', null, 'FLD_AP@bydeluxe.com', '', 'E', null, null, 'FLD_AP@bydeluxe.com', null, '2018-03-09 11:22:39', '2018-05-14 23:22:12');
COMMIT;

-- ----------------------------
--  Table structure for `tblProjects`
-- ----------------------------
DROP TABLE IF EXISTS `tblProjects`;
CREATE TABLE `tblProjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` int(11) NOT NULL DEFAULT '0',
  `ProjectID` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Owner` int(11) DEFAULT '0',
  `URL` varchar(255) DEFAULT NULL,
  `DemoURL` varchar(255) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `ActualEndDate` date DEFAULT NULL,
  `Status` int(11) DEFAULT '0',
  `Priority` tinyint(1) NOT NULL DEFAULT '1',
  `Colour` varchar(7) DEFAULT '#EEEEEE',
  `Description` text,
  `TargetBudget` int(11) DEFAULT '0',
  `ActualBudget` int(11) DEFAULT '0',
  `Active` tinyint(1) DEFAULT '1',
  `product_id` smallint(6) DEFAULT NULL,
  `product_variation_id` smallint(6) DEFAULT NULL,
  `category_id` smallint(5) unsigned DEFAULT '1',
  `aka_title` varchar(100) DEFAULT NULL,
  `assets_path` varchar(500) DEFAULT NULL,
  `poster_url` varchar(500) DEFAULT NULL,
  `take_count` int(11) DEFAULT NULL,
  `word_count_source` int(11) DEFAULT NULL,
  `word_count_localized` int(11) DEFAULT NULL,
  `talk_time` float(5,2) DEFAULT NULL,
  `structure_created_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_sdate` (`StartDate`),
  KEY `idx_edate` (`EndDate`),
  KEY `idx_ClientID` (`ClientID`),
  KEY `idx_Active` (`Active`),
  KEY `iProduct` (`product_id`),
  KEY `iProductVariation` (`product_variation_id`),
  KEY `iCategory` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tblProjects`
-- ----------------------------
BEGIN;
INSERT INTO `tblProjects` VALUES ('1', '1', 'P18-8004', 'Glass Castle, The', '5', null, null, '2018-02-27', null, null, '0', '1', '#EEEEEE', null, '55000', '0', '1', '10', '9', '1', 'Glasschloss', null, null, null, null, null, null, null, '2018-03-09 14:31:38', '2018-04-20 17:09:55'), ('2', '2', 'P18-8005', 'Luke Cage, Staffel 2', '5', null, null, '2018-02-27', null, null, '0', '1', '#EEEEEE', null, '181207', '0', '1', '12', '15', '2', null, null, null, null, null, null, null, null, '2018-03-09 14:31:38', '2018-05-14 23:22:16');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
