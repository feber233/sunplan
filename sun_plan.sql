/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : sun_plan

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 11/04/2020 17:17:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package`  (
  `uid` int(11) NULL DEFAULT NULL,
  `sid` int(11) NULL DEFAULT NULL,
  `count` int(32) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of package
-- ----------------------------
INSERT INTO `package` VALUES (29, 95, 1);
INSERT INTO `package` VALUES (29, 76, 1);
INSERT INTO `package` VALUES (29, 77, 1);

-- ----------------------------
-- Table structure for s_type
-- ----------------------------
DROP TABLE IF EXISTS `s_type`;
CREATE TABLE `s_type`  (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_type
-- ----------------------------
INSERT INTO `s_type` VALUES (1, '头像');
INSERT INTO `s_type` VALUES (2, '书籍');
INSERT INTO `s_type` VALUES (3, '网上课程');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disc` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prize` int(10) NULL DEFAULT NULL,
  `t_id` int(11) NULL DEFAULT NULL,
  `url` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `src` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `store_type_fk`(`t_id`) USING BTREE,
  CONSTRAINT `store_type_fk` FOREIGN KEY (`t_id`) REFERENCES `s_type` (`t_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, '头像1', '一个头像', 100, 1, 'upload/bae30user1-128x128.jpg', '');
