/*
 Navicat Premium Data Transfer

 Source Server         : 10.87.221.222
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : ssm_lushan

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 08/05/2024 12:40:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `newPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (3, '周zz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `account` VALUES (4, '周zz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `account` VALUES (5, '周yx', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (8, '管理员1', '1230', '张三', '15687965412', '1568759842@qq.com', 'http://localhost:9090/files/1709884946017-管理员1.jpg', 'ADMIN');
INSERT INTO `admin` VALUES (9, '1111', '123', '11', '1', '1', NULL, 'ADMIN');
INSERT INTO `admin` VALUES (10, '1', '123', '1', '1', '1', NULL, 'ADMIN');

-- ----------------------------
-- Table structure for checkin
-- ----------------------------
DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type_id` int(0) NULL DEFAULT NULL,
  `hotel_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `room_id` int(0) NULL DEFAULT NULL,
  `in_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `out_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `typeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hotelName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `roomName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userId`(`user_id`) USING BTREE,
  INDEX `roomId`(`room_id`) USING BTREE,
  CONSTRAINT `checkin_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkin
-- ----------------------------
INSERT INTO `checkin` VALUES (29, '20240411123549', 9, 8, 4, 24, '2024-04-11', '2024-04-11 12:37:18', NULL, NULL, NULL, NULL);
INSERT INTO `checkin` VALUES (30, '20240411123756', 9, 8, 4, 24, '2024-04-11', '2024-04-11 12:49:57', NULL, NULL, NULL, NULL);
INSERT INTO `checkin` VALUES (31, '20240411150728', 9, 8, 4, 24, '2024-04-12', '2024-04-11 15:12:48', NULL, NULL, NULL, NULL);
INSERT INTO `checkin` VALUES (32, '20240419005320', 23, 11, 4, 56, '2024-04-19', '2024-04-19 00:57:24', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `type_id` int(0) NULL DEFAULT NULL,
  `typeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `typePrice` double NULL DEFAULT NULL,
  `typeNum` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userId`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (10, 3, 4, NULL, NULL, NULL);
INSERT INTO `collect` VALUES (11, 3, 6, NULL, NULL, NULL);
INSERT INTO `collect` VALUES (22, 4, 10, NULL, NULL, NULL);
INSERT INTO `collect` VALUES (23, 4, 9, NULL, NULL, NULL);
INSERT INTO `collect` VALUES (26, 14, 19, NULL, NULL, NULL);
INSERT INTO `collect` VALUES (27, 15, 9, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type_id` int(0) NULL DEFAULT NULL,
  `hotel_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `parent_id` int(0) NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `typeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hotelName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `reply` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userId`(`user_id`) USING BTREE,
  INDEX `HotelId`(`hotel_id`) USING BTREE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (39, '环境很好', '2024-04-11 12:39:55', 9, 8, 4, 0, 'USER', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `comment` VALUES (41, '这个挺好的', '2024-04-11 15:13:11', 9, 8, 4, 0, 'USER', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `comment` VALUES (42, '好好好', '2024-04-19 00:57:37', 23, 11, 4, 0, 'USER', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES (8, '李四', '888666', '凡尘里良栖民宿', '15689745897', '6524189657@qq.com', 'http://localhost:9090/files/1709885387456-凡尘里良栖民宿.jpg', 'HOTEL', 50, '鲁山尧山镇尧山村迎宾路8号', '来鲁山旅游就选凡尘里良栖民宿', '审核通过');
INSERT INTO `hotel` VALUES (9, '王五', '123456', '尧山23涧民宿', '18438513555', '184385132135@qq.com', 'http://localhost:9090/files/1709888274349-0200x120008pliyyb4282_W_1080_808_R5_D.jpg', 'HOTEL', 45, '尧山镇上坪村东沟组5号', '若想要游览鲁山，23涧民宿将会是一个不错的的住宿之选。', '审核通过');
INSERT INTO `hotel` VALUES (10, '周一', '1230', '陌上隐民宿', '18614903319', '18614903319@qq.com', 'http://localhost:9090/files/1709888728372-0200a120009lfuht38D52_W_1080_808_R5_D.jpg', 'HOTEL', 50, '四棵树乡车场村桥头南10米', '对于想要捕捉鲁山城市风采的旅客来说，陌上隐民宿是一个理想的选择。优美的环境，再搭配上细致周到的服务，民宿的休闲区定能满足您的品质需求。', '审核通过');
INSERT INTO `hotel` VALUES (11, '秦轩', '1', '绿韵巢养精品民宿', '15838356369', '15838356369@qq.com', 'http://localhost:9090/files/1709889163881-绿韵巢养精品民宿.jpg', 'HOTEL', 50, '绿韵巢养精品民宿', '绿韵巢养位于中国天然氧吧、长寿之乡——鲁山县尧山镇下沟村。驾车自该镇沿311国道向西大约5公里，或郑栾高速尧山站出口向西不足2公里，金蟾安卧之地，便是绿韵巢养苑！', '审核通过');
INSERT INTO `hotel` VALUES (12, '贺隆', '123456', '溪云上民宿', '13613753296', '13613753296@qq.com', 'http://localhost:9090/files/1709889781856-1mc2l12000bn8ivbt1438_W_1080_808_R5_D.jpg', 'HOTEL', 70, '鲁山尧山镇下坪村大峡谷漂流上站350米', '来鲁山，就来溪云上', '审核通过');
INSERT INTO `hotel` VALUES (13, '马琪', '123456', '尧山翰墨居民宿', '13393720707', '13393720707@qq.com', 'http://localhost:9090/files/1709890043053-0205h12000a0cj3dcC07B_W_1080_808_R5_D.jpg', 'HOTEL', 100, '尧山镇大庄村东沟78号', '民宿坐落在墨子故里-鲁山县尧山镇大庄村东沟，后依山、前傍水，隐于山水间。紧邻国家5A级旅游景区尧山—中原大佛景区，尧山天河漂流，六羊山通天河景区。春有百花，夏有漂流，秋有红叶，冬有温泉，人文与自然辉映，文化与旅游融合。可满足人们山岳休闲、温泉度假、水域风景、历史文化、农业休闲观光等不同需求。', '审核通过');
INSERT INTO `hotel` VALUES (14, '香林', '123456', '鲁山画眉岛民宿', '18737588399', '18737588399@qq.com', 'http://localhost:9090/files/1709890579490-0204i120008tiwpx3C5DF_W_1080_808_R5_D.jpg', 'HOTEL', 110, '尧山镇四道河村四道河组 ', '鲁山画眉岛民宿位于尧山镇四道河村四道河组，周边有尧山画眉谷景区、好运谷景区、天龙池滑雪场、画眉谷漂流、墨子古街、神牛峡等游览地。洒店旁有两条沙河，一年四季流水不断，适宜康养、度假和游玩！', '审核通过');
INSERT INTO `hotel` VALUES (15, '黄飞鸿', '123456', 'tb爱特色民宿', '+86-10-56320606-2401604', '1245895488@qq.com', 'http://localhost:9090/files/1709891515237-02046120008g73s9p6220_W_1080_808_R5_D.jpg', 'HOTEL', 1000, '鲁山张沟农家乐8号', '在这里，简单的日子也能灿烂成诗。', '审核通过');
INSERT INTO `hotel` VALUES (16, '蔷薇科', '123456', '水云间民宿', '+86-375-2279899', '2548957815@qq.com', 'http://localhost:9090/files/1709891969664-0200e12000bedcts3BBE2_W_1080_808_R5_D.jpg', 'HOTEL', 90, '鲁山人民路东段牛郎织女文化风情园内', '鲁山人民路东段牛郎织女文化风情园内', '审核通过');
INSERT INTO `hotel` VALUES (17, '李龙', '123456', '暖心阁民宿', '+86-18737595687', '18737595687@qq.com', 'http://localhost:9090/files/1709892308481-0201e12000bem8uui6E77_W_1080_808_R5_D.jpg', 'HOTEL', 253, '鲁山多肉植物园西南200米,', '经过一座城，寻觅一间房，消去您满身的疲劳，我们将以热情的服务，舒适的房间，期待您的到来。我们，在这里，等您来', '审核通过');
INSERT INTO `hotel` VALUES (18, '芡实', '1230', '迎凤民宿', '+86-13603759485', '13603759485@qq.com', 'http://localhost:9090/files/1709892464236-0206j120009rhv74iAE4A_W_1080_808_R5_D.jpg', 'HOTEL', 132, '鲁山尧山镇尧山风景区振山路迎凤树2号停车场南50米,', '对于想要捕捉鲁山城市风采的旅客来说，迎风民宿是一个理想的选择。\n在一天的忙碌后，您可以在酒店尽情的享受各种体育和休闲设施。', '审核通过');
INSERT INTO `hotel` VALUES (19, '鹅鹅鹅', '123456', '豫涧湖光里氧吧民宿', '+86-15237579947', '15237579947@qq.com', 'http://localhost:9090/files/1709892792549-0203o12000cfvzn672E7C_W_1080_808_R5_D.jpg', 'HOTEL', 350, '鲁山赵村镇赵村八组宏翔超市西北700米处', '设有餐厅，包间，Wifi,热水，停车场，有垂钓区，露营区，自助烧烤，团建游船，沙滩，戏水', '审核通过');
INSERT INTO `hotel` VALUES (20, '王求', '123456', '特色农家民宿', ' +86-15938974768', '15938974768@qq.com', 'http://localhost:9090/files/1709893082058-0203a12000c2muq877904_W_1080_808_R5_D.jpg', 'HOTEL', 59, '鲁山尧山风景区26号', '很有特色的民宿', '审核通过');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (5, '欢迎', '欢迎您选择鲁山民宿预订系统，我们致力于为您提供安全、便捷、舒适的民宿预订服务。', '2024-03-08', '管理员1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type_id` int(0) NULL DEFAULT NULL,
  `hotel_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `in_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `out_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `days` bigint(0) NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `typeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hotelName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `typeImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `HotelId`(`hotel_id`) USING BTREE,
  INDEX `orders_ibfk_1`(`user_id`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (91, '20240411123549', '已退房', 9, 8, 4, '2024-04-11 12:35:49', '2024-04-04', '2024-04-19', 15, 900, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (92, '20240411123756', '已退房', 9, 8, 4, '2024-04-11 12:37:56', '2024-04-05', '2024-04-19', 14, 840, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (93, '20240411150728', '已退房', 9, 8, 4, '2024-04-11 15:07:28', '2024-04-11', '2024-04-13', 2, 120, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (94, '20240411150754', '待入住', 16, 9, 4, '2024-04-11 15:07:54', '2024-04-09', '2024-04-10', 1, 45, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (95, '20240419005320', '已退房', 23, 11, 4, '2024-04-19 00:53:20', '2024-04-04', '2024-04-18', 14, 1120, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (98, '20240501194128', '待入住', 19, 10, 14, '2024-05-01 19:41:28', '2024-05-02', '2024-05-04', 2, 110, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (99, '20240501194301', '待入住', 9, 8, 15, '2024-05-01 19:43:01', '2024-05-01', '2024-05-07', 6, 360, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (100, '20240501195220', '待入住', 9, 8, 15, '2024-05-01 19:52:20', '2024-04-30', '2024-05-02', 2, 120, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (101, '20240501195413', '待入住', 17, 9, 15, '2024-05-01 19:54:13', '2024-04-30', '2024-05-02', 2, 130, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (102, '20240501195521', '待入住', 17, 9, 15, '2024-05-01 19:55:21', '2024-04-29', '2024-05-10', 11, 715, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (103, '20240501195714', '待入住', 17, 9, 15, '2024-05-01 19:57:14', '2024-04-29', '2024-05-03', 4, 260, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (104, '20240501195740', '待入住', 17, 9, 15, '2024-05-01 19:57:40', '2024-04-05', '2024-05-10', 35, 2275, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (105, '20240501195955', '待入住', 17, 9, 15, '2024-05-01 19:59:55', '2024-04-30', '2024-05-10', 10, 650, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (106, '20240501200028', '待入住', 17, 9, 15, '2024-05-01 20:00:28', '2024-04-30', '2024-05-10', 10, 650, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (107, '20240501200244', '待入住', 17, 9, 15, '2024-05-01 20:02:44', '2024-04-30', '2024-05-01', 1, 65, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (108, '20240501200413', '待入住', 17, 9, 15, '2024-05-01 20:04:13', '2024-03-14', '2024-05-01', 48, 3120, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (109, '20240501200456', '待入住', 17, 9, 15, '2024-05-01 20:04:56', '2024-02-29', '2024-05-09', 70, 4550, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (110, '20240501200919', '待入住', 17, 9, 15, '2024-05-01 20:09:19', '2024-05-03', '2024-05-16', 13, 845, NULL, NULL, NULL, NULL);
INSERT INTO `orders` VALUES (111, '20240501200936', '待入住', 17, 9, 15, '2024-05-01 20:09:36', '2024-05-02', '2024-05-16', 14, 910, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type_id` int(0) NULL DEFAULT NULL,
  `hotel_id` int(0) NULL DEFAULT NULL,
  `typeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hotelName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `typeId`(`type_id`) USING BTREE,
  INDEX `HotelId`(`hotel_id`) USING BTREE,
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `room_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (24, '1', '空闲', 9, 8, NULL, NULL);
INSERT INTO `room` VALUES (25, '2', '空闲', 9, 8, NULL, NULL);
INSERT INTO `room` VALUES (26, '3', '空闲', 9, 8, NULL, NULL);
INSERT INTO `room` VALUES (27, '4', '空闲', 9, 8, NULL, NULL);
INSERT INTO `room` VALUES (28, '1', '空闲', 10, 8, NULL, NULL);
INSERT INTO `room` VALUES (29, '2', '空闲', 10, 8, NULL, NULL);
INSERT INTO `room` VALUES (30, '3', '空闲', 10, 8, NULL, NULL);
INSERT INTO `room` VALUES (31, '1', '空闲', 11, 8, NULL, NULL);
INSERT INTO `room` VALUES (32, '2', '空闲', 11, 8, NULL, NULL);
INSERT INTO `room` VALUES (33, '1', '空闲', 12, 8, NULL, NULL);
INSERT INTO `room` VALUES (34, '2', '空闲', 12, 8, NULL, NULL);
INSERT INTO `room` VALUES (36, '1', '空闲', 16, 9, NULL, NULL);
INSERT INTO `room` VALUES (37, '2', '空闲', 16, 9, NULL, NULL);
INSERT INTO `room` VALUES (38, '1', '空闲', 17, 9, NULL, NULL);
INSERT INTO `room` VALUES (39, '2', '空闲', 17, 9, NULL, NULL);
INSERT INTO `room` VALUES (40, '1', '空闲', 18, 9, NULL, NULL);
INSERT INTO `room` VALUES (41, '2', '空闲', 18, 9, NULL, NULL);
INSERT INTO `room` VALUES (42, '1', '有客', 19, 10, NULL, NULL);
INSERT INTO `room` VALUES (43, '2', '空闲', 19, 10, NULL, NULL);
INSERT INTO `room` VALUES (44, '3', '空闲', 19, 10, NULL, NULL);
INSERT INTO `room` VALUES (45, '4', '空闲', 19, 10, NULL, NULL);
INSERT INTO `room` VALUES (46, '5', '空闲', 19, 10, NULL, NULL);
INSERT INTO `room` VALUES (47, '1', '空闲', 20, 10, NULL, NULL);
INSERT INTO `room` VALUES (48, '2', '空闲', 20, 10, NULL, NULL);
INSERT INTO `room` VALUES (49, '3', '空闲', 20, 10, NULL, NULL);
INSERT INTO `room` VALUES (50, '1', '有客', 21, 10, NULL, NULL);
INSERT INTO `room` VALUES (51, '2', '有客', 21, 10, NULL, NULL);
INSERT INTO `room` VALUES (52, '3', '有客', 21, 10, NULL, NULL);
INSERT INTO `room` VALUES (53, '1', '空闲', 22, 11, NULL, NULL);
INSERT INTO `room` VALUES (54, '2', '空闲', 22, 11, NULL, NULL);
INSERT INTO `room` VALUES (55, '3', '空闲', 22, 11, NULL, NULL);
INSERT INTO `room` VALUES (56, '1', '空闲', 23, 11, NULL, NULL);
INSERT INTO `room` VALUES (57, '2', '空闲', 23, 11, NULL, NULL);
INSERT INTO `room` VALUES (58, '3', '空闲', 23, 11, NULL, NULL);
INSERT INTO `room` VALUES (59, '1', '空闲', 24, 11, NULL, NULL);
INSERT INTO `room` VALUES (60, '2', '空闲', 24, 11, NULL, NULL);
INSERT INTO `room` VALUES (61, '3', '空闲', 24, 11, NULL, NULL);
INSERT INTO `room` VALUES (62, '1', '空闲', 25, 12, NULL, NULL);
INSERT INTO `room` VALUES (63, '2', '空闲', 25, 12, NULL, NULL);
INSERT INTO `room` VALUES (64, '3', '空闲', 25, 12, NULL, NULL);
INSERT INTO `room` VALUES (65, '4', '空闲', 25, 12, NULL, NULL);
INSERT INTO `room` VALUES (66, '5', '空闲', 25, 12, NULL, NULL);
INSERT INTO `room` VALUES (67, '1', '空闲', 26, 12, NULL, NULL);
INSERT INTO `room` VALUES (68, '2', '空闲', 26, 12, NULL, NULL);
INSERT INTO `room` VALUES (69, '3', '空闲', 26, 12, NULL, NULL);
INSERT INTO `room` VALUES (70, '4', '空闲', 26, 12, NULL, NULL);
INSERT INTO `room` VALUES (71, '1', '空闲', 27, 13, NULL, NULL);
INSERT INTO `room` VALUES (72, '2', '空闲', 27, 13, NULL, NULL);
INSERT INTO `room` VALUES (73, '3', '空闲', 27, 13, NULL, NULL);
INSERT INTO `room` VALUES (74, '1', '空闲', 28, 13, NULL, NULL);
INSERT INTO `room` VALUES (75, '2', '空闲', 28, 13, NULL, NULL);
INSERT INTO `room` VALUES (76, '3', '空闲', 28, 13, NULL, NULL);
INSERT INTO `room` VALUES (77, '1', '空闲', 29, 13, NULL, NULL);
INSERT INTO `room` VALUES (78, '2', '空闲', 29, 13, NULL, NULL);
INSERT INTO `room` VALUES (79, '3', '空闲', 29, 13, NULL, NULL);
INSERT INTO `room` VALUES (80, '1', '空闲', 30, 13, NULL, NULL);
INSERT INTO `room` VALUES (81, '2', '空闲', 30, 13, NULL, NULL);
INSERT INTO `room` VALUES (82, '3', '空闲', 30, 13, NULL, NULL);
INSERT INTO `room` VALUES (83, '1', '空闲', 31, 14, NULL, NULL);
INSERT INTO `room` VALUES (84, '2', '空闲', 31, 14, NULL, NULL);
INSERT INTO `room` VALUES (85, '3', '空闲', 31, 14, NULL, NULL);
INSERT INTO `room` VALUES (86, '1', '空闲', 32, 14, NULL, NULL);
INSERT INTO `room` VALUES (87, '2', '空闲', 32, 14, NULL, NULL);
INSERT INTO `room` VALUES (88, '3', '空闲', 32, 14, NULL, NULL);
INSERT INTO `room` VALUES (89, '1', '空闲', 33, 14, NULL, NULL);
INSERT INTO `room` VALUES (90, '2', '空闲', 33, 14, NULL, NULL);
INSERT INTO `room` VALUES (91, '3', '空闲', 33, 14, NULL, NULL);
INSERT INTO `room` VALUES (92, '1', '空闲', 34, 15, NULL, NULL);
INSERT INTO `room` VALUES (93, '2', '空闲', 34, 15, NULL, NULL);
INSERT INTO `room` VALUES (94, '3', '空闲', 34, 15, NULL, NULL);
INSERT INTO `room` VALUES (95, '1', '空闲', 35, 16, NULL, NULL);
INSERT INTO `room` VALUES (96, '2', '空闲', 35, 16, NULL, NULL);
INSERT INTO `room` VALUES (97, '3', '空闲', 35, 16, NULL, NULL);
INSERT INTO `room` VALUES (98, '4', '空闲', 35, 16, NULL, NULL);
INSERT INTO `room` VALUES (99, '1', '空闲', 36, 16, NULL, NULL);
INSERT INTO `room` VALUES (100, '2', '空闲', 36, 16, NULL, NULL);
INSERT INTO `room` VALUES (101, '3', '空闲', 36, 16, NULL, NULL);
INSERT INTO `room` VALUES (102, '1', '空闲', 37, 17, NULL, NULL);
INSERT INTO `room` VALUES (103, '2', '空闲', 37, 17, NULL, NULL);
INSERT INTO `room` VALUES (104, '3', '空闲', 37, 17, NULL, NULL);
INSERT INTO `room` VALUES (105, '1', '空闲', 38, 17, NULL, NULL);
INSERT INTO `room` VALUES (106, '2', '空闲', 38, 17, NULL, NULL);
INSERT INTO `room` VALUES (107, '3', '空闲', 38, 17, NULL, NULL);
INSERT INTO `room` VALUES (108, '1', '空闲', 39, 18, NULL, NULL);
INSERT INTO `room` VALUES (109, '2', '空闲', 39, 18, NULL, NULL);
INSERT INTO `room` VALUES (110, '3', '空闲', 39, 18, NULL, NULL);
INSERT INTO `room` VALUES (111, '1', '空闲', 40, 18, NULL, NULL);
INSERT INTO `room` VALUES (112, '2', '空闲', 40, 18, NULL, NULL);
INSERT INTO `room` VALUES (113, '3', '空闲', 40, 18, NULL, NULL);
INSERT INTO `room` VALUES (114, '1', '空闲', 41, 18, NULL, NULL);
INSERT INTO `room` VALUES (115, '2', '空闲', 41, 18, NULL, NULL);
INSERT INTO `room` VALUES (116, '3', '空闲', 41, 18, NULL, NULL);
INSERT INTO `room` VALUES (117, '1', '空闲', 42, 19, NULL, NULL);
INSERT INTO `room` VALUES (118, '2', '空闲', 42, 19, NULL, NULL);
INSERT INTO `room` VALUES (119, '1', '空闲', 43, 19, NULL, NULL);
INSERT INTO `room` VALUES (120, '2', '空闲', 43, 19, NULL, NULL);
INSERT INTO `room` VALUES (121, '1', '空闲', 44, 20, NULL, NULL);
INSERT INTO `room` VALUES (122, '2', '空闲', 44, 20, NULL, NULL);
INSERT INTO `room` VALUES (123, '3', '空闲', 44, 20, NULL, NULL);
INSERT INTO `room` VALUES (124, '1', '空闲', 45, 20, NULL, NULL);
INSERT INTO `room` VALUES (125, '2', '空闲', 45, 20, NULL, NULL);
INSERT INTO `room` VALUES (126, '1', '空闲', 46, 20, NULL, NULL);
INSERT INTO `room` VALUES (127, '2', '空闲', 46, 20, NULL, NULL);
INSERT INTO `room` VALUES (128, '1', '空闲', 47, 20, NULL, NULL);
INSERT INTO `room` VALUES (129, '2', '空闲', 47, 20, NULL, NULL);
INSERT INTO `room` VALUES (130, '3', '空闲', 47, 20, NULL, NULL);
INSERT INTO `room` VALUES (131, '1', '空闲', 48, 20, NULL, NULL);
INSERT INTO `room` VALUES (132, '2', '空闲', 48, 20, NULL, NULL);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT 0,
  `hotel_id` int(0) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hotel_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `hotelId`(`hotel_id`) USING BTREE,
  CONSTRAINT `type_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (9, '大床房', '配有一张大号床，适合单人或情侣入住', 60, 4, 8, 'http://localhost:9090/files/1709885630540-大床房.webp', NULL);
INSERT INTO `type` VALUES (10, '双床房', '配备两张单人床，适合朋友、家人或同行但需要分开睡眠的客人入住', 80, 3, 8, 'http://localhost:9090/files/1709885779556-0AD0j120009fenv9yC21E_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (11, '家庭房', '拥有多个床铺，以满足家庭成员的需求', 90, 2, 8, 'http://localhost:9090/files/1709885976990-02052120008v0ga2aC621_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (12, '整栋别墅', '完整的独立住宅', 200, 2, 8, 'http://localhost:9090/files/1709886051050-0204b120008v0gsq06EFD_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (16, '尧山优选大床房', '配备一张宽大的床，适合独自旅行或情侣入住', 45, 2, 9, 'http://localhost:9090/files/1709888402305-尧山大.webp', NULL);
INSERT INTO `type` VALUES (17, '优选双人房', '两个人住', 65, 2, 9, 'http://localhost:9090/files/1709888449653-优选双人房.webp', NULL);
INSERT INTO `type` VALUES (18, '山景精致大床房', '可以看山景的大床房', 70, 2, 9, 'http://localhost:9090/files/1709888536874-山景.webp', NULL);
INSERT INTO `type` VALUES (19, '标准大床房', '适合情侣或者一个人居住', 55, 4, 10, 'http://localhost:9090/files/1709888768766-标准大床房.webp', NULL);
INSERT INTO `type` VALUES (20, '标准双床房', '双床房', 75, 3, 10, 'http://localhost:9090/files/1709888869166-标准双床房.webp', NULL);
INSERT INTO `type` VALUES (21, '豪华套房', '豪华的套房', 100, 0, 10, 'http://localhost:9090/files/1709888959262-豪华套房.webp', NULL);
INSERT INTO `type` VALUES (22, '巢养楼豪华单间', '1张1.8米大床 | 25-30m² |', 60, 3, 11, 'http://localhost:9090/files/1709889221863-巢养楼豪华单间.webp', NULL);
INSERT INTO `type` VALUES (23, '巢养楼标准间', '2张1.2米单人床 | 28m² |', 80, 3, 11, 'http://localhost:9090/files/1709889300519-巢养楼标准间.webp', NULL);
INSERT INTO `type` VALUES (24, '湖景房', '1张1.8米大床 | 46m² |', 100, 3, 11, 'http://localhost:9090/files/1709889424039-0205h120009e2m4iw6066_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (25, '山景·吊篮大床房', '1张1.8米大床', 75, 5, 12, 'http://localhost:9090/files/1709889839963-山景·吊篮大床房.webp', NULL);
INSERT INTO `type` VALUES (26, '欢乐麻将大床房', '1张大床1.8米', 180, 4, 12, 'http://localhost:9090/files/1709889891730-欢乐麻将大床房.webp', NULL);
INSERT INTO `type` VALUES (27, '翰墨·忆兰', '1张1.51米大床', 107, 3, 13, 'http://localhost:9090/files/1709890151277-翰墨·忆兰.webp', NULL);
INSERT INTO `type` VALUES (28, '翰墨▪品竹', '1张大床1.8米', 122, 3, 13, 'http://localhost:9090/files/1709890214178-翰墨▪品竹.webp', NULL);
INSERT INTO `type` VALUES (29, '翰墨▪观风', '2张单人床1.2米', 167, 3, 13, 'http://localhost:9090/files/1709890263545-翰墨▪观风.webp', NULL);
INSERT INTO `type` VALUES (30, '翰墨·望辰', '1张单人床及1张双人床', 189, 3, 13, 'http://localhost:9090/files/1709890300924-翰墨·望辰.jpg_.webp', NULL);
INSERT INTO `type` VALUES (31, '豪华大床房', '1张大床1.8米', 139, 3, 14, 'http://localhost:9090/files/1709890611268-0200q120008tipp0678F0_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (32, '豪华麻将房', '1张1.8米大床', 160, 3, 14, 'http://localhost:9090/files/1709890648304-1mc1u12000au5jkl4051B_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (33, '豪华标准间', '2张1.3米单人床', 115, 3, 14, 'http://localhost:9090/files/1709890703384-0204w120008tiph8wF007_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (34, '精致二室二厅套房', '1张大床 及 2张双人床 及 1张炕', 1280, 3, 15, 'http://localhost:9090/files/1709891424942-0200v120008g2wtf4EDD7_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (35, '时尚大床房', '1张大床1.8米', 100, 4, 16, 'http://localhost:9090/files/1709892054489-1mc0j12000bj0hgye2C5E_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (36, '时尚双床房', '2张1.2米单人床', 120, 2, 16, 'http://localhost:9090/files/1709892100508-1mc4u12000bj0h93fB874_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (37, '舒适大床房', '1张2米特大床', 253, 3, 17, 'http://localhost:9090/files/1709892336587-0205h12000beme5drF3ED_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (38, '温馨双床房', '2张1.8米大床 ', 300, 3, 17, 'http://localhost:9090/files/1709892371799-0202e12000bemel170207_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (39, '豪华大床房', '1张1.8米大床', 148, 3, 18, 'http://localhost:9090/files/1709892527643-0206n120009s804vp6679_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (40, '标准间', '2张1.2米单人床', 132, 3, 18, 'http://localhost:9090/files/1709892556974-0203l120009s7v2d15EF2_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (41, '家庭房', '1张大床 及 1张单人床', 188, 3, 18, 'http://localhost:9090/files/1709892590792-0201h120009s7vlxv8456_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (42, '榻榻米套房', '1张1.8米大床', 373, 2, 19, 'http://localhost:9090/files/1709892836499-1mc2612000cq7lcqzB444_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (43, '湖景套房', '1张大床 或 1张单人床', 373, 2, 19, 'http://localhost:9090/files/1709892889998-1mc2f12000cgozwhh75F3_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (44, '大床房', '1张2米特大床', 59, 2, 20, 'http://localhost:9090/files/1709893117644-1mc6u12000c3684yb634A_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (45, '亲子间', '1张大床及1张双人床', 59, 2, 20, 'http://localhost:9090/files/1709893152661-1mc1m12000c368bgcCD7F_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (46, '标准间', '2张1.5米双人床', 59, 2, 20, 'http://localhost:9090/files/1709893190537-1mc3o12000c368gxxFE42_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (47, '三人间', '3张1.2米单人床', 67, 3, 20, 'http://localhost:9090/files/1709893226044-1mc2y12000c368pyq5BE2_W_1080_808_R5_D.jpg_.webp', NULL);
INSERT INTO `type` VALUES (48, '五人麻将套房', '5张1.2米单人床', 85, 2, 20, 'http://localhost:9090/files/1709893252579-1mc0712000c3691xb388F_W_1080_808_R5_D.jpg_.webp', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (4, '周zz', '11', '心累了', '18348095317', '2540618675@qq.com', 'http://localhost:9090/files/1709886883117-用户1.jpg', 'USER');
INSERT INTO `user` VALUES (5, '周yx', '123456', '青蛙五千', '186548795416', '154789524@qq.com', 'http://localhost:9090/files/1709893576495-用户2.webp', 'USER');
INSERT INTO `user` VALUES (13, '指针值', '123456', NULL, NULL, NULL, 'http://localhost:9090/files/1697438073596-avatar.png', 'USER');
INSERT INTO `user` VALUES (14, '1111111', '1111111', NULL, NULL, NULL, 'http://localhost:9090/files/1697438073596-avatar.png', 'USER');
INSERT INTO `user` VALUES (15, '22222', '22222', NULL, NULL, NULL, 'http://localhost:9090/files/1697438073596-avatar.png', 'USER');

SET FOREIGN_KEY_CHECKS = 1;
