/*
 Navicat Premium Data Transfer

 Source Server         : con1
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : mywork

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 10/11/2020 16:39:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `ID` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品ID',
  `s_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '卖家ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称',
  `price` decimal(8, 2) NOT NULL COMMENT '商品价格',
  `stock` int(0) NOT NULL COMMENT '库存',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品类别',
  `img_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '存储图片路径',
  `statement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品描述',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `sid`(`s_id`) USING BTREE,
  CONSTRAINT `sid` FOREIGN KEY (`s_id`) REFERENCES `users` (`ID`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('c1001', '01243', '电脑', 4199.00, 20, '电器', 'html\\1_Computer.png', '戴尔DELL灵越5000 14英寸酷睿i5网课学习轻薄笔记本电脑(十代i5-1035G1 8G 512G MX230 2G独显)银');
INSERT INTO `commodity` VALUES ('c1002', '01243', 'IPhone', 5499.00, 7, '电器', 'html\\1_Phone.png', 'Apple iPhone 12 mini (A2400) 64GB 黑色 手机 支持移动联通电信5G');
INSERT INTO `commodity` VALUES ('c1003', '01243', '相机', 6699.00, 3, '电器', 'html\\1_Camera.png', '尼康（Nikon）D7500 单反相机 数码相机 （AF-S DX 尼克尔 18-140mm f/3.5-5.6G ED VR 单反镜头）');
INSERT INTO `commodity` VALUES ('c1004', '01243', '充电宝', 139.00, 302, '电器', 'html\\1_box.png', '飞利浦10000mAh充电宝超轻薄全镜面智能数显迷你大容量便携小巧双入双出适用于苹果华为小米手机平板DLP7717N');
INSERT INTO `commodity` VALUES ('c1005', '01243', '智能机器人', 2999.00, 102, '电器', 'html\\1_robot.png', '优必选（UBTECH）Alpha Ebot 智能机器人儿童教育学习机器人早教陪伴可编程玩具');
INSERT INTO `commodity` VALUES ('c2001', '11029', '男装', 958.00, 37, '服装', 'html\\2_manclothes.png', '【周杰伦同款】HLA海澜之家极光系列鹅绒服2020冬季新品拼色温暖防风羽绒外套HWRAD4Q053A 卡其镶拼86 170/88A/M');
INSERT INTO `commodity` VALUES ('c2002', '11029', '女装', 1199.00, 44, '服装', 'html\\2_womanclothes.png', 'EITIE爱特爱品牌女装秋冬新款大气翻驳领挺括双排扣优雅风衣外套D1904335 霜杏色76 S');
INSERT INTO `commodity` VALUES ('c2003', '11029', '女鞋', 469.00, 78, '服装', 'html\\2_womanshoe.png', '卡迪娜 ins牛皮革五角星松糕底小白鞋运动休闲鞋板鞋 KLC83203 米白（红星）');
INSERT INTO `commodity` VALUES ('c2004', '11029', '手表', 1065.00, 17, '服装', 'html\\2_watch.png', '卡西欧（CASIO）女表BABY-G系列手表 少女时代潮流双显黑金多功能时尚运动手表女 白玫瑰金BA-110-7A1');
INSERT INTO `commodity` VALUES ('c2005', '11029', '背包', 3680.00, 44, '服装', 'html\\2_bag.png', 'TUMI/途明Alpha Bravo男士弹道尼龙大容量Sheppard双肩背包 蓝色/0232389NVY');
INSERT INTO `commodity` VALUES ('c3001', '83030', '奶粉', 198.00, 99, '食品', 'html\\3_powder.png', '惠氏启韵（Wyeth illumcare）启赋妈妈奶粉DHA叶酸配方(推荐孕期哺乳期补充)800g 孕妇及妈妈心安满意之选');
INSERT INTO `commodity` VALUES ('c3002', '83030', '零食', 129.00, 103, '食品', 'html\\3_food.png', '三只松鼠坚果大礼包9袋 网红零食每日坚果干果礼盒碧根果节日送礼团购火红A版1720g');
INSERT INTO `commodity` VALUES ('c3003', '83030', '酒', 628.00, 111, '食品', 'html\\3_alcohol.png', '拉菲(LAFITE)传奇波尔多 赤霞珠干红葡萄酒 750ml*6瓶 整箱装 法国进口红酒');
INSERT INTO `commodity` VALUES ('c3004', '83030', '生鲜', 235.00, 344, '食品', 'html\\3_fresh.png', '海渔链鲜活捕捞熟冻帝王蟹 帝皇蟹大螃蟹长脚蟹海鲜生鲜 礼盒包装 ( 2.4斤-2.8斤)/只');
INSERT INTO `commodity` VALUES ('c3005', '83030', '牛奶', 84.90, 321, '食品', 'html\\3_milk.png', '蒙牛 特仑苏 纯牛奶 250ml*16 礼盒装 ');
INSERT INTO `commodity` VALUES ('c4001', '90989', '被子', 369.00, 120, '家居生活', 'html\\4_quilt.png', '水星家纺 床上四件套纯棉床上用品被套床单/床笠枕套双人全棉被罩套件 花西雅（床单款） 1.8米床,适配220*240cm被芯');
INSERT INTO `commodity` VALUES ('c4002', '90989', '床', 1680.00, 74, '家居生活', 'html\\4_bed.png', 'A家 床双人床1.5米现代简约卧室床1.8米床带床垫成套家具组合床简约床格调北欧马卡龙色系卧室家居 1.2米单床 单床');
INSERT INTO `commodity` VALUES ('c4003', '90989', '桌子', 2899.00, 37, '家居生活', 'html\\4_desk.png', '梓画 书桌 实木书桌 新中式简约电脑桌家用书法写字台式办公桌书房精品家具8118# 书桌+书架+副柜+书椅 胡桃色');
INSERT INTO `commodity` VALUES ('c4004', '90989', '沙发', 2480.00, 46, '家居生活', 'html\\4_sofa.png', '百冠环球 沙发 布艺沙发客厅整装组合北欧现代简约 三防科技布可拆洗布沙发套装家具 四人位+贵妃榻（颜色备注） 棉麻布套(高密海绵座包/进口松) ');
INSERT INTO `commodity` VALUES ('c4005', '90989', '锅', 79.00, 33, '家居生活', 'html\\4_pot.png', '美的（Midea）典雅金麦饭石色涂层不粘炒锅家用炒锅电磁炉煤气灶适用炒菜锅平底锅煎锅 送竹铲');
INSERT INTO `commodity` VALUES ('c5001', '92311', '画', 1500.00, 9, '其他', 'html\\5_paint.png', '现代简约北美式欧式莫奈名人油画《睡莲·绿色的和谐》卧室玄关客厅走廊画廊酒吧办公室沙发背景墙装饰画挂画 典雅栗（偏金色） 99×103cm');
INSERT INTO `commodity` VALUES ('c5002', '92311', '保健药', 688.00, 14, '其他', 'html\\5_pill.png', '韩国进口正官庄红参液高丽参精EVERYTIME10ml*30包抗氧化增强免疫力 人参皂苷礼盒');
INSERT INTO `commodity` VALUES ('c5003', '92311', '书', 118.00, 29, '其他', 'html\\5_book.png', '清华北大学霸笔记（全四册 2020全新修订版） ');
INSERT INTO `commodity` VALUES ('c5004', '92311', '酒店服务', 834.00, 999, '其他', 'html\\5_hotel.png', '北京中奥马哥波罗大酒店');
INSERT INTO `commodity` VALUES ('c5005', '92311', '家政服务', 449.00, 999, '其他', 'html\\5_house.png', '轻喜到家 家政保洁 保洁服务 1次4小时 钟点工上门到家 家政服务 日常保洁洗衣机 油烟机清洗服务 日常保洁服务3次*4小时');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单编号',
  `s_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '卖家编号',
  `b_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '买家编号',
  `m_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品编号',
  `num` int(0) NULL DEFAULT NULL COMMENT '交易数量',
  `order_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '交易时间',
  `total` decimal(8, 2) NULL DEFAULT NULL COMMENT '总价',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `m_id`(`m_id`) USING BTREE,
  INDEX `s_id`(`s_id`) USING BTREE,
  INDEX `b_id`(`b_id`) USING BTREE,
  CONSTRAINT `b_id` FOREIGN KEY (`b_id`) REFERENCES `users` (`ID`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `m_id` FOREIGN KEY (`m_id`) REFERENCES `commodity` (`ID`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `s_id` FOREIGN KEY (`s_id`) REFERENCES `commodity` (`s_id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `ID` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户ID',
  `password` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `user_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `balance` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '余额',
  `login` tinyint(1) NULL DEFAULT 0 COMMENT '登录与否',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('01243', '01243', '金大牙', 0.00, 0);
INSERT INTO `users` VALUES ('11029', '11029', '陈生', 0.00, 0);
INSERT INTO `users` VALUES ('12345', '12345', '张三', 20000.00, 0);
INSERT INTO `users` VALUES ('83030', '83030', '王凯旋', 0.00, 0);
INSERT INTO `users` VALUES ('87713', '87713', '李四', 20000.00, 0);
INSERT INTO `users` VALUES ('89024', '89024', '老王', 20000.00, 0);
INSERT INTO `users` VALUES ('90989', '90989', '秦先生', 0.00, 0);
INSERT INTO `users` VALUES ('92311', '92311', '胡八一', 0.00, 0);

SET FOREIGN_KEY_CHECKS = 1;