INSERT INTO `store` VALUES (2, '梦中的婚礼简谱', '教你快速上手梦中的婚礼', 900, 2, 'upload/9775fjiangxuan_4.jpg', 'upload/【带简谱】水边的阿迪丽娜.zip');
INSERT INTO `store` VALUES (3, '梦中的婚礼教学视频', '教你快速上手钢琴曲梦中的婚礼', 1000, 3, 'upload/7e14djiangxuan_3.jpg', 'upload/《梦中的婚礼》视频.mp4');
INSERT INTO `store` VALUES (75, '头像2', '一个头像', 100, 1, 'upload/1d279user2-160x160.jpg', '');
INSERT INTO `store` VALUES (76, '梦中的婚礼简谱', '教你快速上手梦中的婚礼', 900, 2, 'upload/a80b5collection_pic.jpg', 'upload/【带简谱】水边的阿迪丽娜.zip');
INSERT INTO `store` VALUES (77, '梦中的婚礼教学视频', '教你快速上手钢琴曲梦中的婚礼', 1000, 3, 'upload/90bc5jiangxuan_1.jpg', 'upload/《梦中的婚礼》视频.mp4');
INSERT INTO `store` VALUES (78, '头像3', '一个头像', 100, 1, 'upload/9e5fcuser3-128x128.jpg', '');
INSERT INTO `store` VALUES (79, '头像4', '一个头像', 100, 1, 'upload/43211user4-128x128.jpg', '');
INSERT INTO `store` VALUES (80, '头像5', '一个头像', 100, 1, 'upload/bd1eduser5-128x128.jpg', '');
INSERT INTO `store` VALUES (81, '头像6', '一个头像', 100, 1, 'upload/eb6afuser6-128x128.jpg', '');
INSERT INTO `store` VALUES (82, '头像7', '一个头像', 100, 1, 'upload/993a6user7-128x128.jpg', '');
INSERT INTO `store` VALUES (83, '梦中的婚礼简谱', '教你快速上手梦中的婚礼', 900, 2, 'upload/340bcjingxuan_2.jpg', 'upload/【带简谱】水边的阿迪丽娜.zip');
INSERT INTO `store` VALUES (84, '梦中的婚礼教学视频', '教你快速上手钢琴曲梦中的婚礼', 1000, 3, 'upload/4b4e204-search_09.jpg', 'upload/《梦中的婚礼》视频.mp4');
INSERT INTO `store` VALUES (85, '梦中的婚礼简谱', '教你快速上手梦中的婚礼', 900, 2, 'upload/9775fjiangxuan_4.jpg', 'upload/【带简谱】水边的阿迪丽娜.zip');
INSERT INTO `store` VALUES (86, '梦中的婚礼教学视频', '教你快速上手钢琴曲梦中的婚礼', 1000, 3, 'upload/4b4e204-search_09.jpg', 'upload/《梦中的婚礼》视频.mp4');
INSERT INTO `store` VALUES (87, '梦中的婚礼简谱', '教你快速上手梦中的婚礼', 900, 2, 'upload/9775fjiangxuan_4.jpg', 'upload/【带简谱】水边的阿迪丽娜.zip');
INSERT INTO `store` VALUES (88, '梦中的婚礼教学视频', '教你快速上手钢琴曲梦中的婚礼', 1000, 3, 'upload/4b4e204-search_09.jpg', 'upload/《梦中的婚礼》视频.mp4');
INSERT INTO `store` VALUES (89, '梦中的婚礼简谱', '教你快速上手梦中的婚礼', 900, 2, 'upload/9775fjiangxuan_4.jpg', 'upload/【带简谱】水边的阿迪丽娜.zip');
INSERT INTO `store` VALUES (90, '梦中的婚礼教学视频', '教你快速上手钢琴曲梦中的婚礼', 1000, 3, 'upload/4b4e204-search_09.jpg', 'upload/《梦中的婚礼》视频.mp4');
INSERT INTO `store` VALUES (91, '梦中的婚礼简谱', '教你快速上手梦中的婚礼', 900, 2, 'upload/9775fjiangxuan_4.jpg', 'upload/【带简谱】水边的阿迪丽娜.zip');
INSERT INTO `store` VALUES (92, '梦中的婚礼教学视频', '教你快速上手钢琴曲梦中的婚礼', 1000, 3, 'upload/4b4e204-search_09.jpg', 'upload/《梦中的婚礼》视频.mp4');
INSERT INTO `store` VALUES (93, '梦中的婚礼简谱', '教你快速上手梦中的婚礼', 900, 2, 'upload/9775fjiangxuan_4.jpg', 'upload/【带简谱】水边的阿迪丽娜.zip');
INSERT INTO `store` VALUES (94, '梦中的婚礼教学视频', '教你快速上手钢琴曲梦中的婚礼', 1000, 3, 'upload/4b4e204-search_09.jpg', 'upload/《梦中的婚礼》视频.mp4');
INSERT INTO `store` VALUES (95, '头像8', '一个头像', 100, 1, 'upload/6652auser8-128x128.jpg', '');
INSERT INTO `store` VALUES (96, '头像1', '一个头像', 100, 1, 'upload/user7-128x128.jpg', '');
INSERT INTO `store` VALUES (97, '头像1', '一个头像', 100, 1, 'upload/user7-128x128.jpg', '');
INSERT INTO `store` VALUES (98, '头像1', '一个头像', 100, 1, 'upload/user7-128x128.jpg', '');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disc` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES (1, '定时登录任务1', '5:00~6:00之间登录完成', 20);
INSERT INTO `task` VALUES (2, '定时登录任务2', '6:00~7:00之间登录完成', 15);
INSERT INTO `task` VALUES (3, '定时登录任务3', '7:00~9:00之间登录完成', 8);
INSERT INTO `task` VALUES (18, '找找黄金屋', '再忙也要在书中充实一下自己', 15);
INSERT INTO `task` VALUES (19, '我要飞檐走壁', '锻炼一下武学，强身健体！', 15);
INSERT INTO `task` VALUES (20, '我所想的最浪漫的事', '做些自己觉得有意义的事吧！', 15);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gander` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bir` date NULL DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lv` int(32) NULL DEFAULT NULL,
  `last_time` date NULL DEFAULT NULL,
  `img` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` int(32) NULL DEFAULT NULL,
  `clicktime` date NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (28, 'lqz', '111111', '男', '1998-06-04', 'e233@163.com', 1, '2020-04-10', 'img/user1-128x128.jpg', 15, '2020-04-10');
INSERT INTO `user` VALUES (29, '001', '111111', '男', '2020-04-01', '11@111.cn', 1, '2020-04-11', 'img/user1-128x128.jpg', 998045, '2020-04-11');

-- ----------------------------
-- Table structure for ut
-- ----------------------------
DROP TABLE IF EXISTS `ut`;
CREATE TABLE `ut`  (
  `uid` int(10) NULL DEFAULT NULL,
  `tid` int(10) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ut
-- ----------------------------
INSERT INTO `ut` VALUES (29, 1, 0);
INSERT INTO `ut` VALUES (29, 2, 0);
INSERT INTO `ut` VALUES (29, 3, 0);
INSERT INTO `ut` VALUES (29, 18, 1);
INSERT INTO `ut` VALUES (29, 19, 1);
INSERT INTO `ut` VALUES (29, 20, 1);

SET FOREIGN_KEY_CHECKS = 1;
