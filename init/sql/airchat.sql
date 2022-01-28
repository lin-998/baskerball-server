/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : airchat

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 28/01/2022 17:02:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bgm
-- ----------------------------
DROP TABLE IF EXISTS `bgm`;
CREATE TABLE `bgm`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '播放地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bgm
-- ----------------------------
INSERT INTO `bgm` VALUES ('18052674D26HH32P', '王强', '大气', '/bgm/大气.mp3');
INSERT INTO `bgm` VALUES ('18052674D26HH33P', '赵刚', '轻松的早晨', '/bgm/轻松的早晨.mp3');
INSERT INTO `bgm` VALUES ('18052674D26HH3X1', '齐悦', '温馨小屋', '/bgm/温馨小屋.mp3');
INSERT INTO `bgm` VALUES ('18052674D26HH3X2', '武缃', '愉快', '/bgm/愉快.mp3');
INSERT INTO `bgm` VALUES ('18052674D26HH3X3', '严霍霍', '追寻', '/bgm/追寻.mp3');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `father_comment_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `to_user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `video_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频id',
  `from_user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '留言者，评论的用户id',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论内容',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('135240CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈1', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('18034CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈2', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('1803F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈3', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('18052150CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈4', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F50626894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈5', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F50C126894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈6', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈7', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F5346894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈8', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180522F54CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈9', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180523F533Y0837C', NULL, NULL, '180510CD0A6K3SRP', '180425CFA4RB6T0H', 'dwdawdwa', '2018-05-23 19:52:19');
