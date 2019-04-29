/*
Navicat MySQL Data Transfer

Source Server         : myuser
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : no5user

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-04-15 16:27:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gwc
-- ----------------------------
DROP TABLE IF EXISTS `gwc`;
CREATE TABLE `gwc` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `wpid` varchar(2184) DEFAULT NULL,
  `times` varchar(255) DEFAULT NULL,
  `shulian` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gwc
-- ----------------------------
INSERT INTO `gwc` VALUES ('40', 'zlc000', '2', '2019/4/15/16:24', '1');
INSERT INTO `gwc` VALUES ('41', 'zlc000', '3', '2019/4/15/16:24', '1');
INSERT INTO `gwc` VALUES ('42', 'zlc000', '7', '2019/4/15/16:24', '1');
INSERT INTO `gwc` VALUES ('43', 'zlc000', '6', '2019/4/15/16:24', '1');
INSERT INTO `gwc` VALUES ('44', 'zlc000', '22', '2019/4/15/16:24', '1');
INSERT INTO `gwc` VALUES ('45', 'zlc000', '24', '2019/4/15/16:24', '1');
INSERT INTO `gwc` VALUES ('46', '', '3', '2019/4/15/16:25', '1');

-- ----------------------------
-- Table structure for sj
-- ----------------------------
DROP TABLE IF EXISTS `sj`;
CREATE TABLE `sj` (
  `﻿ids` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `isgood` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `imgsrc` varchar(255) DEFAULT NULL,
  `isok` varchar(255) DEFAULT NULL,
  `wupid` int(255) DEFAULT NULL,
  `guige` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿ids`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sj
-- ----------------------------
INSERT INTO `sj` VALUES ('1', 'Elizabeth Arden 雅顿绿茶香氛润肤乳 500ml', '145', '（7.8折）', '1200', '333', '2017/9/21', 'http://photo.no5.com.cn/product/mphoto/prod_6612_M_130603092613_14755379.jpg?v=140621', 'ok', '1', '3.3g');
INSERT INTO `sj` VALUES ('2', 'Clinique 倩碧温和液体洁面皂/洗面奶(适合混合偏干性肌肤6F37) 200ml', '148', '（8折）', '3000', '58586', '2017/9/22', 'http://photo.no5.com.cn/product/mphoto/prod_8959_M_131226105952_12047249.jpg?v=140621', 'ok', '2', '5.6g');
INSERT INTO `sj` VALUES ('3', 'Lancome 兰蔻新净透泡沫洁面乳/洗面奶(842012) 本周特价！ 125ml', '218', '（6.2折）', '1255', '5858', '2017/9/23', 'http://photo.no5.com.cn/product/mphoto/prod_19601_M_181213100935_96201148.jpg?v=140621', 'ok', '3', '4.3g');
INSERT INTO `sj` VALUES ('4', 'Kiehl’s科颜氏(契尔氏)高保湿洁面啫喱(洗面奶024192)?150ml', '159', '（8.8折）', '32', '66', '2017/9/24', 'http://photo.no5.com.cn/product/mphoto/prod_23940_M_121217094658_79669471.jpg?v=140621', 'ok', '4', '5.5g');
INSERT INTO `sj` VALUES ('5', 'Shiseido 资生堂新透白美肌亮润洗面膏/洗面奶?125ml', '238', '（7.4折）', '285', '58', '2017/9/25', 'http://photo.no5.com.cn/product/mphoto/prod_24032_M_140106173528_90789009.jpg?v=140621', 'ok', '5', '2.3g');
INSERT INTO `sj` VALUES ('6', 'Lancome 兰蔻新清滢洁面摩丝(泡沫洗面奶741385)?200ml', '218', '（6.2折）', '3838', '2524', '2017/9/26', 'http://photo.no5.com.cn/product/mphoto/prod_17983_M_181213101730_60443397.jpg?v=140621', 'ok', '6', '1.12g');
INSERT INTO `sj` VALUES ('7', 'Shiseido 资生堂盼丽风姿抗皱洁面膏/洗面奶(138124)?125ml', '258', '（7.4折）', '252', '353', '2017/9/27', 'http://photo.no5.com.cn/product/mphoto/prod_23380_M_180424104202_52228371.jpg?v=140621', 'ok', '7', '5.6g');
INSERT INTO `sj` VALUES ('8', 'Clinique 倩碧液体洁面皂-温和型(洗面奶中样6L79)?30ml', '25', '（7.1折）', '525', '25335', '2017/9/28', 'http://photo.no5.com.cn/product/mphoto/prod_27230_M_180226153322_64559150.jpg?v=140621', 'ok', '8', '8.9g');
INSERT INTO `sj` VALUES ('9', 'Estee Lauder 雅诗兰黛净莹柔肤洁面乳/洗面奶小样?30ml', '35', '（5.4折）', '582', '5868', '2017/9/29', 'http://photo.no5.com.cn/product/mphoto/prod_28574_M_171023125311_15001198.jpg?v=140621', 'ok', '9', '1.2g');
INSERT INTO `sj` VALUES ('10', '雅诗兰黛鲜活亮采红石榴二合一洁面乳/洗面奶（2018新 中样）新老包装随机', '65', '（9.7折）', '222', '3539', '2017/9/30', 'http://photo.no5.com.cn/product/mphoto/prod_28764_M_181224163032_97774940.jpg?v=140621', 'ok', '10', '2.3g');
INSERT INTO `sj` VALUES ('11', 'It°S SKIN伊思晶钻美肌蜗牛修复洗面奶(73047)?150ml', '88', '（5.5折）', '11', '69696', '2017/10/1', 'http://photo.no5.com.cn/product/mphoto/prod_30791_M_180226154435_97566200.jpg?v=140621', 'ok', '11', '6.3g');
INSERT INTO `sj` VALUES ('12', 'Clinique 倩碧液体洁面皂-温和型(洗面奶中样6L79 3支装)?30ml*3', '75', '（7.1折）', '338', '3535', '2017/10/2', 'http://photo.no5.com.cn/product/mphoto/prod_31041_M_151105100825_26777168.jpg?v=140621', 'ok', '12', '4.5g');
INSERT INTO `sj` VALUES ('13', 'CLVTIL筱维说 绵羊油洗面奶(00006) 运输不慎无塑封 限用：2019.05 清仓特价！?100g', '28', '（2.2折）', '28585', '7557', '2017/10/3', 'http://photo.no5.com.cn/product/mphoto/prod_31428_M_180525134720_36147133.jpg?v=140621', 'ok', '13', '2.3g');
INSERT INTO `sj` VALUES ('14', 'A.H.C(AHC) 高浓度B5高效水合洗面奶(314263)?180ml', '88', '（5.5折）', '252', '252441', '2017/10/4', 'http://photo.no5.com.cn/product/mphoto/prod_31058_M_151109094236_30518013.jpg?v=140621', 'ok', '14', '2.3g');
INSERT INTO `sj` VALUES ('15', 'Sulwhasoo 雪花秀顺行柔和洁颜泡沫/洗面奶小样?50ml', '55', '（6.9折）', '698', '586', '2017/10/5', 'http://photo.no5.com.cn/product/mphoto/prod_31427_M_160329133808_42424446.jpg?v=140621', 'ok', '15', '5.6g');
INSERT INTO `sj` VALUES ('16', 'It°S SKIN伊思红参蜗牛洗面奶(021546)?150ml', '89', '（5.1折）', '44', '576', '2017/10/6', 'http://photo.no5.com.cn/product/mphoto/prod_33873_M_170607095913_33036629.jpg?v=140621', 'ok', '16', '2.3g');
INSERT INTO `sj` VALUES ('17', 'CPB肌肤之钥光采洗面膏/泡沫洗面奶(湿润型132252)?110ml', '398', '（8折）', '586', '547', '2017/10/7', 'http://photo.no5.com.cn/product/mphoto/prod_33876_M_170609101943_36074348.jpg?v=140621', 'ok', '17', '5.6g');
INSERT INTO `sj` VALUES ('18', 'CPB肌肤之钥光采洗面膏/泡沫洗面奶(清爽型132269）?110ml', '398', '（8折）', '868', '5222', '2017/10/8', 'http://photo.no5.com.cn/product/mphoto/prod_33622_M_181211103132_91709114.jpg?v=140621', 'ok', '18', '98.3g');
INSERT INTO `sj` VALUES ('19', '雅诗兰黛鲜活亮采红石榴二合一洁面乳/洗面奶（2018新 中样）?30ml*3', '178', '（8.9折）', '477', '174725', '2017/10/9', 'http://photo.no5.com.cn/product/mphoto/prod_33781_M_170425154515_13842140.jpg?v=140621', 'ok', '19', '5.6g');
INSERT INTO `sj` VALUES ('20', 'Clinique 倩碧都市净透洁颜粉/洗颜粉（800802）限期19.07 本周特价！?50g', '95', '（4折）', '242', '5889', '2017/10/10', 'http://photo.no5.com.cn/product/mphoto/prod_33820_M_170511112010_70307747.jpg?v=140621', 'ok', '20', '2.3g');
INSERT INTO `sj` VALUES ('21', 'LOREAL 欧莱雅 清润葡萄籽水嫩洁面乳/洗面奶（国产054482）?125ml', '79', '（7.7折）', '963', '577', '2017/10/11', 'http://photo.no5.com.cn/product/mphoto/prod_34310_M_171215093649_68221718.jpg?v=140621', 'ok', '21', '4.5g');
INSERT INTO `sj` VALUES ('22', 'Estee Lauder 雅诗兰黛肌透修护洁面乳（小棕瓶洗面奶中样）?50ml', '48', '（3折）', '57', '538', '2017/10/12', 'http://photo.no5.com.cn/product/mphoto/prod_34312_M_171215135615_92225471.jpg?v=140621', 'ok', '22', '5.6g');
INSERT INTO `sj` VALUES ('23', 'Estee Lauder 雅诗兰黛肌透修护洁面乳（小棕瓶洗面奶中样2个装）?50ml*2', '98', '（3.2折）', '223873', '2825', '2017/10/13', 'http://photo.no5.com.cn/product/mphoto/prod_24149_M_141202093007_62879616.jpg?v=140621', 'ok', '23', '2.3g');
INSERT INTO `sj` VALUES ('24', 'Estee Lauder 雅诗兰黛晶透净颜洁面乳-洗面奶小样?30ml', '55', '（6.5折）', '57577', '58858', '2017/10/14', 'http://photo.no5.com.cn/product/mphoto/prod_3192_M_130910152250_80155616.jpg?v=140621', 'ok', '24', '5.6g');

-- ----------------------------
-- Table structure for useres
-- ----------------------------
DROP TABLE IF EXISTS `useres`;
CREATE TABLE `useres` (
  `﻿id` int(255) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `pasword` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `online` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿id`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useres
-- ----------------------------
INSERT INTO `useres` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013', 'zlc000', 'zlc000', '123456@qq.com', '{\"year\":2019,\"month\":4,\"day\":15,\"hours\":16,\"minutes\":23,\"seconds\":39,\"millisecond\":768}', '0');

-- ----------------------------
-- Table structure for xqy
-- ----------------------------
DROP TABLE IF EXISTS `xqy`;
CREATE TABLE `xqy` (
  `﻿id` varchar(255) NOT NULL,
  `shangpinid` varchar(255) DEFAULT NULL,
  `wpbh` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `english` varchar(255) DEFAULT NULL,
  `no5jia` varchar(255) DEFAULT NULL,
  `shicanjia` varchar(255) DEFAULT NULL,
  `shuspp` varchar(255) DEFAULT NULL,
  `ssfl` varchar(255) DEFAULT NULL,
  `pf` varchar(255) DEFAULT NULL,
  `pl` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `imsg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xqy
-- ----------------------------
INSERT INTO `xqy` VALUES ('1', '1', '145223', 'Shiseido 资生堂盼丽风姿抗皱洁面膏/洗面奶(138124)?125ml', 'sfdfdf', '145', '225', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '2', '42', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('2', '2', '145224', 'Clinique 倩碧液体洁面皂-温和型(洗面奶中样6L79)?30ml', 'fdsfgdsgs', '148', '242', 'Clinique 倩碧?→?四步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '5', '242', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('3', '3', '145225', 'Estee Lauder 雅诗兰黛净莹柔肤洁面乳/洗面奶小样?30ml', 'tgrthtyj', '218', '252', 'Clinique 倩碧?→?五步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '4', '24', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('4', '4', '145226', '雅诗兰黛鲜活亮采红石榴二合一洁面乳/洗面奶（2018新 中样）新老包装随机', 'grgreg', '159', '242', 'Clinique 倩碧?→?六步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '2', '525', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('5', '5', '145227', 'It°S SKIN伊思晶钻美肌蜗牛修复洗面奶(73047)?150ml', 'htrhrthr', '238', '242', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '3', '525', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('6', '6', '145228', 'Clinique 倩碧液体洁面皂-温和型(洗面奶中样6L79 3支装)?30ml*3', 'gergreg', '218', '585', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '3', '24', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('7', '7', '145229', 'CLVTIL筱维说 绵羊油洗面奶(00006) 运输不慎无塑封 限用：2019.05 清仓特价！?100g', 'gregrg', '258', '575', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '5', '353', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('8', '8', '145230', 'A.H.C(AHC) 高浓度B5高效水合洗面奶(314263)?180ml', 'rhgrgeerg', '25', '422', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '5', '52', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('9', '9', '145231', 'Sulwhasoo 雪花秀顺行柔和洁颜泡沫/洗面奶小样?50ml', 'grgrege', '35', '252', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '2', '2424', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('10', '10', '145232', 'It°S SKIN伊思红参蜗牛洗面奶(021546)?150ml', 'efwfew', '65', '2424', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '5', '535', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('11', '11', '145233', 'CPB肌肤之钥光采洗面膏/泡沫洗面奶(湿润型132252)?110ml', 'dwfewfg', '88', '255', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '3', '2424', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('12', '12', '145234', 'CPB肌肤之钥光采洗面膏/泡沫洗面奶(清爽型132269）?110ml', 'fegwg', '75', '24', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '5', '2424', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('13', '13', '145235', '雅诗兰黛鲜活亮采红石榴二合一洁面乳/洗面奶（2018新 中样）?30ml*3', 'gregrege', '28', '25', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '4', '2424', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('14', '14', '145236', 'Clinique 倩碧都市净透洁颜粉/洗颜粉（800802）限期19.07 本周特价！?50g', 'utytyuyt', '88', '344', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '2', '24', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('15', '15', '145237', 'LOREAL 欧莱雅 清润葡萄籽水嫩洁面乳/洗面奶（国产054482）?125ml', 'jyjyt', '75', '422', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '3', '343', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('16', '16', '145238', 'Estee Lauder 雅诗兰黛肌透修护洁面乳（小棕瓶洗面奶中样）?50ml', 'htrhhbtr', '28', '424', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '3', '24', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('17', '17', '145239', 'Estee Lauder 雅诗兰黛肌透修护洁面乳（小棕瓶洗面奶中样2个装）?50ml*2', 'trhtrhrt', '88', '4242', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '2', '424', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('18', '18', '145240', 'Estee Lauder 雅诗兰黛晶透净颜洁面乳-洗面奶小样?30ml', 'htrjtrj', '55', '4242', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '3', '2424', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('19', '19', '145241', 'Shiseido 资生堂新透白美肌亮润洗面膏/洗面奶?125ml', 'gereh', '89', '2424', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '3', '3443', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('20', '20', '145242', 'Lancome 兰蔻新清滢洁面摩丝(泡沫洗面奶741385)?200ml', 'htrhtr', '398', '23', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '2', '343', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('21', '21', '145243', 'Shiseido 资生堂盼丽风姿抗皱洁面膏/洗面奶(138124)?125ml', 'jtyjuyuk', '398', '25', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '3', '2424', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('22', '22', '145244', 'Clinique 倩碧液体洁面皂-温和型(洗面奶中样6L79)?30ml', 'iuyiuiyu', '178', '255', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '5', '343', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');
INSERT INTO `xqy` VALUES ('23', '23', '145245', 'Estee Lauder 雅诗兰黛净莹柔肤洁面乳/洗面奶小样?30ml', 'oiuoiu', '95', '25', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '2', '3424', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114316_16142403.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920175.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170710_96845222.jpg', 'http://photo.no5.com.cn/product/detail/prod_3117_P_160929171257_62028175.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1609/ppd_160929_171054_89415718.jpg');
INSERT INTO `xqy` VALUES ('24', '24', '145246', '雅诗兰黛鲜活亮采红石榴二合一洁面乳/洗面奶（2018新 中样）新老包装随机', 'kjhkjhkh', '79', '42', 'Clinique 倩碧?→?三步曲系列', '面部护理?→?洁肤步骤?→?洁面皂', '5', '24', 'http://photo.no5.com.cn/product/sPhoto/prod_3117_S_160929170645_11605049.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_160919170942_14920174.jpg', 'http://photo.no5.com.cn/product/sPhoto/prod_2593_S_130130114345_80181709.jpg', 'http://photo.no5.com.cn/product/detail/prod_19601_P_170418114918_46764046.jpg,http://photo.no5.com.cn/product/detail/ppd_month_1704/ppd_170418_114903_10205666.jpg');

-- ----------------------------
-- Table structure for xqypj
-- ----------------------------
DROP TABLE IF EXISTS `xqypj`;
CREATE TABLE `xqypj` (
  `﻿id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `pinjia` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `xingxing` varchar(255) DEFAULT NULL,
  `huiyuan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xqypj
-- ----------------------------
INSERT INTO `xqypj` VALUES ('1', '洗完以后滑滑的 说实话喜欢固体涩涩那种 但是觉得这个方便 味道轻我喜欢 控油', '2017/8/5', 'zl3232', '3', '[超级会员]');
INSERT INTO `xqypj` VALUES ('2', '第一次用倩碧家的东东，洗的时候感觉凉凉的，洗完之后不会觉得皮肤干涩紧绷，挺舒服的，灰常喜欢啊。', '2017/8/5', 'ss5222', '2', '[标准会员]');
INSERT INTO `xqypj` VALUES ('3', '用其他洗面奶的时候不小心弄到眼睛里就很疼。这个就完全不会。而且泡泡很细 自我感觉洗的很干净。没有其他香味让人很放心。', '2017/7/5', 'ssf552', '4', '[超级会员]');
INSERT INTO `xqypj` VALUES ('4', '洗完很清爽，因为是带滋润的，所以洗完感觉脸上还有点滑，搭配水那些整体还是不错！因为个人T区较油毛孔粗大，希望坚持使用下来能改变下水油平衡~~~~', '2017/6/5', 'grgr855', '5', '[标准会员]');
INSERT INTO `xqypj` VALUES ('5', '很棒的产品，不愧是明星产品，有保障，过年前的物流也不错，发货很快', '2017/6/15', 'ew855', '5', '[标准会员]');
INSERT INTO `xqypj` VALUES ('6', '什么垃圾产品 ，非常不好用', '2018/6/9', 'pp123', '1', '[标准会员]');
INSERT INTO `xqypj` VALUES ('7', '很棒的产品，不愧是明星产品，有保障，过年前的物流也不错，发货很快', '2017/6/5', 'ddd1452', '4', '[超级会员]');
INSERT INTO `xqypj` VALUES ('8', '东西收到了哦 包装很完整 没有任何破损 客服小姐姐也很热情回复的很及时 很大瓶 喜欢的小可爱可以入手了哦', '2019年04月04日 21:10', 'ggg323', '4', '[超级会员]');
INSERT INTO `xqypj` VALUES ('9', '个人情况：我今年20，这款薏仁水真的吹爆！好用！补水！容易上妆！好吸收！ 而且在虫虫家买的质量有保障，还比别家的便宜！推荐！', '2019年04月05日 17:33', 'jj412', '3', '[超级会员]');
INSERT INTO `xqypj` VALUES ('10', '滋润及保湿：不油腻 吸收情况：很好吸收啊，非常喜欢', '2019年04月05日 22:23', 'ljhh6757', '3', '[超级会员]');
INSERT INTO `xqypj` VALUES ('11', '便宜大碗，每次在虫虫家买东西都送我小礼物，好开心啊', '2019年04月04日 18:06', 'kku14242', '3', '[超级会员]');
INSERT INTO `xqypj` VALUES ('12', '特别棒无数次购买', '2019年04月04日 18:45', 'hhg4124', '4', '[超级会员]');
INSERT INTO `xqypj` VALUES ('13', '回购的第二瓶用着不错，平价中的***，湿敷丝毫不心疼，补水效果可以，上妆前补水也是超给力', '2019年04月06日 13:21', 'uyu14242', '3', '[标准会员]');
INSERT INTO `xqypj` VALUES ('14', '洗完很清爽，因为是带滋润的，所以洗完感觉脸上还有点滑，搭配水那些整体还是不错！因为个人T区较油毛孔粗大，希望坚持使用下来能改变下水油平', '2019年04月08日 20:06', 'jyj5435', '2', '[标准会员]');
INSERT INTO `xqypj` VALUES ('15', '很喜欢，非常好哟，送了一些小礼品，补水效果也很好啊极力推荐哦', '2019年04月04日 18:45', 'htht1155', '3', '[标准会员]');
INSERT INTO `xqypj` VALUES ('16', '很棒的产品，不愧是明星产品，有保障，过年前的物流也不错，发货很快', '2017/6/5', 'grgr2255', '4', '[超级会员]');
INSERT INTO `xqypj` VALUES ('17', '回购的第二瓶用着不错，平价中的***，湿敷丝毫不心疼，补水效果可以，上妆前补水也是超给力', '2019年04月06日 13:21', 'htrhrth5522', '5', '[超级会员]');
INSERT INTO `xqypj` VALUES ('18', '很喜欢，非常好哟，送了一些小礼品，补水效果也很好啊极力推荐哦', '2019年04月05日 22:2', 'gregre55222', '3', '[大众会员]');
INSERT INTO `xqypj` VALUES ('19', '东西收到了哦 包装很完整 没有任何破损 客服小姐姐也很热情回复的很及时 很大瓶 喜欢的小可爱可以入手了哦', '2019年04月06日 13:21', 'fwewf55566f', '4', '[标准会员]');
INSERT INTO `xqypj` VALUES ('20', '很喜欢，非常好哟，送了一些小礼品，补水效果也很好啊极力推荐哦', '2019年04月05日 22:2', 'fewgw522', '2', '[标准会员]');
INSERT INTO `xqypj` VALUES ('21', '第一次用倩碧家的东东，洗的时候感觉凉凉的，洗完之后不会觉得皮肤干涩紧绷，挺舒服的，灰常喜欢啊。', '2019年04月05日 22:23', 'grggr45512', '4', '[超级会员]');
INSERT INTO `xqypj` VALUES ('22', '很喜欢，非常好哟，送了一些小礼品，补水效果也很好啊极力推荐哦', '2019年04月08日 20:0', 'grgr5215', '2', '[超级会员]');
INSERT INTO `xqypj` VALUES ('23', '东西收到了哦 包装很完整 没有任何破损 客服小姐姐也很热情回复的很及时 很大瓶 喜欢的小可爱可以入手了哦', '2019年04月04日 21:10', 'fwe52232', '1', '[超级会员]');
SET FOREIGN_KEY_CHECKS=1;
