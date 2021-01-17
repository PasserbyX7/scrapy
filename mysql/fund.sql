/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : fund

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 18/01/2021 03:55:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fund
-- ----------------------------
DROP TABLE IF EXISTS `fund`;
CREATE TABLE `fund`  (
  `id` int(11) NOT NULL,
  `fund_manager_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `drawdown` double NULL DEFAULT NULL,
  `sharpe_ratio` double NULL DEFAULT NULL,
  `volatility` double NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fund
-- ----------------------------
INSERT INTO `fund` VALUES (136, 1403, '民生加银策略精选混合A', 43.78, 0.99, 25.14, '2013-06-06');
INSERT INTO `fund` VALUES (263, 23172, '工银信息产业混合', 69.39, 0.72, 33.89, '2013-11-10');
INSERT INTO `fund` VALUES (294, 105656, '华安生态优先混合', 57.18, 0.82, 31.39, '2013-11-27');
INSERT INTO `fund` VALUES (336, 65018, '农银研究精选', 65.49, 0.59, 31.42, '2013-11-04');
INSERT INTO `fund` VALUES (390, 388, '华商优势行业', 25.24, 1.13, 21.37, '2013-12-10');
INSERT INTO `fund` VALUES (409, 104536, '鹏华环保产业股票', 49.12, 0.8, 26.91, '2014-03-06');
INSERT INTO `fund` VALUES (541, 79918, '华商创新成长灵活配置', 70.13, 0.64, 29.22, '2014-03-17');
INSERT INTO `fund` VALUES (601, 89782, '华宝创新优选混合', 59.68, 0.52, 32.77, '2014-05-13');
INSERT INTO `fund` VALUES (609, 412, '华商新量化灵活配置混合', 50.74, 0.75, 28.42, '2014-06-04');
INSERT INTO `fund` VALUES (746, 1072, '招商行业精选股票', 52.22, 0.8, 30.97, '2014-09-02');
INSERT INTO `fund` VALUES (854, 1305, '鹏华养老产业', 56.54, 0.81, 29.49, '2014-12-01');
INSERT INTO `fund` VALUES (924, 43775, '宝盈先进制造混合A', 58.74, 0.6, 33.2, '2014-12-16');
INSERT INTO `fund` VALUES (991, 1159, '工银战略转型股票', 52.59, 0.61, 31.67, '2015-02-15');
INSERT INTO `fund` VALUES (1009, 558, '上投摩根安全战略股票', 59.46, 0.42, 30.34, '2015-02-25');
INSERT INTO `fund` VALUES (1053, 743, '南方创新经济', 39.48, 0.81, 23.36, '2015-03-23');
INSERT INTO `fund` VALUES (1054, 210, '工银新金融股票', 47.64, 0.62, 28.37, '2015-03-18');
INSERT INTO `fund` VALUES (1102, 168, '前海开源国家比较优势混合', 34.44, 1.26, 20.71, '2015-05-07');
INSERT INTO `fund` VALUES (1104, 145258, '华安新丝路主题股票', 35.75, 0.78, 22.5, '2015-04-08');
INSERT INTO `fund` VALUES (1126, 48029, '上投摩根卓越制造股票', 58.35, 0.32, 31.65, '2015-04-13');
INSERT INTO `fund` VALUES (1156, 94218, '申万菱信新能源汽车混合', 36.99, 0.68, 22.17, '2015-05-06');
INSERT INTO `fund` VALUES (1216, 865, '易方达新收益混合A', 16.94, 2.06, 12.2, '2015-04-16');
INSERT INTO `fund` VALUES (1222, 16839, '鹏华外延成长混合', 36.9, 0.67, 22.64, '2015-05-18');
INSERT INTO `fund` VALUES (1224, 55942, '中邮新思路灵活配置混合', 18.53, 1.21, 18.99, '2015-11-10');
INSERT INTO `fund` VALUES (1230, 23133, '鹏华医药科技', 60.06, 0.1, 30.82, '2015-06-01');
INSERT INTO `fund` VALUES (1245, 496, '工银生态环境股票', 49.19, 0.41, 23.17, '2015-06-01');
INSERT INTO `fund` VALUES (1268, 525, '富国国家安全主题混合', 57.48, 0.08, 31.27, '2015-05-13');
INSERT INTO `fund` VALUES (1445, 145218, '华安国企改革主题灵活配置混合', 31.03, 0.92, 24.43, '2015-06-28');
INSERT INTO `fund` VALUES (1508, 119622, '富国新动力灵活配置混合A', 32.73, 1.37, 20.54, '2015-08-03');
INSERT INTO `fund` VALUES (1510, 119622, '富国新动力灵活配置混合C', 32.9, 1.34, 20.55, '2015-08-03');
INSERT INTO `fund` VALUES (1538, 48029, '上投摩根科技前沿灵活配置混合', 30.64, 0.94, 22.23, '2015-07-08');
INSERT INTO `fund` VALUES (1605, 2322, '国富沪港深成长精选股票', 25.42, 0.98, 20.57, '2016-01-19');
INSERT INTO `fund` VALUES (1606, 65018, '农银工业4.0混合', 40.54, 0.92, 26.41, '2015-08-12');
INSERT INTO `fund` VALUES (1616, 19394, '嘉实环保低碳股票', 46.77, 1.07, 23.96, '2015-12-29');
INSERT INTO `fund` VALUES (1643, 183187, '汇丰晋信智造先锋股票A', 31.73, 0.86, 25.22, '2015-09-29');
INSERT INTO `fund` VALUES (1644, 183187, '汇丰晋信智造先锋股票C', 31.88, 0.83, 25.21, '2015-09-29');
INSERT INTO `fund` VALUES (1679, 168, '前海开源中国稀缺资产混合A', 37.97, 1.11, 20.79, '2015-09-09');
INSERT INTO `fund` VALUES (1694, 764, '华安沪港深外延增长混合', 29.3, 1.67, 20.24, '2016-03-08');
INSERT INTO `fund` VALUES (1695, 73538, '泓德泓业混合', 21.27, 1.3, 13.72, '2015-08-26');
INSERT INTO `fund` VALUES (1702, 79716, '东方创新科技混合', 44.94, 0.59, 26.08, '2015-09-07');
INSERT INTO `fund` VALUES (1705, 73538, '泓德战略转型股票', 28.79, 1.13, 18.96, '2015-11-09');
INSERT INTO `fund` VALUES (1790, 147600, '国泰智能汽车股票', 38.06, 0.93, 27.89, '2017-07-31');
INSERT INTO `fund` VALUES (1811, 258, '中欧明睿新常态混合A', 21.71, 1.17, 20.59, '2016-03-02');
INSERT INTO `fund` VALUES (1832, 863, '易方达瑞恒灵活配置混合', 31.8, 1.49, 24.2, '2018-01-09');
INSERT INTO `fund` VALUES (1856, 98203, '易方达环保主题混合', 22.06, 1.83, 19.42, '2017-06-01');
INSERT INTO `fund` VALUES (1857, 152403, '易方达现代服务业混合', 33.88, 1.27, 23.83, '2017-11-21');
INSERT INTO `fund` VALUES (1869, 8, '招商制造业混合A', 30.39, 1.17, 18.55, '2015-12-01');
INSERT INTO `fund` VALUES (1874, 168, '前海开源沪港深价值精选混合', 20.12, 1.31, 20.68, '2016-11-17');
INSERT INTO `fund` VALUES (1985, 191, '富国低碳新经济混合', 30.45, 1.13, 22.38, '2015-12-17');
INSERT INTO `fund` VALUES (2079, 168, '前海开源中国稀缺资产混合C', 34.53, 1.19, 21.22, '2015-11-18');
INSERT INTO `fund` VALUES (2148, 60, '国寿安保稳惠混合', 23.75, 1.29, 15.19, '2015-11-25');
INSERT INTO `fund` VALUES (2168, 19394, '嘉实智能汽车股票', 40.76, 1.18, 23.23, '2016-02-03');
INSERT INTO `fund` VALUES (2190, 65018, '农银新能源主题', 41.65, 0.94, 23.47, '2016-03-28');
INSERT INTO `fund` VALUES (2307, 1247, '银华多元视野灵活配置混合', 23.65, 1.47, 16.1, '2016-05-18');
INSERT INTO `fund` VALUES (2340, 184069, '富国价值优势混合', 32.22, 1.45, 19.17, '2016-04-07');
INSERT INTO `fund` VALUES (2446, 1155, '广发利鑫灵活配置混合A', 13.55, 1.86, 12.16, '2016-03-20');
INSERT INTO `fund` VALUES (2482, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fund` VALUES (2563, 80093, '泓德泓汇混合', 19.4, 1.43, 17.75, '2016-11-15');
INSERT INTO `fund` VALUES (2593, 136, '富国美丽中国混合', 19.45, 1.76, 14.92, '2016-05-18');
INSERT INTO `fund` VALUES (2620, 734, '中邮未来新蓝筹混合', 19.05, 1.77, 20.03, '2017-08-03');
INSERT INTO `fund` VALUES (2669, 79918, '华商万众创新混合', 41.7, 0.88, 21.2, '2016-06-27');
INSERT INTO `fund` VALUES (2846, 73538, '泓德泓华混合', 22.26, 1.53, 18.53, '2016-11-30');
INSERT INTO `fund` VALUES (3516, 75656, '国泰融安多策略灵活配置混合', 21.68, 1.62, 23.11, '2017-07-02');
INSERT INTO `fund` VALUES (3834, 68693, '华夏能源革新股票', 40.05, 1.06, 30.53, '2017-06-06');
INSERT INTO `fund` VALUES (3853, 142576, '金鹰信息产业股票A', 25.05, 1.49, 23.63, '2017-03-09');
INSERT INTO `fund` VALUES (3961, 44, '易方达瑞程A', 26.78, 1.61, 19.78, '2016-12-14');
INSERT INTO `fund` VALUES (3984, 19394, '嘉实新能源新材料股票A', 41.84, 1.23, 24.16, '2017-03-15');
INSERT INTO `fund` VALUES (4241, 258, '中欧时代先锋股票C', 22.03, 1.52, 20.99, '2017-01-18');
INSERT INTO `fund` VALUES (4263, 77293, '华安沪港深机会灵活配置混合', 18.79, 1.5, 22.26, '2017-05-09');
INSERT INTO `fund` VALUES (4374, 60191, '华泰保兴吉年丰混合发起A', 34.08, 1.24, 23.32, '2017-03-23');
INSERT INTO `fund` VALUES (5028, 580, '鹏华研究精选灵活配置混合', 26.55, 1.41, 21.6, '2017-10-08');
INSERT INTO `fund` VALUES (5136, 764, '华安幸福生活混合', 27.57, 1.6, 20.87, '2017-10-25');
INSERT INTO `fund` VALUES (5251, 1247, '银华多元动力灵活配置混合', 20.24, 1.46, 19.13, '2017-12-13');
INSERT INTO `fund` VALUES (5268, 16839, '鹏华优势企业', 29.99, 1.28, 23.67, '2017-11-28');
INSERT INTO `fund` VALUES (40011, 77293, '华安核心优选混合', 39.32, 0.74, 21.23, '2008-10-21');
INSERT INTO `fund` VALUES (40035, 764, '华安逆向策略混合', 44, 1.05, 26.67, '2012-08-15');
INSERT INTO `fund` VALUES (40046, 137955, '华安纳斯达克100指数', 25.02, 1.09, 15.99, '2013-08-01');
INSERT INTO `fund` VALUES (70021, 95943, '嘉实主题新动力混合', 50.93, 0.37, 29.15, '2010-12-06');
INSERT INTO `fund` VALUES (90018, 159014, '大成新锐产业混合', 48.89, 0.73, 25.88, '2012-03-19');
INSERT INTO `fund` VALUES (100060, 93, '富国高新技术产业混合', 38.67, 0.83, 28.14, '2012-06-26');
INSERT INTO `fund` VALUES (110015, 1324, '易方达行业领先混合', 53.59, 0.57, 26.89, '2009-03-25');
INSERT INTO `fund` VALUES (160611, 16839, '鹏华优质治理混合(LOF)', 61.32, 0.15, 23.9, '2007-04-24');
INSERT INTO `fund` VALUES (161706, 1072, '招商优质成长混合(LOF)', 62.93, 0.61, 27.91, '2005-11-16');
INSERT INTO `fund` VALUES (163411, 472, '兴全精选', 24.9, 1.51, 23.07, '2017-09-05');
INSERT INTO `fund` VALUES (166301, 388, '华商新趋势优选灵活配置混合', 42.02, 0.64, 29.09, '2015-05-13');
INSERT INTO `fund` VALUES (168002, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fund` VALUES (213001, 43775, '宝盈鸿利收益灵活配置混合A', 62.32, 0.56, 24.3, '2002-10-07');
INSERT INTO `fund` VALUES (217010, 704, '招商大盘蓝筹混合', 49.46, 0.57, 22.45, '2008-06-18');
INSERT INTO `fund` VALUES (260104, 649, '景顺长城内需增长混合', 62.32, 0.75, 26.65, '2004-06-24');
INSERT INTO `fund` VALUES (260109, 649, '景顺长城内需贰号混合', 61.88, 0.63, 27.48, '2006-10-10');
INSERT INTO `fund` VALUES (270021, 79099, '广发聚瑞混合A', 56.98, 0.46, 27.38, '2009-06-15');
INSERT INTO `fund` VALUES (360006, 933, '光大保德信新增长混合', 65.47, 0.54, 27.98, '2006-09-13');
INSERT INTO `fund` VALUES (360016, 122113, '光大保德信行业轮动混合', 47.49, 0.72, 25.8, '2012-02-14');
INSERT INTO `fund` VALUES (370027, 48029, '上投摩根智选30混合', 55.83, 0.62, 30.59, '2013-03-05');
INSERT INTO `fund` VALUES (450011, 1536, '国富研究精选混合', 65.78, 0.39, 31.89, '2012-05-21');
INSERT INTO `fund` VALUES (481010, 1011, '工银中小盘混合', 62.46, 0.36, 29.53, '2010-02-09');
INSERT INTO `fund` VALUES (481015, 1011, '工银主题策略混合', 67.77, 0.53, 32.27, '2011-10-23');
INSERT INTO `fund` VALUES (519089, 216, '新华优选成长混合', 53.77, 0.53, 26.96, '2008-07-24');
INSERT INTO `fund` VALUES (519133, 819, '海富通改革驱动混合', 30.45, 1.36, 19.39, '2016-04-27');
INSERT INTO `fund` VALUES (519698, 278347, '交银先锋混合', 57.91, 0.31, 29.97, '2009-04-09');
INSERT INTO `fund` VALUES (519704, 120364, '交银先进制造混合', 44.78, 0.81, 25.5, '2011-06-21');
INSERT INTO `fund` VALUES (519714, 12248, '交银消费新驱动股票', 26.57, 1.06, 20.72, '2015-06-30');
INSERT INTO `fund` VALUES (519727, 88043, '交银成长30混合', 54.79, 0.6, 28.47, '2013-06-04');
INSERT INTO `fund` VALUES (519915, 75303, '富国消费主题混合', 58.91, 0.55, 30.19, '2014-12-11');
INSERT INTO `fund` VALUES (540008, 183187, '汇丰晋信低碳先锋', 68.27, 0.34, 31.54, '2010-06-07');
INSERT INTO `fund` VALUES (570001, 646, '诺德价值优势混合', 63.42, 0.37, 25.26, '2007-04-18');
INSERT INTO `fund` VALUES (570008, 646, '诺德周期策略混合', 53.15, 0.77, 29.2, '2012-03-20');
INSERT INTO `fund` VALUES (690005, 35999, '民生加银内需增长混合', 53.46, 0.49, 27.6, '2011-01-27');
INSERT INTO `fund` VALUES (690007, 91774, '民生加银景气行业混合A', 42.34, 0.76, 24.56, '2011-11-21');

SET FOREIGN_KEY_CHECKS = 1;
