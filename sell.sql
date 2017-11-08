/*
 Navicat MySQL Data Transfer

 Source Server         : virtualbox
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : 10.180.152.255
 Source Database       : sell

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 11/06/2017 19:54:39 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `detail_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `order_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `product_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `product_name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '当前价格,单位分',
  `product_quantity` int(11) NOT NULL COMMENT '数量',
  `product_icon` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '小图',
  `create_time` datetime COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`detail_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Records of `order_detail`
-- ----------------------------
BEGIN;
INSERT INTO `order_detail` VALUES ('1234567810', '123456', '11111122222', '皮蛋粥', '2.20', '3', 'http://xxxx.jpg', '2017-10-10 11:51:03', '2017-10-10 11:59:59'), ('123456789', '123456', '11111122222', '皮蛋粥', '1.20', '2', 'http://xxxx.jpg', '2017-10-10 11:50:37', '2017-10-10 12:00:02'), ('1507692621445888859', '1507692621396382483', '123458', '芒果冰', '20.00', '1', 'http://xxxxx.jpg', '2017-10-11 02:15:03', '2017-10-11 02:15:03'), ('1507692735779154322', '1507692735717496251', '123458', '芒果冰', '20.00', '1', 'http://xxxxx.jpg', '2017-10-11 02:17:07', '2017-10-11 02:17:07'), ('1507692747576298338', '1507692747519289615', '123458', '芒果冰', '20.00', '1', 'http://xxxxx.jpg', '2017-10-11 02:17:20', '2017-10-11 02:17:20'), ('1507692773535997040', '1507692773475169816', '123458', '芒果冰', '20.00', '1', 'http://xxxxx.jpg', '2017-10-11 02:19:09', '2017-10-11 02:19:09'), ('1507692880500520995', '1507692880450736760', '123458', '芒果冰', '20.00', '1', 'http://xxxxx.jpg', '2017-10-11 02:19:44', '2017-10-11 02:19:44'), ('1507692987618881859', '1507692987569356894', '123458', '芒果冰', '20.00', '1', 'http://xxxxx.jpg', '2017-10-11 02:21:40', '2017-10-11 02:21:40'), ('1507692987631237484', '1507692987569356894', '123457', '皮皮虾', '3.20', '2', 'http://xxxxx.jpg', '2017-10-11 02:21:40', '2017-10-11 02:21:40'), ('1507693049077113155', '1507693049026371925', '123458', '芒果冰', '20.00', '1', 'http://xxxxx.jpg', '2017-10-11 02:22:47', '2017-10-11 02:22:47'), ('1507693049091567829', '1507693049026371925', '123457', '皮皮虾', '3.20', '2', 'http://xxxxx.jpg', '2017-10-11 02:22:47', '2017-10-11 02:22:47'), ('1507693698350145805', '1507693698300474315', '123458', '芒果冰', '20.00', '1', 'http://xxxxx.jpg', '2017-10-11 02:34:30', '2017-10-11 02:34:30'), ('1507693698367764214', '1507693698300474315', '123457', '皮皮虾', '3.20', '2', 'http://xxxxx.jpg', '2017-10-11 02:34:30', '2017-10-11 02:34:30'), ('1507712604090542424', '1507712604044958406', '123458', '芒果冰', '20.00', '2', 'http://xxxxx.jpg', '2017-10-11 07:41:47', '2017-10-11 07:41:47'), ('1507713823430144098', '1507713823428847225', '123458', '芒果冰', '20.00', '2', 'http://xxxxx.jpg', '2017-10-11 08:03:48', '2017-10-11 08:03:48'), ('1507713845084971941', '1507713845033436942', '123458', '芒果冰', '20.00', '2', 'http://xxxxx.jpg', '2017-10-11 08:04:12', '2017-10-11 08:04:12'), ('1507713872681202085', '1507713872625836745', '123458', '芒果冰', '20.00', '2', 'http://xxxxx.jpg', '2017-10-11 08:05:49', '2017-10-11 08:05:49'), ('1507714006742916551', '1507714006687538888', '123458', '芒果冰', '20.00', '2', 'http://xxxxx.jpg', '2017-10-11 08:07:07', '2017-10-11 08:07:07'), ('1507988041322724096', '1507988041320673462', '123456', '皮蛋粥', '3.20', '2', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2229490176,1502774060&fm=27&gp=0.jpg', '2017-10-13 20:40:29', '2017-10-13 20:40:29'), ('1507988049904720694', '1507988049902889564', '123456', '皮蛋粥', '3.20', '2', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2229490176,1502774060&fm=27&gp=0.jpg', '2017-10-13 20:40:38', '2017-10-13 20:40:38'), ('1507988051383171117', '1507988051381428959', '123456', '皮蛋粥', '3.20', '2', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2229490176,1502774060&fm=27&gp=0.jpg', '2017-10-13 20:40:39', '2017-10-13 20:40:39'), ('1507988125574670404', '1507988125573689240', '123456', '皮蛋粥', '3.20', '2', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2229490176,1502774060&fm=27&gp=0.jpg', '2017-10-13 20:42:00', '2017-10-13 20:42:00'), ('1507988126393554275', '1507988126391871716', '123456', '皮蛋粥', '3.20', '2', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2229490176,1502774060&fm=27&gp=0.jpg', '2017-10-13 20:42:01', '2017-10-13 20:42:01'), ('1507988134884259847', '1507988134882997715', '123456', '皮蛋粥', '3.20', '2', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2229490176,1502774060&fm=27&gp=0.jpg', '2017-10-13 20:42:10', '2017-10-13 20:42:10'), ('1507988445168140623', '1507988445166833329', '123456', '皮蛋粥', '3.20', '2', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2229490176,1502774060&fm=27&gp=0.jpg', '2017-10-13 20:47:46', '2017-10-13 20:47:46'), ('1507988464622849626', '1507988464621224433', '123456', '皮蛋粥', '3.20', '1', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2229490176,1502774060&fm=27&gp=0.jpg', '2017-10-13 20:48:07', '2017-10-13 20:48:07'), ('1508246126447936466', '1508246126438334218', '123456', '皮蛋粥', '3.20', '1', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2229490176,1502774060&fm=27&gp=0.jpg', '2017-10-17 13:15:26', '2017-10-17 13:15:26'), ('1508247056156472089', '1508247056154596507', '123456', '皮蛋粥', '3.20', '1', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2229490176,1502774060&fm=27&gp=0.jpg', '2017-10-17 13:30:56', '2017-10-17 13:30:56'), ('1508660125369914790', '1508660125361188684', '123458', '芒果冰', '20.00', '2', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1235493564,1046342256&fm=27&gp=0.jpg', '2017-10-20 12:29:40', '2017-10-20 12:29:40'), ('1508660290935711902', '1508660290933988725', '123458', '芒果冰', '20.00', '2', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1235493564,1046342256&fm=27&gp=0.jpg', '2017-10-20 12:32:40', '2017-10-20 12:32:40'), ('1508660352931629409', '1508660352930385371', '123458', '芒果冰', '20.00', '2', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1235493564,1046342256&fm=27&gp=0.jpg', '2017-10-20 12:33:47', '2017-10-20 12:33:47'), ('1508756865725298696', '1508756865710500537', '123458', '芒果冰', '20.00', '2', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1235493564,1046342256&fm=27&gp=0.jpg', '2017-10-23 10:29:15', '2017-10-23 10:29:15'), ('1508757551913541011', '1508757551860519186', '123458', '芒果冰', '20.00', '2', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1235493564,1046342256&fm=27&gp=0.jpg', '2017-10-23 10:41:39', '2017-10-23 10:41:39'), ('1508757566339277893', '1508757566331503286', '123458', '芒果冰', '20.00', '2', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1235493564,1046342256&fm=27&gp=0.jpg', '2017-10-23 10:41:54', '2017-10-23 10:41:54'), ('1508757571784164121', '1508757571781605206', '123458', '芒果冰', '20.00', '2', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1235493564,1046342256&fm=27&gp=0.jpg', '2017-10-23 10:42:00', '2017-10-23 10:42:00');
COMMIT;

-- ----------------------------
--  Table structure for `order_master`
-- ----------------------------
DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master` (
  `order_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `buyer_name` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '买家名字',
  `buyer_phone` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '买家电话',
  `buyer_address` varchar(128) COLLATE utf8mb4_bin NOT NULL COMMENT '买家地址',
  `buyer_openid` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '买家微信openid',
  `order_amount` decimal(8,2) NOT NULL COMMENT '订单总金额',
  `order_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单状态, 默认为新下单',
  `pay_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态, 默认未支付',
  `create_time` datetime COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`order_id`),
  KEY `idx_buyer_openid` (`buyer_openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Records of `order_master`
-- ----------------------------
BEGIN;
INSERT INTO `order_master` VALUES ('123456', '欢哥', '123456789123', '福田', '110110', '2.30', '0', '0', '2017-10-09 18:22:02', '2017-10-09 18:22:02'), ('1234567', '欢哥', '123456789123', '福田', '110110', '2.50', '0', '0', '2017-10-09 18:23:00', '2017-10-09 18:23:00'), ('1507692621396382483', '欢哥', '123456789012', '福田', '1101110', '20.00', '2', '0', '2017-10-11 02:15:03', '2017-10-11 08:51:31'), ('1507692735717496251', '欢哥', '123456789012', '福田', '1101110', '20.00', '1', '0', '2017-10-11 02:17:07', '2017-10-20 12:43:49'), ('1507692747519289615', '欢哥', '123456789012', '福田', '1101110', '20.00', '1', '0', '2017-10-11 02:17:20', '2017-10-14 09:44:21'), ('1507692773475169816', '欢哥', '123456789012', '福田', '1101110', '20.00', '2', '0', '2017-10-11 02:19:09', '2017-10-19 11:25:42'), ('1507692880450736760', '欢哥', '123456789012', '福田', '1101110', '20.00', '1', '0', '2017-10-11 02:19:44', '2017-10-14 09:44:03'), ('1507692987569356894', '欢哥', '123456789012', '福田', '1101110', '26.40', '1', '1', '2017-10-11 02:21:40', '2017-10-14 09:41:52'), ('1507693049026371925', '欢哥', '123456789012', '福田', '1101110', '26.40', '2', '0', '2017-10-11 02:22:47', '2017-10-14 09:33:14'), ('1507693698300474315', '欢哥', '123456789012', '福田', '1101110', '26.40', '2', '0', '2017-10-11 02:34:30', '2017-10-14 09:31:18'), ('1507712604044958406', '张三', '123456789012', '福田区', '1101110', '40.00', '1', '0', '2017-10-11 07:41:47', '2017-10-14 09:44:36'), ('1507713823428847225', '张三', '123456789012', '福田区', '1101110', '40.00', '1', '0', '2017-10-11 08:03:48', '2017-10-20 13:21:28'), ('1507713845033436942', '张三', '123456789012', '福田区', '1101110', '40.00', '1', '0', '2017-10-11 08:04:12', '2017-10-14 09:44:45'), ('1507713872625836745', '张三', '123456789012', '福田区', '1101110', '40.00', '0', '0', '2017-10-11 08:05:49', '2017-10-11 08:05:49'), ('1507714006687538888', '张三', '123456789012', '福田区', '1101110', '40.00', '1', '0', '2017-10-11 08:07:07', '2017-10-14 09:44:56'), ('1507988041320673462', '欢哥', '11111', '啦啦啦', 'oz_y80wZYDpKFDvukVKSuhWByLes', '6.40', '1', '0', '2017-10-13 20:40:29', '2017-10-20 12:27:19'), ('1507988049902889564', '欢哥', '11111', '啦啦啦', 'oz_y80wZYDpKFDvukVKSuhWByLes', '6.40', '1', '0', '2017-10-13 20:40:38', '2017-10-20 13:24:40'), ('1507988051381428959', '欢哥', '11111', '啦啦啦', 'oz_y80wZYDpKFDvukVKSuhWByLes', '6.40', '1', '0', '2017-10-13 20:40:39', '2017-10-20 12:37:50'), ('1507988125573689240', '欢哥', '11111', '啦啦啦', 'oz_y80wZYDpKFDvukVKSuhWByLes', '6.40', '1', '0', '2017-10-13 20:42:00', '2017-10-20 12:42:17'), ('1507988126391871716', '欢哥', '11111', '啦啦啦', 'oz_y80wZYDpKFDvukVKSuhWByLes', '6.40', '2', '0', '2017-10-13 20:42:01', '2017-10-14 08:48:40'), ('1507988134882997715', '欢哥', '11111', '啦啦啦', 'oz_y80wZYDpKFDvukVKSuhWByLes', '6.40', '2', '0', '2017-10-13 20:42:10', '2017-10-14 08:48:28'), ('1507988445166833329', '欢哥', '11111', '啦啦啦', 'oz_y80wZYDpKFDvukVKSuhWByLes', '6.40', '2', '0', '2017-10-13 20:47:46', '2017-10-14 08:48:19'), ('1507988464621224433', '啦啦啦', '11111111', '啦啦啦', 'oz_y80wZYDpKFDvukVKSuhWByLes', '3.20', '2', '0', '2017-10-13 20:48:07', '2017-10-14 08:39:57'), ('1508246126438334218', '欢哥', '13682370883', '福田区福源大厦', 'oz_y80wZYDpKFDvukVKSuhWByLes', '3.20', '1', '1', '2017-10-17 13:15:26', '2017-10-17 13:29:15'), ('1508247056154596507', '欢哥哥', '18317011451', '福源大厦', 'oz_y80wZYDpKFDvukVKSuhWByLes', '3.20', '2', '1', '2017-10-17 13:30:56', '2017-10-17 13:31:53'), ('1508660125361188684', '张三', '123456789012', '福田区', 'oz_y80wZYDpKFDvukVKSuhWByLes', '40.00', '0', '0', '2017-10-20 12:29:40', '2017-10-23 10:28:42'), ('1508660290933988725', '张三', '123456789012', '福田区', '1101110', '40.00', '0', '0', '2017-10-20 12:32:40', '2017-10-20 12:32:40'), ('1508660352930385371', '张三', '123456789013', '福田区', '1101110', '40.00', '0', '0', '2017-10-20 12:33:47', '2017-10-20 12:33:47'), ('1508756865710500537', '张三', '123456789012', '福田区', 'oz_y80wZYDpKFDvukVKSuhWByLes', '40.00', '1', '0', '2017-10-23 10:29:15', '2017-10-23 10:29:37'), ('1508757551860519186', '张三', '123456789012', '福田区', 'oz_y80wZYDpKFDvukVKSuhWByLes', '40.00', '0', '0', '2017-10-23 10:41:39', '2017-10-23 10:41:39'), ('1508757566331503286', '张三', '123456789012', '福田区', 'oz_y80wZYDpKFDvukVKSuhWByLes', '40.00', '1', '0', '2017-10-23 10:41:54', '2017-10-23 10:43:45'), ('1508757571781605206', '张三', '123456789012', '福田区', 'oz_y80wZYDpKFDvukVKSuhWByLes', '40.00', '1', '0', '2017-10-23 10:42:00', '2017-10-23 10:42:16');
COMMIT;

-- ----------------------------
--  Table structure for `product_category`
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '类目名字',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` datetime COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Records of `product_category`
-- ----------------------------
BEGIN;
INSERT INTO `product_category` VALUES ('1', '热销榜', '2', '2017-10-09 13:33:33', '2017-10-19 19:53:57'), ('3', '女生最爱', '3', '2017-10-10 02:29:24', '2017-10-10 02:29:24'), ('4', '男生专享', '5', '2017-10-10 07:05:02', '2017-10-19 19:52:35'), ('5', '特惠', '4', '2017-10-19 19:51:52', '2017-10-19 19:51:52');
COMMIT;

-- ----------------------------
--  Table structure for `product_info`
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `product_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `product_name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '单价',
  `product_stock` int(11) NOT NULL COMMENT '库存',
  `product_description` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `product_icon` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '小图',
  `product_status` tinyint(3) DEFAULT '0' COMMENT '商品状态,0正常1下架',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` datetime COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Records of `product_info`
-- ----------------------------
BEGIN;
INSERT INTO `product_info` VALUES ('123456', '皮蛋粥', '3.20', '100', '很好喝的粥', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1508434940967&di=732d742a70536fae9fbac2b937258d44&imgtype=0&src=http%3A%2F%2Fbpic.ooopic.com%2F16%2F09%2F06%2F16090620-7fb16852e2104aacfe918767d0ac839b.jpg', '0', '2', '2017-10-19 14:04:44', '2017-10-24 07:15:47'), ('123457', '皮皮虾', '3.20', '108', '很好吃的吓', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2719847047,304756257&fm=27&gp=0.jpg', '0', '2', '2017-10-10 07:55:52', '2017-10-19 12:32:50'), ('123458', '芒果冰', '20.00', '181', '冰冰的很爽', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1235493564,1046342256&fm=27&gp=0.jpg', '0', '3', '2017-10-10 09:10:43', '2017-10-23 10:42:00'), ('1508553151999675290', '肉夹馍', '5.00', '999', '多肉多汁', 'http://f12.baidu.com/it/u=650394711,2234717467&fm=72', '0', '2', '2017-10-19 15:48:58', '2017-10-19 15:48:58');
COMMIT;

-- ----------------------------
--  Table structure for `seller_info`
-- ----------------------------
DROP TABLE IF EXISTS `seller_info`;
CREATE TABLE `seller_info` (
  `id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `openid` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '微信openid',
  `create_time` datetime COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='卖家信息表';

-- ----------------------------
--  Records of `seller_info`
-- ----------------------------
BEGIN;
INSERT INTO `seller_info` VALUES ('1', 'admin', 'admin', 'abc', '2017-10-20 04:29:12', '2017-10-20 04:36:24');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
