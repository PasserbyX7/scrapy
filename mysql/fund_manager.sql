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

 Date: 20/01/2021 23:03:54
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
INSERT INTO `fund_manager` VALUES (23, '张峰', '5年126天');
INSERT INTO `fund_manager` VALUES (27, '兰乔', '5年52天');
INSERT INTO `fund_manager` VALUES (28, '刘俊', '10年325天');
INSERT INTO `fund_manager` VALUES (69, '胡宜斌', '5年56天');
INSERT INTO `fund_manager` VALUES (93, '李元博', '6年93天');
INSERT INTO `fund_manager` VALUES (121, '李化松', '4年245天');
INSERT INTO `fund_manager` VALUES (136, '张啸伟', '5年156天');
INSERT INTO `fund_manager` VALUES (168, '曲扬', '7年67天');
INSERT INTO `fund_manager` VALUES (176, '程洲', '12年294天');
INSERT INTO `fund_manager` VALUES (191, '杨栋', '5年156天');
INSERT INTO `fund_manager` VALUES (210, '鄢耀', '7年148天');
INSERT INTO `fund_manager` VALUES (218, '神玉飞', '8年31天');
INSERT INTO `fund_manager` VALUES (233, '张坤', '8年115天');
INSERT INTO `fund_manager` VALUES (236, '郭杰', '7年310天');
INSERT INTO `fund_manager` VALUES (258, '周应波', '5年79天');
INSERT INTO `fund_manager` VALUES (269, '范妍', '5年85天');
INSERT INTO `fund_manager` VALUES (270, '杨锐文', '6年86天');
INSERT INTO `fund_manager` VALUES (313, '骆帅', '5年238天');
INSERT INTO `fund_manager` VALUES (338, '周蔚文', '13年303天');
INSERT INTO `fund_manager` VALUES (343, '杜猛', '9年193天');
INSERT INTO `fund_manager` VALUES (388, '周海栋', '6年261天');
INSERT INTO `fund_manager` VALUES (395, '何帅', '5年196天');
INSERT INTO `fund_manager` VALUES (422, '倪权生', '5年174天');
INSERT INTO `fund_manager` VALUES (427, '王晓李', '5年142天');
INSERT INTO `fund_manager` VALUES (456, '邬传雁', '5年226天');
INSERT INTO `fund_manager` VALUES (465, '陈鹏扬', '5年150天');
INSERT INTO `fund_manager` VALUES (472, '陈宇', '5年149天');
INSERT INTO `fund_manager` VALUES (480, '徐治彪', '5年28天');
INSERT INTO `fund_manager` VALUES (492, '杨柯', '7年280天');
INSERT INTO `fund_manager` VALUES (503, '杨浩', '5年157天');
INSERT INTO `fund_manager` VALUES (525, '章旭峰', '9年35天');
INSERT INTO `fund_manager` VALUES (533, '郭晨', '9年278天');
INSERT INTO `fund_manager` VALUES (538, '莫海波', '5年260天');
INSERT INTO `fund_manager` VALUES (559, '陈启明', '6年117天');
INSERT INTO `fund_manager` VALUES (568, '蒋秋洁', '6年34天');
INSERT INTO `fund_manager` VALUES (572, '刘旭', '5年176天');
INSERT INTO `fund_manager` VALUES (576, '魏庆国', '5年289天');
INSERT INTO `fund_manager` VALUES (580, '梁浩', '9年192天');
INSERT INTO `fund_manager` VALUES (589, '陈平', '5年178天');
INSERT INTO `fund_manager` VALUES (633, '金梓才', '6年63天');
INSERT INTO `fund_manager` VALUES (646, '罗世锋', '6年57天');
INSERT INTO `fund_manager` VALUES (649, '刘彦春', '11年267天');
INSERT INTO `fund_manager` VALUES (663, '李晓星', '5年198天');
INSERT INTO `fund_manager` VALUES (672, '杨琨', '4年173天');
INSERT INTO `fund_manager` VALUES (696, '高源', '5年80天');
INSERT INTO `fund_manager` VALUES (704, '郭锐', '8年195天');
INSERT INTO `fund_manager` VALUES (731, '王海华', '7年48天');
INSERT INTO `fund_manager` VALUES (734, '杨欢', '5年216天');
INSERT INTO `fund_manager` VALUES (742, '王伟', '5年344天');
INSERT INTO `fund_manager` VALUES (743, '章晖', '5年238天');
INSERT INTO `fund_manager` VALUES (744, '陈皓', '8年115天');
INSERT INTO `fund_manager` VALUES (754, '刘江', '5年217天');
INSERT INTO `fund_manager` VALUES (764, '崔莹', '5年217天');
INSERT INTO `fund_manager` VALUES (806, '沈楠', '5年261天');
INSERT INTO `fund_manager` VALUES (811, '郑磊', '5年129天');
INSERT INTO `fund_manager` VALUES (815, '毕天宇', '15年53天');
INSERT INTO `fund_manager` VALUES (819, '周雪军', '8年102天');
INSERT INTO `fund_manager` VALUES (839, '孙琳', '6年358天');
INSERT INTO `fund_manager` VALUES (841, '何以广', '5年240天');
INSERT INTO `fund_manager` VALUES (890, '周楠', '5年240天');
INSERT INTO `fund_manager` VALUES (912, '王俊', '5年364天');
INSERT INTO `fund_manager` VALUES (914, '王品', '10年73天');
INSERT INTO `fund_manager` VALUES (933, '魏晓雪', '8年67天');
INSERT INTO `fund_manager` VALUES (954, '张丹华', '5年251天');
INSERT INTO `fund_manager` VALUES (966, '林清源', '5年254天');
INSERT INTO `fund_manager` VALUES (974, '张仲维', '5年162天');
INSERT INTO `fund_manager` VALUES (975, '孙文龙', '5年363天');
INSERT INTO `fund_manager` VALUES (985, '林庆', '5年260天');
INSERT INTO `fund_manager` VALUES (1002, '安昀', '6年278天');
INSERT INTO `fund_manager` VALUES (1009, '赵蓓', '6年64天');
INSERT INTO `fund_manager` VALUES (1011, '黄安乐', '9年60天');
INSERT INTO `fund_manager` VALUES (1020, '潘明', '6年338天');
INSERT INTO `fund_manager` VALUES (1022, '张淼', '5年338天');
INSERT INTO `fund_manager` VALUES (1072, '贾成东', '5年362天');
INSERT INTO `fund_manager` VALUES (1101, '王创练', '5年297天');
INSERT INTO `fund_manager` VALUES (1107, '颜媛', '5年67天');
INSERT INTO `fund_manager` VALUES (1132, '常蓁', '5年315天');
INSERT INTO `fund_manager` VALUES (1140, '吴渭', '4年353天');
INSERT INTO `fund_manager` VALUES (1151, '苗宇', '5年343天');
INSERT INTO `fund_manager` VALUES (1155, '李巍', '9年124天');
INSERT INTO `fund_manager` VALUES (1159, '杜洋', '5年339天');
INSERT INTO `fund_manager` VALUES (1184, '曾鹏', '8年3天');
INSERT INTO `fund_manager` VALUES (1191, '张慧', '7年127天');
INSERT INTO `fund_manager` VALUES (1201, '陈斌', '5年353天');
INSERT INTO `fund_manager` VALUES (1205, '李佳存', '5年356天');
INSERT INTO `fund_manager` VALUES (1219, '胡戈游', '11年240天');
INSERT INTO `fund_manager` VALUES (1262, '蒋秀蕾', '7年2天');
INSERT INTO `fund_manager` VALUES (1276, '赵晓东', '11年141天');
INSERT INTO `fund_manager` VALUES (1279, '黄峰', '6年35天');
INSERT INTO `fund_manager` VALUES (1302, '程琨', '7年350天');
INSERT INTO `fund_manager` VALUES (1305, '王宗合', '10年25天');
INSERT INTO `fund_manager` VALUES (1324, '冯波', '11年18天');
INSERT INTO `fund_manager` VALUES (1403, '孙伟', '6年198天');
INSERT INTO `fund_manager` VALUES (1424, '胡涛', '11年73天');
INSERT INTO `fund_manager` VALUES (1469, '蔡向阳', '6年238天');
INSERT INTO `fund_manager` VALUES (1502, '顾耀强', '11年31天');
INSERT INTO `fund_manager` VALUES (1536, '徐荔蓉', '14年84天');
INSERT INTO `fund_manager` VALUES (1571, '郑希', '8年115天');
INSERT INTO `fund_manager` VALUES (2310, '李倩', '5年31天');
INSERT INTO `fund_manager` VALUES (2322, '徐成', '5年28天');
INSERT INTO `fund_manager` VALUES (2333, '詹成', '5年23天');
INSERT INTO `fund_manager` VALUES (2342, '袁曦', '5年24天');
INSERT INTO `fund_manager` VALUES (2358, '邹欣', '5年21天');
INSERT INTO `fund_manager` VALUES (2378, '黄文倩', '4年352天');
INSERT INTO `fund_manager` VALUES (12344, '孙伟', '4年364天');
INSERT INTO `fund_manager` VALUES (15450, '归凯', '4年316天');
INSERT INTO `fund_manager` VALUES (16839, '陈璇淼', '4年297天');
INSERT INTO `fund_manager` VALUES (19048, '苏昌景', '4年266天');
INSERT INTO `fund_manager` VALUES (19394, '姚志鹏', '4年262天');
INSERT INTO `fund_manager` VALUES (23133, '金笑非', '4年210天');
INSERT INTO `fund_manager` VALUES (23172, '单文', '4年212天');
INSERT INTO `fund_manager` VALUES (34237, '邱璟旻', '4年275天');
INSERT INTO `fund_manager` VALUES (35999, '柳世庆', '4年171天');
INSERT INTO `fund_manager` VALUES (38143, '杨桢霄', '4年151天');
INSERT INTO `fund_manager` VALUES (38881, '万民远', '4年147天');
INSERT INTO `fund_manager` VALUES (39911, '谭冬寒', '4年140天');
INSERT INTO `fund_manager` VALUES (41527, '张剑峰', '4年123天');
INSERT INTO `fund_manager` VALUES (43775, '李进', '4年95天');
INSERT INTO `fund_manager` VALUES (48029, '李德辉', '4年63天');
INSERT INTO `fund_manager` VALUES (55799, '肖瑞瑾', '4年15天');
INSERT INTO `fund_manager` VALUES (55842, '张帆', '4年14天');
INSERT INTO `fund_manager` VALUES (55942, '国晓雯', '4年11天');
INSERT INTO `fund_manager` VALUES (57659, '李健伟', '3年360天');
INSERT INTO `fund_manager` VALUES (58241, '李恒', '3年359天');
INSERT INTO `fund_manager` VALUES (62166, '王翔', '3年324天');
INSERT INTO `fund_manager` VALUES (62829, '林晶', '3年319天');
INSERT INTO `fund_manager` VALUES (64398, '刘辉', '3年311天');
INSERT INTO `fund_manager` VALUES (65018, '赵诣', '3年305天');
INSERT INTO `fund_manager` VALUES (67299, '谭丽', '3年284天');
INSERT INTO `fund_manager` VALUES (68693, '郑泽鸿', '3年227天');
INSERT INTO `fund_manager` VALUES (73538, '秦毅', '3年232天');
INSERT INTO `fund_manager` VALUES (73978, '王诗瑶', '3年229天');
INSERT INTO `fund_manager` VALUES (74038, '吉莉', '3年227天');
INSERT INTO `fund_manager` VALUES (75303, '王园园', '3年218天');
INSERT INTO `fund_manager` VALUES (75656, '林小聪', '3年215天');
INSERT INTO `fund_manager` VALUES (75661, '赵伟', '3年214天');
INSERT INTO `fund_manager` VALUES (77293, '陆秋渊', '3年204天');
INSERT INTO `fund_manager` VALUES (79099, '费逸', '3年185天');
INSERT INTO `fund_manager` VALUES (80093, '蔡丞丰', '3年176天');
INSERT INTO `fund_manager` VALUES (85422, '范洁', '3年137天');
INSERT INTO `fund_manager` VALUES (88043, '郭斐', '3年116天');
INSERT INTO `fund_manager` VALUES (89782, '代云锋', '3年95天');
INSERT INTO `fund_manager` VALUES (91774, '王亮', '3年78天');
INSERT INTO `fund_manager` VALUES (94218, '任琳娜', '3年54天');
INSERT INTO `fund_manager` VALUES (94390, '孙迪', '3年37天');
INSERT INTO `fund_manager` VALUES (95943, '曲盛伟', '3年39天');
INSERT INTO `fund_manager` VALUES (98203, '祁禾', '3年24天');
INSERT INTO `fund_manager` VALUES (98297, '曾豪', '3年24天');
INSERT INTO `fund_manager` VALUES (100570, '刘盟盟', '3年2天');
INSERT INTO `fund_manager` VALUES (100572, '郭相博', '3年2天');
INSERT INTO `fund_manager` VALUES (101313, '郭睿', '2年342天');
INSERT INTO `fund_manager` VALUES (103428, '王海青', '2年349天');
INSERT INTO `fund_manager` VALUES (105340, '盛骅', '2年340天');
INSERT INTO `fund_manager` VALUES (105656, '陈媛', '2年328天');
INSERT INTO `fund_manager` VALUES (108073, '廖瀚博', '2年318天');
INSERT INTO `fund_manager` VALUES (114007, '郎超', '2年283天');
INSERT INTO `fund_manager` VALUES (119622, '刘博', '2年194天');
INSERT INTO `fund_manager` VALUES (120364, '刘鹏', '2年236天');
INSERT INTO `fund_manager` VALUES (122113, '詹佳', '2年228天');
INSERT INTO `fund_manager` VALUES (128127, '刘莉莉', '2年193天');
INSERT INTO `fund_manager` VALUES (130705, '王峥娇', '2年177天');
INSERT INTO `fund_manager` VALUES (131711, '方钰涵', '2年170天');
INSERT INTO `fund_manager` VALUES (138499, '楼慧源', '2年130天');
INSERT INTO `fund_manager` VALUES (143176, '王明旭', '2年95天');
INSERT INTO `fund_manager` VALUES (145258, '谢昌旭', '2年81天');
INSERT INTO `fund_manager` VALUES (145260, '王斌', '2年81天');
INSERT INTO `fund_manager` VALUES (147600, '王阳', '2年68天');
INSERT INTO `fund_manager` VALUES (156616, '吴越', '1年153天');
INSERT INTO `fund_manager` VALUES (159014, '韩创', '2年10天');
INSERT INTO `fund_manager` VALUES (160232, '郝淼', '2年3天');
INSERT INTO `fund_manager` VALUES (163251, '周克平', '1年361天');
INSERT INTO `fund_manager` VALUES (171888, '黄珺', '1年313天');
INSERT INTO `fund_manager` VALUES (174098, '张萍', '2年75天');
INSERT INTO `fund_manager` VALUES (181555, '萧嘉倩', '1年256天');
INSERT INTO `fund_manager` VALUES (182229, '田彧龙', '1年251天');
INSERT INTO `fund_manager` VALUES (183187, '陆彬', '1年245天');
INSERT INTO `fund_manager` VALUES (196084, '唐颐恒', '1年181天');
INSERT INTO `fund_manager` VALUES (203564, '范庭芳', '1年146天');
INSERT INTO `fund_manager` VALUES (209927, '宋仁杰', '1年126天');
INSERT INTO `fund_manager` VALUES (223631, '张弘', '1年76天');
INSERT INTO `fund_manager` VALUES (245803, '李晓西', '336天');
INSERT INTO `fund_manager` VALUES (252618, '孙笑悦', '285天');
INSERT INTO `fund_manager` VALUES (255035, '屠环宇', '302天');
INSERT INTO `fund_manager` VALUES (266630, '段涛', '246天');
INSERT INTO `fund_manager` VALUES (267028, '郑澄然', '244天');
INSERT INTO `fund_manager` VALUES (292000, '万方方', '161天');
INSERT INTO `fund_manager` VALUES (313621, '赵国进', '69天');
INSERT INTO `fund_manager` VALUES (329083, '孔涛', '8天');

SET FOREIGN_KEY_CHECKS = 1;
