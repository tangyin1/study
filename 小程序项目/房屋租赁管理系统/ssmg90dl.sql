/*
 Navicat MySQL Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : ssmg90dl

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 22/05/2024 10:09:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/ssmg90dl/upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/ssmg90dl/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/ssmg90dl/upload/picture3.jpg');

-- ----------------------------
-- Table structure for fangwuleixing
-- ----------------------------
DROP TABLE IF EXISTS `fangwuleixing`;
CREATE TABLE `fangwuleixing`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `fangwuleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '房屋类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fangwuleixing
-- ----------------------------
INSERT INTO `fangwuleixing` VALUES (41, '2021-04-19 17:47:22', '学区房');
INSERT INTO `fangwuleixing` VALUES (42, '2021-04-19 17:47:22', '单身公寓');
INSERT INTO `fangwuleixing` VALUES (43, '2021-04-19 17:47:22', '经济房');
INSERT INTO `fangwuleixing` VALUES (44, '2021-04-19 17:47:22', '店铺');
INSERT INTO `fangwuleixing` VALUES (45, '2021-04-19 17:47:22', '商务房');
INSERT INTO `fangwuleixing` VALUES (46, '2021-04-19 17:47:22', '豪华别墅');

-- ----------------------------
-- Table structure for fangwuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `fangwuxinxi`;
CREATE TABLE `fangwuxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `fangwuhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋号',
  `fangwumingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `mianji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '面积',
  `jiage` int NOT NULL COMMENT '价格',
  `xiangxidizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `zhuangtai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  `xiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '详情',
  `zhongjiezhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '中介账号',
  `zhongjiexingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '中介姓名',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `fangwuhao`(`fangwuhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716294794344 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '房屋信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fangwuxinxi
-- ----------------------------
INSERT INTO `fangwuxinxi` VALUES (31, '2021-04-19 17:47:22', '房屋号1', '学区A1', '学区房', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian1.jpg', '100平方米', 3600, '江西省抚州市临川区学府大道东紫荆小区11栋1103室', '已出租', '<p>三室一厅一卫一厨，家电齐全，离学校近，步行十分钟到达临川一中后门</p>', 'Jack', '李大牛', '13823888881');
INSERT INTO `fangwuxinxi` VALUES (32, '2021-04-19 17:47:22', '房屋号2', '单身B12', '单身公寓', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian2.jpg', '80平米', 3000, '江西省南昌市紫荆路幸福小区11栋2203', '待出租', '<p>距离地铁口只有两百米，生活配套设施齐全，采光好，隔音好，电梯房</p>', 'Marry', '曾小花', '13823888882');
INSERT INTO `fangwuxinxi` VALUES (33, '2021-04-19 17:47:22', '房屋号3', '经济房A3', '经济房', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian3.jpg', '100平米', 1000, '江西省萍乡市中山路天天小区01栋401', '待出租', '<p>远离市区喧嚣，环境优美，空气清新，经济实惠，配套家具齐全，精装修</p>', 'Tom', '汤俊', '13823888883');
INSERT INTO `fangwuxinxi` VALUES (34, '2021-04-19 17:47:22', '房屋号4', '店铺B3', '店铺', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian4.jpg', '60平米', 8000, '江西省赣州市赣东大道204', '待出租', '<p>闹市街区，人流量大，处于商业街中心，门口步行街和商场，适合创业！</p>', 'Lucy', '李美丽', '13823888884');
INSERT INTO `fangwuxinxi` VALUES (35, '2021-04-19 17:47:22', '房屋号5', '商务N2', '商务房', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian5.jpg', '70平米', 3500, '江西省南昌市青山湖区张三小区11栋1101', '待出租', '<p>出行方便，有停车位，电梯房，商务风精装修，隔音效果好，房租便宜，上任租客因工作搬走，总共入住时间不超过1年</p>', 'AAA金牌销售', '黄磊', '13823888885');
INSERT INTO `fangwuxinxi` VALUES (36, '2021-04-19 17:47:22', '房屋号6', '别墅C8', '豪华别墅', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian6.jpg', '3200平米', 15000, '江西省萍乡市学府大道书香清苑A3户', '待出租', '<p>欧式装修别墅，适合一家人居住，门口县幼儿园，开车十分钟可到达萍乡实验中学</p>', 'tian', '管泽元', '13823888886');
INSERT INTO `fangwuxinxi` VALUES (1716293621724, '2024-05-21 20:13:41', '1716293280131', '学区房A1', '学区房', 'http://localhost:8080/ssmg90dl/upload/1716293582345.jpg', '100平米', 3600, '江西省抚州市临川区学府大道东紫荆小区11栋1103室', '已出租', '<p>三室一厅一卫一厨，家电齐全，离学校近，步行十分钟到达临川一中后门</p>', 'Jack', '李大牛', '13823888881');
INSERT INTO `fangwuxinxi` VALUES (1716293792417, '2024-05-21 20:16:31', '1716293709362', '学区A1', '学区房', 'http://localhost:8080/ssmg90dl/upload/1716293716274.jpg', '100平米', 3600, '江西省抚州市临川区学府大道东紫荆小区11栋1103室', '已出租', '<p>三室一厅一卫一厨，家电齐全，离学校近，步行十分钟到达临川一中后门</p>', 'Jack', '李大牛', '13823888881');
INSERT INTO `fangwuxinxi` VALUES (1716294612374, '2024-05-21 20:30:11', '1716294595367', '1', '学区房', '', '1', 11, 'dsdsadsad', '已出租', '', 'Jack', '李大牛', '13823888881');
INSERT INTO `fangwuxinxi` VALUES (1716294794343, '2024-05-21 20:33:13', '1716294753754', '学区A1', '学区房', 'http://localhost:8080/ssmg90dl/upload/1716294769654.jpg', '100', 333, '放大发', '待出租', '', 'Hark', '赵小明', '18507946396');

-- ----------------------------
-- Table structure for fangyuanguanli
-- ----------------------------
DROP TABLE IF EXISTS `fangyuanguanli`;
CREATE TABLE `fangyuanguanli`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `fangwuhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋号',
  `fangwumingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `mianji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '面积',
  `xiangxidizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `shebeipeizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '设备配置',
  `zhuangxiuqingkuang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '装修情况',
  `fangwuxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '房屋详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '房源管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fangyuanguanli
-- ----------------------------
INSERT INTO `fangyuanguanli` VALUES (1, '2024-05-21 20:04:14', '111', '筒子楼(精装修)', '精装修', 'http://localhost:8080/ssmg90dl/upload/1716294879842.jpg', '100', '翻斗花园', '全套', '<p>精装修</p>', '<p>精装修</p>');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 11, '用户1', 'yonghu', '用户', 'vlcrw3ps0nhg6rc1w8wrlcy2j3exp76x', '2024-05-15 15:01:17', '2024-05-21 16:12:59');
INSERT INTO `token` VALUES (2, 1, 'abo', 'users', '管理员', 'kdzizrpnjfy4ch7vz2d4cabue0c4xnb6', '2024-05-15 15:02:13', '2024-05-22 09:38:14');
INSERT INTO `token` VALUES (3, 1715825050336, '高诚', 'yonghu', '用户', '187otg5oye6u4jza4841j33q5ccg7gmr', '2024-05-16 10:04:21', '2024-05-21 10:20:38');
INSERT INTO `token` VALUES (4, 1715864520980, '111', 'yonghu', '用户', 'f69gn0igpzonbp9ga91m9e66kej3l67x', '2024-05-16 21:02:12', '2024-05-16 22:02:13');
INSERT INTO `token` VALUES (5, 1716254079405, 'test', 'yonghu', '用户', 'itt31zbbpt4eis0nzwjjmgqleebc5uau', '2024-05-21 09:14:50', '2024-05-21 10:14:51');
INSERT INTO `token` VALUES (6, 12, '用户2', 'yonghu', '用户', '8slcwwwr9p2rah6b9mnuk79cangpuwrb', '2024-05-21 09:24:59', '2024-05-21 16:04:59');
INSERT INTO `token` VALUES (7, 21, '中介1', 'zhongjie', '中介', '5r6odzqvk50alzmx3g8qvy3905wiplhd', '2024-05-21 09:33:11', '2024-05-21 21:35:47');
INSERT INTO `token` VALUES (8, 1716275670417, 'test1', 'yonghu', '用户', 'xt09gq4brb1rvye6gu628aw5fkmvt25w', '2024-05-21 15:14:59', '2024-05-21 16:27:25');
INSERT INTO `token` VALUES (9, 1716280168400, '黄小磊', 'yonghu', '用户', 'o82kjimnehqze7grvkhzfqcvt3x5ectf', '2024-05-21 16:29:50', '2024-05-21 17:29:50');
INSERT INTO `token` VALUES (10, 1716280561737, '付小碧', 'yonghu', '用户', 'nzrj3tux04e4cuh5i36aufkes7gous79', '2024-05-21 16:36:17', '2024-05-21 17:36:17');
INSERT INTO `token` VALUES (11, 1716280819617, '宇宙暴龍战士暴打fbc', 'yonghu', '用户', 'h2xsu4dkwe7kbgt3qredyd3yp894qq4l', '2024-05-21 16:40:57', '2024-05-22 09:37:26');
INSERT INTO `token` VALUES (12, 1716294733081, 'Hark', 'zhongjie', '中介', 'neyd35lz4mtdze1jt0z780sjsrcl6bh9', '2024-05-21 20:32:23', '2024-05-22 09:45:39');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2021-04-19 17:47:22');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` int NULL DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716280819618 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2021-04-19 17:47:22', '爱吃皮皮虾的小张', '123456', '张三', '男', 21, '13823888881', '440300199101010001', '773890001@qq.com', 'http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian1.jpg');
INSERT INTO `yonghu` VALUES (12, '2021-04-19 17:47:22', '冷少', '123456', '牛大力', '男', 19, '13823888882', '440300199202020002', '773890002@qq.com', 'http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian2.jpg');
INSERT INTO `yonghu` VALUES (13, '2021-04-19 17:47:22', '花开富贵', '123456', '李小花', '男', 30, '13823888883', '440300199303030003', '773890003@qq.com', 'http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian3.jpg');
INSERT INTO `yonghu` VALUES (14, '2021-04-19 17:47:22', '林家小妹', '123456', '林琳', '男', 23, '13823888884', '440300199404040004', '773890004@qq.com', 'http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian4.jpg');
INSERT INTO `yonghu` VALUES (15, '2021-04-19 17:47:22', '也好', '123456', '付小曼', '女', 24, '13823888885', '440300199505050005', '773890005@qq.com', 'http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian5.jpg');
INSERT INTO `yonghu` VALUES (16, '2021-04-19 17:47:22', 'AAAA美容美发小美', '123456', '黄雪儿', '女', 20, '13823888886', '440300199606060006', '773890006@qq.com', 'http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian6.jpg');
INSERT INTO `yonghu` VALUES (1716254079405, '2024-05-21 09:14:39', 'test', '123456', 'test', '男', 24, '15566448899', '362201255512057894', '121321312@qq.com', NULL);
INSERT INTO `yonghu` VALUES (1716275670417, '2024-05-21 15:14:30', 'test1', '123', 'test', '男', 19, '13423425678', '301023200202134567', '2283176194@qq.com', NULL);
INSERT INTO `yonghu` VALUES (1716280168400, '2024-05-21 16:29:28', '黄小磊', '123456', '黄磊', '男', 18, '17679248336', '364545199612037853', '121321312@qq.com', 'http://localhost:8080/ssmg90dl/upload/1716280198346.jpeg');
INSERT INTO `yonghu` VALUES (1716280561737, '2024-05-21 16:36:01', '付小碧', '1234', '付碧成', '男', 22, '13751977984', '361010200210234769', '121151512@qq.com', 'http://localhost:8080/ssmg90dl/upload/1716280585024.jpg');
INSERT INTO `yonghu` VALUES (1716280819617, '2024-05-21 16:40:19', '宇宙暴龍战士暴打fbc', '123', '高诚', '男', 20, '17679248336', '364023200316267853', '321323215@123.com', NULL);

-- ----------------------------
-- Table structure for zhongjie
-- ----------------------------
DROP TABLE IF EXISTS `zhongjie`;
CREATE TABLE `zhongjie`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zhongjiezhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '中介账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `zhongjiexingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '中介姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `nianling` int NULL DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhongjiezhanghao`(`zhongjiezhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716294733082 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '中介' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhongjie
-- ----------------------------
INSERT INTO `zhongjie` VALUES (21, '2021-04-19 17:47:22', 'Jack', '123456', '李大牛', '男', 'http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang1.jpg', '440300199101010001', '13823888881', 40);
INSERT INTO `zhongjie` VALUES (22, '2021-04-19 17:47:22', 'Marry', '123456', '曾小花', '女', 'http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang2.jpg', '440300199202020002', '13823888882', 45);
INSERT INTO `zhongjie` VALUES (23, '2021-04-19 17:47:22', 'Tom', '123456', '汤俊', '男', 'http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang3.jpg', '440300199303030003', '13823888883', 34);
INSERT INTO `zhongjie` VALUES (24, '2021-04-19 17:47:22', 'Lucy', '123456', '李美丽', '女', 'http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang4.jpg', '440300199404040004', '13823888884', 38);
INSERT INTO `zhongjie` VALUES (25, '2021-04-19 17:47:22', 'AAA金牌销售', '123456', '黄磊', '男', 'http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang5.jpg', '440300199505050005', '13823888885', 29);
INSERT INTO `zhongjie` VALUES (26, '2021-04-19 17:47:22', 'tian', '123456', '管泽元', '男', 'http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang6.jpg', '440300199606060006', '13823888886', 40);
INSERT INTO `zhongjie` VALUES (1716294733081, '2024-05-21 20:32:13', 'Hark', '123456', '赵小明', NULL, NULL, '232214200206134444', '18507946396', 22);

-- ----------------------------
-- Table structure for zufangdingdan
-- ----------------------------
DROP TABLE IF EXISTS `zufangdingdan`;
CREATE TABLE `zufangdingdan`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `fangwuhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋号',
  `fangwumingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `jiage` int NULL DEFAULT NULL COMMENT '价格',
  `xiangxidizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `zufangriqi` date NULL DEFAULT NULL COMMENT '租房日期',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716280885621 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '租房订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zufangdingdan
-- ----------------------------
INSERT INTO `zufangdingdan` VALUES (1716276361751, '2024-05-21 15:26:01', '房屋号1', '学区A1', '学区房', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian1.jpg', 3600, '江西省抚州市临川区学府大道东紫荆小区11栋1103室', NULL, 'test1', 'test', '13423425678', '已支付', 1716275670417);
INSERT INTO `zufangdingdan` VALUES (1716280206324, '2024-05-21 16:30:06', '房屋号2', '单身B12', '单身公寓', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian2.jpg', 3000, '江西省南昌市紫荆路幸福小区11栋2203', NULL, '黄小磊', '黄磊', '17679248336', '已支付', 1716280168400);
INSERT INTO `zufangdingdan` VALUES (1716280630410, '2024-05-21 16:37:09', '房屋号3', '经济房A3', '经济房', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian3.jpg', 1000, '江西省萍乡市中山路天天小区01栋401', '2024-06-21', '付小碧', '付碧成', '13751977984', '', 1716280561737);
INSERT INTO `zufangdingdan` VALUES (1716280885620, '2024-05-21 16:41:24', '房屋号3', '经济房A3', '经济房', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian3.jpg', 1000, '江西省萍乡市中山路天天小区01栋401', '2024-08-21', '宇宙暴龍战士暴打fbc', '高诚', '17679248336', '', 1716280819617);

-- ----------------------------
-- Table structure for zufangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `zufangxinxi`;
CREATE TABLE `zufangxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `fangwuhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋号',
  `fangwumingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `xiangxidizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `userid` bigint NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716280942245 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '租房信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zufangxinxi
-- ----------------------------
INSERT INTO `zufangxinxi` VALUES (1716276414409, '2024-05-21 15:26:53', '房屋号1', '学区A1', '学区房', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian1.jpg', '江西省抚州市临川区学府大道东紫荆小区11栋1103室', 'test1', 'test', 1716275670417);
INSERT INTO `zufangxinxi` VALUES (1716280304684, '2024-05-21 16:31:43', '房屋号2', '单身B12', '单身公寓', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian2.jpg', '江西省南昌市紫荆路幸福小区11栋2203', '黄小磊', '黄磊', 1716280168400);
INSERT INTO `zufangxinxi` VALUES (1716280645508, '2024-05-21 16:37:25', '房屋号3', '经济房A3', '经济房', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian3.jpg', '江西省萍乡市中山路天天小区01栋401', '付小碧', '付碧成', 1716280561737);
INSERT INTO `zufangxinxi` VALUES (1716280942244, '2024-05-21 16:42:21', '房屋号3', '经济房A3', '经济房', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian3.jpg', '江西省萍乡市中山路天天小区01栋401', '宇宙暴龍战士暴打fbc', '高诚', 1716280819617);

-- ----------------------------
-- Table structure for zufangzhangdan
-- ----------------------------
DROP TABLE IF EXISTS `zufangzhangdan`;
CREATE TABLE `zufangzhangdan`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `fangwuhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋号',
  `fangwumingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shuidianfei` int NULL DEFAULT NULL COMMENT '水电费',
  `wuyefei` int NULL DEFAULT NULL COMMENT '物业费',
  `fangzufei` int NULL DEFAULT NULL COMMENT '房租费',
  `zhangdanxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '账单详情',
  `ispay` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1716280461759 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '租房账单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zufangzhangdan
-- ----------------------------
INSERT INTO `zufangzhangdan` VALUES (1716280355944, '2024-05-21 16:32:35', '房屋号1', '学区A1', '学区房', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian1.jpg', 'test1', 'test', 30, 60, 2000, '<p>见合同</p>', '未支付', 1716275670417);
INSERT INTO `zufangzhangdan` VALUES (1716280461758, '2024-05-21 16:34:20', '房屋号2', '单身B12', '单身公寓', 'http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian2.jpg', '黄小磊', '黄磊', 200, 100, 4000, '', '已支付', 1716280168400);

SET FOREIGN_KEY_CHECKS = 1;
