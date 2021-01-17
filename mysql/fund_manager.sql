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

 Date: 18/01/2021 03:55:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fund_manager
-- ----------------------------
DROP TABLE IF EXISTS `fund_manager`;
CREATE TABLE `fund_manager`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `working_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fund_manager
-- ----------------------------
INSERT INTO `fund_manager` VALUES (8, '王景', '9年69天');
INSERT INTO `fund_manager` VALUES (44, '林森', '5年48天');
INSERT INTO `fund_manager` VALUES (60, '吴坚', '6年226天');
INSERT INTO `fund_manager` VALUES (93, '李元博', '6年89天');
INSERT INTO `fund_manager` VALUES (136, '张啸伟', '5年152天');
INSERT INTO `fund_manager` VALUES (168, '曲扬', '7年63天');
INSERT INTO `fund_manager` VALUES (191, '杨栋', '5年152天');
INSERT INTO `fund_manager` VALUES (210, '鄢耀', '7年144天');
INSERT INTO `fund_manager` VALUES (216, '栾超', '4年316天');
INSERT INTO `fund_manager` VALUES (258, '周应波', '5年75天');
INSERT INTO `fund_manager` VALUES (388, '周海栋', '6年257天');
INSERT INTO `fund_manager` VALUES (412, '邓默', '5年130天');
INSERT INTO `fund_manager` VALUES (472, '陈宇', '5年145天');
INSERT INTO `fund_manager` VALUES (496, '何肖颉', '10年98天');
INSERT INTO `fund_manager` VALUES (525, '章旭峰', '9年31天');
INSERT INTO `fund_manager` VALUES (558, '陈思郁', '5年166天');
INSERT INTO `fund_manager` VALUES (580, '梁浩', '9年188天');
INSERT INTO `fund_manager` VALUES (646, '罗世锋', '6年53天');
INSERT INTO `fund_manager` VALUES (649, '刘彦春', '11年263天');
INSERT INTO `fund_manager` VALUES (704, '郭锐', '8年191天');
INSERT INTO `fund_manager` VALUES (734, '杨欢', '5年212天');
INSERT INTO `fund_manager` VALUES (743, '章晖', '5年234天');
INSERT INTO `fund_manager` VALUES (764, '崔莹', '5年213天');
INSERT INTO `fund_manager` VALUES (819, '周雪军', '8年98天');
INSERT INTO `fund_manager` VALUES (863, '萧楠', '8年111天');
INSERT INTO `fund_manager` VALUES (865, '张清华', '7年25天');
INSERT INTO `fund_manager` VALUES (933, '魏晓雪', '8年63天');
INSERT INTO `fund_manager` VALUES (1011, '黄安乐', '9年56天');
INSERT INTO `fund_manager` VALUES (1072, '贾成东', '5年358天');
INSERT INTO `fund_manager` VALUES (1155, '李巍', '9年120天');
INSERT INTO `fund_manager` VALUES (1159, '杜洋', '5年335天');
INSERT INTO `fund_manager` VALUES (1247, '贾鹏', '6年143天');
INSERT INTO `fund_manager` VALUES (1305, '王宗合', '10年21天');
INSERT INTO `fund_manager` VALUES (1324, '冯波', '11年14天');
INSERT INTO `fund_manager` VALUES (1403, '孙伟', '6年194天');
INSERT INTO `fund_manager` VALUES (1536, '徐荔蓉', '14年80天');
INSERT INTO `fund_manager` VALUES (2322, '徐成', '5年24天');
INSERT INTO `fund_manager` VALUES (12248, '韩威俊', '4年362天');
INSERT INTO `fund_manager` VALUES (16839, '陈璇淼', '4年293天');
INSERT INTO `fund_manager` VALUES (19048, '苏昌景', '4年262天');
INSERT INTO `fund_manager` VALUES (19394, '姚志鹏', '4年258天');
INSERT INTO `fund_manager` VALUES (23133, '金笑非', '4年206天');
INSERT INTO `fund_manager` VALUES (23172, '单文', '4年208天');
INSERT INTO `fund_manager` VALUES (25611, '王智伟', '4年174天');
INSERT INTO `fund_manager` VALUES (35999, '柳世庆', '4年167天');
INSERT INTO `fund_manager` VALUES (43775, '李进', '4年91天');
INSERT INTO `fund_manager` VALUES (48029, '李德辉', '4年59天');
INSERT INTO `fund_manager` VALUES (55942, '国晓雯', '4年7天');
INSERT INTO `fund_manager` VALUES (60191, '尚烁徽', '3年298天');
INSERT INTO `fund_manager` VALUES (65018, '赵诣', '3年301天');
INSERT INTO `fund_manager` VALUES (68693, '郑泽鸿', '3年223天');
INSERT INTO `fund_manager` VALUES (73538, '秦毅', '3年228天');
INSERT INTO `fund_manager` VALUES (75303, '王园园', '3年214天');
INSERT INTO `fund_manager` VALUES (75656, '林小聪', '3年211天');
INSERT INTO `fund_manager` VALUES (77293, '陆秋渊', '3年200天');
INSERT INTO `fund_manager` VALUES (79099, '费逸', '3年181天');
INSERT INTO `fund_manager` VALUES (79716, '蒋茜', '3年174天');
INSERT INTO `fund_manager` VALUES (79918, '梁皓', '3年174天');
INSERT INTO `fund_manager` VALUES (80093, '蔡丞丰', '3年172天');
INSERT INTO `fund_manager` VALUES (88043, '郭斐', '3年112天');
INSERT INTO `fund_manager` VALUES (89782, '代云锋', '3年91天');
INSERT INTO `fund_manager` VALUES (89981, '闫思倩', '3年91天');
INSERT INTO `fund_manager` VALUES (91774, '王亮', '3年74天');
INSERT INTO `fund_manager` VALUES (94218, '任琳娜', '3年50天');
INSERT INTO `fund_manager` VALUES (95943, '曲盛伟', '3年35天');
INSERT INTO `fund_manager` VALUES (98203, '祁禾', '3年20天');
INSERT INTO `fund_manager` VALUES (103428, '王海青', '2年345天');
INSERT INTO `fund_manager` VALUES (104536, '孟昊', '2年338天');
INSERT INTO `fund_manager` VALUES (105340, '盛骅', '2年336天');
INSERT INTO `fund_manager` VALUES (105656, '陈媛', '2年324天');
INSERT INTO `fund_manager` VALUES (119622, '刘博', '2年190天');
INSERT INTO `fund_manager` VALUES (120364, '刘鹏', '2年232天');
INSERT INTO `fund_manager` VALUES (122113, '詹佳', '2年224天');
INSERT INTO `fund_manager` VALUES (128127, '刘莉莉', '2年189天');
INSERT INTO `fund_manager` VALUES (137955, '倪斌', '2年128天');
INSERT INTO `fund_manager` VALUES (142576, '樊勇', '2年96天');
INSERT INTO `fund_manager` VALUES (145218, '张亮', '2年77天');
INSERT INTO `fund_manager` VALUES (145258, '谢昌旭', '2年77天');
INSERT INTO `fund_manager` VALUES (147600, '王阳', '2年64天');
INSERT INTO `fund_manager` VALUES (152403, '王元春', '2年37天');
INSERT INTO `fund_manager` VALUES (159014, '韩创', '2年6天');
INSERT INTO `fund_manager` VALUES (183187, '陆彬', '1年241天');
INSERT INTO `fund_manager` VALUES (184069, '孙彬', '1年238天');
INSERT INTO `fund_manager` VALUES (266630, '段涛', '242天');
INSERT INTO `fund_manager` VALUES (278347, '封晴', '196天');
INSERT INTO `fund_manager` VALUES (287702, '郭思捷', '170天');
INSERT INTO `fund_manager` VALUES (329083, '孔涛', '4天');

SET FOREIGN_KEY_CHECKS = 1;