INSERT INTO `comments` VALUES ('180523FATAR6C2Y8', '180523FB1BYS43HH', '180425CFA4RB6T0H', '180522FB4BZ1N9P0', '180518CKMAAM5TXP', '回复评论', '2018-05-23 20:09:30');
INSERT INTO `comments` VALUES ('180523FB1BYS43HH', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '野马~~', '2018-05-23 20:10:09');
INSERT INTO `comments` VALUES ('180523FC0MKCTS3C', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', 'dwdw', '2018-05-23 20:13:04');
INSERT INTO `comments` VALUES ('180523FCZM2CTCZC', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', 'dwqdwqdqw', '2018-05-23 20:15:58');
INSERT INTO `comments` VALUES ('180523FD1H5HG9P0', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '1fewdew', '2018-05-23 20:16:10');
INSERT INTO `comments` VALUES ('180523FDBT3S3C00', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '123', '2018-05-23 20:17:16');
INSERT INTO `comments` VALUES ('180523FDFX4HS5P0', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '43trgtew', '2018-05-23 20:17:36');
INSERT INTO `comments` VALUES ('180523H79060HNHH', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '哈多好玩聊哦', '2018-05-23 22:47:06');
INSERT INTO `comments` VALUES ('180523HATXR841KP', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '大家诶哦大家欧文', '2018-05-23 22:57:42');
INSERT INTO `comments` VALUES ('180523K2DG3SGAA8', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'dwdw', '2018-05-23 23:56:38');
INSERT INTO `comments` VALUES ('180523K2YRF1WNXP', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'ddew', '2018-05-23 23:58:03');
INSERT INTO `comments` VALUES ('180523K3FH1WT7R4', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'tgergre', '2018-05-23 23:59:45');
INSERT INTO `comments` VALUES ('1805240G4G19R0PH', '180523HATXR841KP', '180425CFA4RB6T0H', '180522FB4BZ1N9P0', '180518CKMAAM5TXP', '回复测试，final', '2018-05-24 00:45:31');
INSERT INTO `comments` VALUES ('18055W46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈11', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('180565016894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈22', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('1805650CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈33', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('1805twW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈44', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('190206C4CN35W46W', '1805240G4G19R0PH', '180930HXSB796AK4', '1902057AAGAS0B2W', '180930DRXM99CKKP', '这个视频太好看了', '2019-02-06 17:02:12');
INSERT INTO `comments` VALUES ('190206C4PDNNA51P', '1805240G4G19R0PH', '180930HXSB796AK4', '1902057AAGAS0B2W', '180930DRXM99CKKP', '这个视频太好看了', '2019-02-06 17:03:02');
INSERT INTO `comments` VALUES ('190206C4PXN7RFCH', '1805240G4G19R0PH', '180930HXSB796AK4', '1902057AAGAS0B2W', '180930DRXM99CKKP', '这个视频太好看了', '2019-02-06 17:03:05');
INSERT INTO `comments` VALUES ('190206C508XZ02Y8', NULL, NULL, '190204HD7GC9R4M8', '180930DRXM99CKKP', '我的最爱', '2019-02-06 17:03:53');
INSERT INTO `comments` VALUES ('190206C7ZHTHNXP0', 'undefined', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '太帅了', '2019-02-06 17:12:49');
INSERT INTO `comments` VALUES ('190206C89Y67RTHH', 'undefined', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '帅的无可救药', '2019-02-06 17:13:55');
INSERT INTO `comments` VALUES ('190206C8YF4B60SW', 'undefined', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '123', '2019-02-06 17:15:42');
INSERT INTO `comments` VALUES ('19020779ZFF5H7F8', 'undefined', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '太优秀了', '2019-02-07 10:18:27');
INSERT INTO `comments` VALUES ('1902077C8TCC52A8', 'undefined', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '一切都是虚无的', '2019-02-07 10:25:28');
INSERT INTO `comments` VALUES ('1902077H4BW080M8', '1902077C8TCC52A8', 'undefined', '190204HD7GC9R4M8', '180930DRXM99CKKP', '我不知道', '2019-02-07 10:37:00');
INSERT INTO `comments` VALUES ('1902077N3GX5AZXP', '19020779ZFF5H7F8', '180930DRXM99CKKP', '190204HD7GC9R4M8', '180930DRXM99CKKP', '你好优秀', '2019-02-07 10:45:55');
INSERT INTO `comments` VALUES ('19020871WN4NWBC0', 'undefined', 'undefined', '19020871BF8DM3R4', '180930DRXM99CKKP', '太帅了', '2019-02-08 09:54:08');
INSERT INTO `comments` VALUES ('19020871Y9TP10PH', 'undefined', 'undefined', '19020871BF8DM3R4', '180930DRXM99CKKP', '超级喜欢', '2019-02-08 09:54:19');
INSERT INTO `comments` VALUES ('19020871ZZS3HDAW', '19020871Y9TP10PH', '180930DRXM99CKKP', '19020871BF8DM3R4', '180930DRXM99CKKP', '这都是假象', '2019-02-08 09:54:29');
INSERT INTO `comments` VALUES ('1902089P2HB9N1WH', 'undefined', 'undefined', '190204HD1DZP45GC', '180930DRXM99CKKP', '好漂亮的风景', '2019-02-08 13:36:57');
INSERT INTO `comments` VALUES ('280522F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈55', '2018-05-22 19:52:02');
INSERT INTO `comments` VALUES ('qq1805twW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈66', '2018-05-22 19:52:02');

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '群id',
  `group_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '交流群' COMMENT '群名称',
  `group_notice` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '欢迎大家入群交流~' COMMENT '群公告',
  `group_avator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '群头像',
  `group_creater` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '群创建人',
  `creater_time` int(0) NOT NULL COMMENT '群创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES (1, '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', '交流群', '交流群', 'https://avatars2.githubusercontent.com/u/24861316?', '罗宾', 1518348455);

-- ----------------------------
-- Table structure for group_msg
-- ----------------------------
DROP TABLE IF EXISTS `group_msg`;
CREATE TABLE `group_msg`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `from_user` int(0) NOT NULL COMMENT '谁发的',
  `to_group` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '群id',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '聊天信息',
  `time` int(0) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `to_group`(`to_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_msg
-- ----------------------------
INSERT INTO `group_msg` VALUES (1, 1, '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', '路飞 : 有人不？', 1518348482);
INSERT INTO `group_msg` VALUES (2, 14, '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', '罗宾 : 有呀  我呀', 1518348493);

-- ----------------------------
-- Table structure for group_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `group_user_relation`;
CREATE TABLE `group_user_relation`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_user_relation
-- ----------------------------
INSERT INTO `group_user_relation` VALUES (2, '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', 1);
INSERT INTO `group_user_relation` VALUES (3, '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', 14);

-- ----------------------------
-- Table structure for new_friends
-- ----------------------------
DROP TABLE IF EXISTS `new_friends`;
CREATE TABLE `new_friends`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_user` int(0) NOT NULL COMMENT '主动加方',
  `to_user` int(0) NOT NULL COMMENT '被加方',
  `content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '加好友验证内容',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1同意，0未同意',
  `time` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of new_friends
-- ----------------------------
INSERT INTO `new_friends` VALUES (1, 14, 1, '您好，我想加您为好友', 1, 1518348301);
INSERT INTO `new_friends` VALUES (2, 1, 14, '咋把我删了呢', 1, 1518349582);
INSERT INTO `new_friends` VALUES (3, 1, 14, '您好，我想加您为好友', 1, 1518350494);
INSERT INTO `new_friends` VALUES (4, 1, 14, '您好，我想加您为好友', 1, 1518350921);
INSERT INTO `new_friends` VALUES (5, 1, 14, '咋把我删了呢，重新加一下', 1, 1518351200);
INSERT INTO `new_friends` VALUES (6, 14, 1, '您好，我想加您为好友', 1, 1518485362);
INSERT INTO `new_friends` VALUES (7, 14, 1, '您好，我想加您为好友', 1, 1518745791);

-- ----------------------------
-- Table structure for post_comments
-- ----------------------------
DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE `post_comments`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `father_comment_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `to_user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `post_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '动态id',
  `from_user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '留言者，评论的用户id',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论内容',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_comments
-- ----------------------------
INSERT INTO `post_comments` VALUES ('25f73e90-7a9c-11ec-9f13-9ffd9937f9e5', NULL, '123', '123', '123', '123', '2022-01-21 17:26:01');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布者id',
  `post_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户使用音频的信息',
  `like_counts` bigint(0) NULL DEFAULT 0 COMMENT '喜欢/赞美的数量',
  `status` int(0) NOT NULL DEFAULT 1 COMMENT '视频状态：\r\n1、发布成功\r\n2、禁止播放，管理员操作',
  `create_time` datetime(0) NOT NULL DEFAULT '2022-12-12 00:00:00' COMMENT '创建时间',
  `post_url` json NULL COMMENT '图片地址',
  `post_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '动态内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, '1223', NULL, 2, 1, '2022-12-12 00:00:00', NULL, '22');
INSERT INTO `posts` VALUES (3, '1223', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '22');
INSERT INTO `posts` VALUES (4, '3333', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '333');
INSERT INTO `posts` VALUES (5, '3333', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '333');
INSERT INTO `posts` VALUES (6, '3333', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '333');
INSERT INTO `posts` VALUES (7, '3333', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '333');
INSERT INTO `posts` VALUES (8, '3333', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '333');
INSERT INTO `posts` VALUES (9, '3333', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '333');
INSERT INTO `posts` VALUES (10, '3333', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '333');
INSERT INTO `posts` VALUES (11, '3333', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '333');
INSERT INTO `posts` VALUES (12, '3333', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '333');
INSERT INTO `posts` VALUES (13, '3333', NULL, 0, 1, '2022-12-12 00:00:00', NULL, '333');
INSERT INTO `posts` VALUES (14, '3333', NULL, 0, 1, '2022-12-12 00:00:00', '[\"http://localhost:3000/uploads/upload_423c37453cc81f4b0054e6e0e3e9c34e.jpg\"]', '333');
INSERT INTO `posts` VALUES (15, '3333', 'b1e61ce0-7a6b-11ec-8aa5-7b08a647d626', -1, 1, '2022-12-12 00:00:00', '[\"http://localhost:3000/uploads/upload_a91287d019bd7a0a93b9c7d9d125c62c.jpg\", \"http://localhost:3000/uploads/upload_a91287d019bd7a0a93b9c7d9d125c62c.jpg\"]', '333');
INSERT INTO `posts` VALUES (16, '123', 'ZojjVlZDcEXjtJ', 0, 1, '2022-12-12 00:00:00', NULL, '123');
INSERT INTO `posts` VALUES (17, 'ZoCcBXLH1bRrR9', 'ZoCBMX6PcF57xq', 1, 1, '2022-12-12 00:00:00', NULL, '测试内容');

-- ----------------------------
-- Table structure for private__msg
-- ----------------------------
DROP TABLE IF EXISTS `private__msg`;
CREATE TABLE `private__msg`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `from_user` int(0) NOT NULL COMMENT '谁发的',
  `to_user` int(0) NOT NULL COMMENT '发给谁',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '聊天信息',
  `time` int(0) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `from_user`(`from_user`) USING BTREE,
  INDEX `to_user`(`to_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of private__msg
-- ----------------------------
INSERT INTO `private__msg` VALUES (1, 1, 14, '路飞 : 你好罗宾', 1518348322);
INSERT INTO `private__msg` VALUES (2, 14, 1, '罗宾 : 你好呀路飞', 1518348331);
INSERT INTO `private__msg` VALUES (3, 14, 1, '罗宾 : 我建个群去 ，你待会加哈    叫 交流群', 1518348364);
INSERT INTO `private__msg` VALUES (6, 1, 14, '路飞 : 咋把我删了呢，重新加一下', 1518351218);
INSERT INTO `private__msg` VALUES (7, 14, 1, '罗宾 : 额 误删.', 1518351226);
INSERT INTO `private__msg` VALUES (8, 14, 1, '罗宾 : 在么', 1519377863);

-- ----------------------------
-- Table structure for search_records
-- ----------------------------
DROP TABLE IF EXISTS `search_records`;
CREATE TABLE `search_records`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '搜索的内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频搜索的记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of search_records
-- ----------------------------
INSERT INTO `search_records` VALUES ('1', '倾心网');
INSERT INTO `search_records` VALUES ('18051309YBCMHYRP', '风景');
INSERT INTO `search_records` VALUES ('1805130DAXX58ARP', '风景');
INSERT INTO `search_records` VALUES ('1805130DMG6P0ZC0', '风景');
INSERT INTO `search_records` VALUES ('1805130FNGHD3B0H', '倾心网');
INSERT INTO `search_records` VALUES ('180513C94W152Z7C', 'dwqdwq');
INSERT INTO `search_records` VALUES ('180513DXNT7SY04H', '风景');
INSERT INTO `search_records` VALUES ('190208938ZBZX0BC', '风景');
INSERT INTO `search_records` VALUES ('19020893SSCD5KP0', '风景');
INSERT INTO `search_records` VALUES ('19020894S5PXHF14', '风景');
INSERT INTO `search_records` VALUES ('19020894YTS49AFW', '倾心网');
INSERT INTO `search_records` VALUES ('1902089508Z0C280', 'zookeeper');
INSERT INTO `search_records` VALUES ('1902089529RCNN54', '风景');
INSERT INTO `search_records` VALUES ('2', '倾心网');
INSERT INTO `search_records` VALUES ('3', '倾心网');
INSERT INTO `search_records` VALUES ('4', '倾心网');
INSERT INTO `search_records` VALUES ('5', '倾心');
INSERT INTO `search_records` VALUES ('6', '倾心');
INSERT INTO `search_records` VALUES ('7', 'zookeeper');
INSERT INTO `search_records` VALUES ('8', 'zookeeper');
INSERT INTO `search_records` VALUES ('9', 'zookeeper');

-- ----------------------------
-- Table structure for slideshow
-- ----------------------------
DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE `slideshow`  (
  `imgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slideshow
-- ----------------------------
INSERT INTO `slideshow` VALUES ('https://i.imgur.com/hGtDGmV.jpg', '1');
INSERT INTO `slideshow` VALUES ('https://i.imgur.com/qADEl5b.jpg', '2');
INSERT INTO `slideshow` VALUES ('https://i.imgur.com/Eqzpxh7.jpg', '3');
INSERT INTO `slideshow` VALUES ('https://i.imgur.com/iE28U5D.jpg', '4');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NOT NULL' COMMENT '用户名',
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NOT NULL' COMMENT '密码',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '性别',
  `avator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'https://avatars2.githubusercontent.com/u/24861316?s=460&v=4' COMMENT '头像',
  `place` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来自哪里',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '在线状态,0离线,1在线',
  `socketid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登陆时的socketid',
  `website` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人网站',
  `github` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('2d93a2c0-743d-11ec-b6ca-25846a117739', '101', '0192023a7bbd73250516f069df18b500', '0', 'https://avatars2.githubusercontent.com/u/24861316?s=460&v=4', NULL, 0, '', NULL, NULL, NULL);
INSERT INTO `user_info` VALUES ('2f48b15b-8f17-47f1-9ba7-efc4a49bb298', 'lin', '0192023a7bbd73250516f069df18b500', '0', 'https://i.imgur.com/qADEl5b.jpg', NULL, 0, '', NULL, NULL, NULL);
INSERT INTO `user_info` VALUES ('7725aba0-743c-11ec-b6ca-25846a117739', '100', '0192023a7bbd73250516f069df18b500', '0', 'https://i.imgur.com/qADEl5b.jpg', NULL, 0, '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_user_relation`;
CREATE TABLE `user_user_relation`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL COMMENT '用户',
  `other_user_id` int(0) NOT NULL COMMENT '用户的朋友',
  `remark` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `shield` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0不屏蔽 1屏蔽',
  `time` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_user_relation
-- ----------------------------
INSERT INTO `user_user_relation` VALUES (1, 1, 14, '网友', 0, 1518348308);
INSERT INTO `user_user_relation` VALUES (2, 14, 1, '23333', 0, 1518745801);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `avator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '我的头像，如果没有默认给一张',
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `fans_counts` int(0) NULL DEFAULT 0 COMMENT '我的粉丝数量',
  `follow_counts` int(0) NULL DEFAULT 0 COMMENT '我关注的人总数',
  `receive_like_counts` int(0) NULL DEFAULT 0 COMMENT '我接受到的赞美/收藏 的数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `username`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1001', 'test-test-1111', '9999', '/path000999', '倾心网好牛十分牛~', 123456, 111, 222);
INSERT INTO `users` VALUES ('180425B0B3N6B25P', 'test11', 'wzNncBURtPYCDsYd7TUgWQ==', NULL, 'test', 0, 0, 0);
INSERT INTO `users` VALUES ('180425BNSR1CG0H0', 'abc', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'abc', 1, 0, 1);
INSERT INTO `users` VALUES ('180425CFA4RB6T0H', 'test', 'kU8h64TG/bK2Y91vRT9lyg==', '/180425CFA4RB6T0H/face/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.W0eLNdT6MIvD3ba01f74ba779caa63d038c3c8200b4a.jpg', 'test1', 0, 2, 6);
INSERT INTO `users` VALUES ('180426F4D35R04X4', 'aaa', 'R7zlx09Yn0hn29V+nKn4CA==', NULL, 'aaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180426F55CZPA9YW', 'aaaa', 'R7zlx09Yn0hn29V+nKn4CA==', NULL, 'aaaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GA3SBB4DP0', '1001', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '1001', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GAK87AB0X4', '10401', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10401', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GAWCC17KWH', '104701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '104701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GBDFKDG5D4', '10re4701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10re4701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GBKN0YRFRP', '10rwee4701', 'bfw1xHdW6WLvBV0QSfH47A==', NULL, '10rwee4701', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GH49XRZHX4', '390213890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390213890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GHH12WXPZC', '390ewqewq213890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390ewqewq213890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426GHHPZ7NTC0', '390ewqewq21ewqe3890', 'H9V/tnfgt6nniqH5bDZ0hQ==', NULL, '390ewqewq21ewqe3890', 0, 0, 0);
INSERT INTO `users` VALUES ('180426H0GWP0C3HH', 'jdiowqjodij', 'wEmTz54sy+StEzB+TrtGSQ==', NULL, 'jdiowqjodij', 0, 0, 0);
INSERT INTO `users` VALUES ('180518CHS7SXMCX4', 'aaaaa', 'WU+AOzgKQTlu1j3KOVA1Qg==', NULL, 'aaaaa', 0, 0, 0);
INSERT INTO `users` VALUES ('180930DRXM99CKKP', 'jack', '4QrcOUm6Wau+VuBX8g+IPg==', '/180930DRXM99CKKP/face/tmp_a05a3272ef51c3b724ab6d810b94d68c3c0d83c464f2792d.jpg', 'jack123', 11, 11, 36);
INSERT INTO `users` VALUES ('180930DTN8M0WP6W', 'Ticket', '123456', NULL, 'Luck', -1, 0, 0);
INSERT INTO `users` VALUES ('180930F65GTG1T7C', 'Luck', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930HXSB796AK4', 'Daddy', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 1, 0, 0);
INSERT INTO `users` VALUES ('180930K19MAGGZ0H', 'tt', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930K2WZ49D968', 'Angle', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930K33RP92F5P', 'Text', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('180930K3D6W4B44H', 'Java', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('19010493YR0BKZ54', 'wang', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'ming', 0, 0, 0);
INSERT INTO `users` VALUES ('e0f95ec0-7444-11ec-b0b5-75a0c1a5f55e', '101', '0192023a7bbd73250516f069df18b500', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('ZoCcBXLH1bRrR9', 'lin', '0192023a7bbd73250516f069df18b500', NULL, NULL, 0, 0, 0);
INSERT INTO `users` VALUES ('ZuelZc8eEnITLN', 'hhh', '202cb962ac59075b964b07152d234b70', NULL, NULL, 0, 0, 0);

-- ----------------------------
-- Table structure for users_fans
-- ----------------------------
DROP TABLE IF EXISTS `users_fans`;
CREATE TABLE `users_fans`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户',
  `fan_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '粉丝',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`, `fan_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户粉丝关联关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_fans
-- ----------------------------
INSERT INTO `users_fans` VALUES ('19020872T2CMABXP', '180425BNSR1CG0H0', '180930DRXM99CKKP');
INSERT INTO `users_fans` VALUES ('10010', '180930DRXM99CKKP', '180930DRXM99CKKP');
INSERT INTO `users_fans` VALUES ('190207DWTP066M3C', '180930HXSB796AK4', '180930DRXM99CKKP');

-- ----------------------------
-- Table structure for users_like_posts
-- ----------------------------
DROP TABLE IF EXISTS `users_like_posts`;
CREATE TABLE `users_like_posts`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户',
  `post_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '动态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_post_rel`(`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户喜欢的/赞过的动态' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_like_posts
-- ----------------------------
INSERT INTO `users_like_posts` VALUES ('66', '333', 'b1e61ce0-7a6b-11ec-8aa5-7b08a647d626');
INSERT INTO `users_like_posts` VALUES ('cbc3b900-7a8a-11ec-89f1-71e5e08dccd5', '3333', 'b1e61ce0-7a6b-11ec-8aa5-7b08a647d626');
INSERT INTO `users_like_posts` VALUES ('f87f4630-7a6c-11ec-b617-8dcc6c51851f', 'b1e61ce0-7a6b-11ec-8aa5-7b08a647d626', '3333');
INSERT INTO `users_like_posts` VALUES ('ZoDINbp3yQFC9O', 'ZoCcBXLH1bRrR9', 'ZoCBMX6PcF57xq');

-- ----------------------------
-- Table structure for users_like_videos
-- ----------------------------
DROP TABLE IF EXISTS `users_like_videos`;
CREATE TABLE `users_like_videos`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户',
  `video_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_video_rel`(`user_id`, `video_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户喜欢的/赞过的视频' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_like_videos
-- ----------------------------
INSERT INTO `users_like_videos` VALUES ('180520HSBDW6M0SW', '1001', '180510CD0A6K3SRP');
INSERT INTO `users_like_videos` VALUES ('180520HSBDW6M96', '1001', '190202GG6052NZM1');
INSERT INTO `users_like_videos` VALUES ('180520HBA054FPPH', '180518CKMAAM5TXP', '180510CCX05TABHH');
INSERT INTO `users_like_videos` VALUES ('19020893TTC3YCX4', '180930DRXM99CKKP', '190204HCWXA5N72W');
INSERT INTO `users_like_videos` VALUES ('1902088630D14940', '180930DRXM99CKKP', '190204HD1DZP45GC');
INSERT INTO `users_like_videos` VALUES ('1902057W61CM0XD4', '180930DRXM99CKKP', '1902057AAGAS0B2W');
INSERT INTO `users_like_videos` VALUES ('190208860KMYG7R4', '180930DRXM99CKKP', '19020871BF8DM3R4');

-- ----------------------------
-- Table structure for users_report
-- ----------------------------
DROP TABLE IF EXISTS `users_report`;
CREATE TABLE `users_report`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deal_user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '被举报用户id',
  `deal_video_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型标题，让用户选择，详情见 枚举',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `userid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '举报人的id',
  `create_date` datetime(0) NOT NULL COMMENT '举报时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '举报用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_report
-- ----------------------------
INSERT INTO `users_report` VALUES ('180521FZ501ABDYW', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '引人不适', '不合时宜的视频', '180518CKMAAM5TXP', '2018-05-21 20:58:35');
INSERT INTO `users_report` VALUES ('180521FZK44ZRWX4', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '引人不适', '不合时宜的视频', '180518CKMAAM5TXP', '2018-05-21 20:59:53');
INSERT INTO `users_report` VALUES ('180521FZR1TYRTXP', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '辱骂谩骂', 't4t43', '180518CKMAAM5TXP', '2018-05-21 21:00:18');
INSERT INTO `users_report` VALUES ('190205BX4519AYK4', '180930DRXM99CKKP', '190204HCS3P9539P', '广告垃圾', '内容影响身心健康', '180425B0B3N6B25P', '2019-02-05 16:40:16');
INSERT INTO `users_report` VALUES ('190205BXG76P65P0', '180930DRXM99CKKP', '1902057AAGAS0B2W', '广告垃圾', '内容不适宜大众观看', '180930DRXM99CKKP', '2019-02-05 16:41:28');
INSERT INTO `users_report` VALUES ('190205BY6SFD4ZC0', '180930DRXM99CKKP', '1902057AAGAS0B2W', '诱导分享', '', '180930DRXM99CKKP', '2019-02-05 16:43:33');
INSERT INTO `users_report` VALUES ('190205BYD3NR4GMW', '180930DRXM99CKKP', '190204HD7GC9R4M8', '引人不适', '', '180930DRXM99CKKP', '2019-02-05 16:44:14');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布者id',
  `audio_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户使用音频的信息',
  `video_desc` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视频描述',
  `video_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频存放的路径',
  `video_seconds` float(6, 2) NULL DEFAULT NULL COMMENT '视频秒数',
  `video_width` int(0) NULL DEFAULT NULL COMMENT '视频宽度',
  `video_height` int(0) NULL DEFAULT NULL COMMENT '视频高度',
  `cover_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视频封面图',
  `like_counts` bigint(0) NOT NULL DEFAULT 0 COMMENT '喜欢/赞美的数量',
  `status` int(0) NOT NULL COMMENT '视频状态：\r\n1、发布成功\r\n2、禁止播放，管理员操作',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('190202H0HWS2MXKP', '180930DRXM99CKKP', '18052674D26HH33P', '666', '/180930DRXM99CKKP/video/aeaf247b-f45d-4f1e-b8ad-0e6e4e2754cd.mp4', 10.00, 320, 320, '/180930DRXM99CKKP/video/aeaf247b-f45d-4f1e-b8ad-0e6e4e2754cd.mp4.jpg', 0, 1, '2019-02-02 22:26:55');
INSERT INTO `videos` VALUES ('190204HCS3P9539P', '180930DRXM99CKKP', '18052674D26HH3X2', '今天好开心', '/180930DRXM99CKKP/video/a8197700-1444-4ccf-90a3-4fe0401d177d.mp4', 10.20, 272, 480, '/180930DRXM99CKKP/video/a8197700-1444-4ccf-90a3-4fe0401d177d.mp4.jpg', 0, 1, '2019-02-04 23:03:31');
INSERT INTO `videos` VALUES ('190204HCWXA5N72W', '180930DRXM99CKKP', '18052674D26HH33P', '风景好好看', '/180930DRXM99CKKP/video/1ac23cab-ffeb-45f0-81a5-d9a0400ceadf.mp4', 10.03, 272, 480, '/180930DRXM99CKKP/video/1ac23cab-ffeb-45f0-81a5-d9a0400ceadf.mp4.jpg', 1, 1, '2019-02-04 23:03:49');
INSERT INTO `videos` VALUES ('190204HD1DZP45GC', '180930DRXM99CKKP', '18052674D26HH3X3', '一切都是最好的安排', '/180930DRXM99CKKP/video/1adf2894-3b3b-4510-ba96-f4c35e0872f9.mp4', 10.45, 720, 1280, '/180930DRXM99CKKP/video/1adf2894-3b3b-4510-ba96-f4c35e0872f9.mp4.jpg', 1, 1, '2019-02-04 23:04:18');
INSERT INTO `videos` VALUES ('190204HD4H41RCDP', '180930DRXM99CKKP', '18052674D26HH3X1', '室外的风光最美', '/180930DRXM99CKKP/video/c07fd38c-67bb-49d3-a9cb-09a661b71c03.mp4', 9.93, 480, 853, '/180930DRXM99CKKP/video/c07fd38c-67bb-49d3-a9cb-09a661b71c03.mp4.jpg', 0, 1, '2019-02-04 23:04:38');
INSERT INTO `videos` VALUES ('1902057AAGAS0B2W', '180930DRXM99CKKP', '18052674D26HH3X3', '今天真美好', '/180930DRXM99CKKP/video/aa1d40cc-f3d0-404c-b229-1ac9762f0cf7.mp4', 10.20, 272, 480, '/180930DRXM99CKKP/video/aa1d40cc-f3d0-404c-b229-1ac9762f0cf7.mp4.jpg', 1, 1, '2019-02-05 10:19:38');
INSERT INTO `videos` VALUES ('19020871BF8DM3R4', '180425BNSR1CG0H0', '18052674D26HH32P', '人家才不是小孩子', '/180425BNSR1CG0H0/video/91a413f3-9e6d-4ed0-9670-f2b9f7c91546.mp4', 9.03, 640, 362, '/180425BNSR1CG0H0/video/91a413f3-9e6d-4ed0-9670-f2b9f7c91546.mp4.jpg', 1, 1, '2019-02-08 09:52:43');

SET FOREIGN_KEY_CHECKS = 1;
