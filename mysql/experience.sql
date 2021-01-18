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

 Date: 18/01/2021 20:55:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for experience
-- ----------------------------
DROP TABLE IF EXISTS `experience`;
CREATE TABLE `experience`  (
  `id` int(11) NOT NULL,
  `fund_manager_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_time` date NULL DEFAULT NULL,
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tenure_return` double NULL DEFAULT NULL,
  `tenure_market` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of experience
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
