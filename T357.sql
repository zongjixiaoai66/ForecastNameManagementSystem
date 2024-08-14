/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t357`;
CREATE DATABASE IF NOT EXISTS `t357` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t357`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'huodong_types', '报考活动类型', 1, '报考活动类型1', NULL, NULL, '2023-04-06 03:20:34'),
	(2, 'huodong_types', '报考活动类型', 2, '报考活动类型2', NULL, NULL, '2023-04-06 03:20:34'),
	(3, 'huodong_types', '报考活动类型', 3, '报考活动类型3', NULL, NULL, '2023-04-06 03:20:34'),
	(4, 'huodong_types', '报考活动类型', 4, '报考活动类型4', NULL, NULL, '2023-04-06 03:20:34'),
	(5, 'huodong_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-06 03:20:34'),
	(6, 'huodong_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-06 03:20:34'),
	(7, 'huodong_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-06 03:20:34'),
	(8, 'huodong_yuyue_yesno_types', '报名状态', 1, '待审核', NULL, NULL, '2023-04-06 03:20:34'),
	(9, 'huodong_yuyue_yesno_types', '报名状态', 2, '同意', NULL, NULL, '2023-04-06 03:20:34'),
	(10, 'huodong_yuyue_yesno_types', '报名状态', 3, '拒绝', NULL, NULL, '2023-04-06 03:20:34'),
	(11, 'ziliao_types', '公共资料类型', 1, '公共资料类型1', NULL, NULL, '2023-04-06 03:20:34'),
	(12, 'ziliao_types', '公共资料类型', 2, '公共资料类型2', NULL, NULL, '2023-04-06 03:20:34'),
	(13, 'ziliao_types', '公共资料类型', 3, '公共资料类型3', NULL, NULL, '2023-04-06 03:20:34'),
	(14, 'ziliao_types', '公共资料类型', 4, '公共资料类型4', NULL, NULL, '2023-04-06 03:20:34'),
	(15, 'ziliao_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-06 03:20:34'),
	(16, 'ziliao_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-06 03:20:34'),
	(17, 'ziliao_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-06 03:20:34'),
	(18, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-06 03:20:34'),
	(19, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-06 03:20:34'),
	(20, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-04-06 03:20:34'),
	(21, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-06 03:20:34'),
	(22, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-06 03:20:34'),
	(23, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-06 03:20:34'),
	(24, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-06 03:20:34');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, NULL, '发布内容1', 146, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(2, '帖子标题2', 3, NULL, '发布内容2', 90, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(3, '帖子标题3', 1, NULL, '发布内容3', 396, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(4, '帖子标题4', 3, NULL, '发布内容4', 45, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(5, '帖子标题5', 3, NULL, '发布内容5', 263, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(6, '帖子标题6', 1, NULL, '发布内容6', 12, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(7, '帖子标题7', 1, NULL, '发布内容7', 410, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(9, '帖子标题9', 1, NULL, '发布内容9', 415, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(10, '帖子标题10', 1, NULL, '发布内容10', 398, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(11, '帖子标题11', 2, NULL, '发布内容11', 95, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(12, '帖子标题12', 2, NULL, '发布内容12', 220, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(14, '帖子标题14', 3, NULL, '发布内容14', 14, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(17, NULL, 1, NULL, '删除自己发布的评论', 14, 2, '2023-04-06 03:27:22', NULL, '2023-04-06 03:27:22'),
	(18, NULL, NULL, 1, '用户只能删除自己发布的东西 管理能删除所有人发表的信息', 14, 2, '2023-04-06 03:30:46', NULL, '2023-04-06 03:30:46'),
	(19, NULL, 1, NULL, '111', 11, 2, '2024-08-09 03:29:58', NULL, '2024-08-09 03:29:58');

DROP TABLE IF EXISTS `huodong`;
CREATE TABLE IF NOT EXISTS `huodong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodong_uuid_number` varchar(200) DEFAULT NULL COMMENT '报考活动编号',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '报考活动名称  Search111 ',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '活动封面',
  `huodong_address` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '截至时间',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `huodong_types` int DEFAULT NULL COMMENT '报考活动类型 Search111',
  `huodong_clicknum` int DEFAULT NULL COMMENT '报考活动热度',
  `huodong_content` longtext COMMENT '报考活动介绍 ',
  `huodong_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='报考活动';

DELETE FROM `huodong`;
INSERT INTO `huodong` (`id`, `huodong_uuid_number`, `huodong_name`, `huodong_photo`, `huodong_address`, `jiezhi_time`, `zan_number`, `cai_number`, `huodong_types`, `huodong_clicknum`, `huodong_content`, `huodong_delete`, `insert_time`, `create_time`) VALUES
	(1, '1680751243563', '报考活动名称1', 'upload/huodong1.jpg', '活动地点1', '2023-04-06 03:20:43', 365, 144, 4, 7, '报考活动介绍1', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(2, '1680751243574', '报考活动名称2', 'upload/huodong2.jpg', '活动地点2', '2023-04-06 03:20:43', 40, 285, 1, 450, '报考活动介绍2', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(3, '1680751243558', '报考活动名称3', 'upload/huodong3.jpg', '活动地点3', '2023-04-06 03:20:43', 282, 43, 4, 397, '报考活动介绍3', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(4, '1680751243607', '报考活动名称4', 'upload/huodong4.jpg', '活动地点4', '2023-04-06 03:20:43', 85, 484, 3, 35, '报考活动介绍4', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(5, '1680751243537', '报考活动名称5', 'upload/huodong5.jpg', '活动地点5', '2023-04-06 03:20:43', 311, 162, 2, 420, '报考活动介绍5', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(6, '1680751243552', '报考活动名称6', 'upload/huodong6.jpg', '活动地点6', '2023-04-06 03:20:43', 118, 86, 1, 466, '报考活动介绍6', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(7, '1680751243516', '报考活动名称7', 'upload/huodong7.jpg', '活动地点7', '2023-04-06 03:20:43', 129, 242, 4, 466, '报考活动介绍7', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(8, '1680751243546', '报考活动名称8', 'upload/huodong8.jpg', '活动地点8', '2023-04-06 03:20:43', 382, 349, 3, 472, '报考活动介绍8', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(9, '1680751243604', '报考活动名称9', 'upload/huodong9.jpg', '活动地点9', '2023-04-07 03:20:43', 360, 116, 3, 86, '报考活动介绍9', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(10, '1680751243539', '报考活动名称10', 'upload/huodong10.jpg', '活动地点10', '2023-04-07 03:20:43', 203, 408, 2, 164, '报考活动介绍10', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(11, '1680751243592', '报考活动名称11', 'upload/huodong11.jpg', '活动地点11', '2023-04-07 03:20:43', 29, 105, 3, 130, '报考活动介绍11', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(12, '1680751243547', '报考活动名称12', 'upload/huodong12.jpg', '活动地点12', '2023-04-07 03:20:43', 34, 98, 1, 340, '报考活动介绍12', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(13, '1680751243530', '报考活动名称13', 'upload/huodong13.jpg', '活动地点13', '2023-04-07 03:20:43', 347, 275, 2, 226, '报考活动介绍13', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(14, '1680751243576', '报考活动名称14', 'upload/huodong14.jpg', '活动地点14', '2023-04-07 03:20:43', 28, 486, 2, 291, '报考活动介绍14', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43');

DROP TABLE IF EXISTS `huodong_collection`;
CREATE TABLE IF NOT EXISTS `huodong_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int DEFAULT NULL COMMENT '报考活动',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huodong_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='报考活动收藏';

DELETE FROM `huodong_collection`;
INSERT INTO `huodong_collection` (`id`, `huodong_id`, `yonghu_id`, `huodong_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(2, 2, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(3, 3, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(4, 4, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(5, 5, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(6, 6, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(7, 7, 3, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(8, 8, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(9, 9, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(10, 10, 1, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(11, 11, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(12, 12, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(13, 13, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(14, 14, 3, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(15, 6, 1, 2, '2023-04-06 03:28:39', '2023-04-06 03:28:39'),
	(17, 8, 1, 1, '2024-08-09 03:30:03', '2024-08-09 03:30:03');

DROP TABLE IF EXISTS `huodong_liuyan`;
CREATE TABLE IF NOT EXISTS `huodong_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int DEFAULT NULL COMMENT '报考活动',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huodong_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='报考活动留言';

DELETE FROM `huodong_liuyan`;
INSERT INTO `huodong_liuyan` (`id`, `huodong_id`, `yonghu_id`, `huodong_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2023-04-06 03:20:43', '回复信息1', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(2, 2, 2, '留言内容2', '2023-04-06 03:20:43', '回复信息2', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(3, 3, 1, '留言内容3', '2023-04-06 03:20:43', '回复信息3', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(4, 4, 2, '留言内容4', '2023-04-06 03:20:43', '回复信息4', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(5, 5, 3, '留言内容5', '2023-04-06 03:20:43', '回复信息5', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(6, 6, 3, '留言内容6', '2023-04-06 03:20:43', '回复信息6', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(7, 7, 1, '留言内容7', '2023-04-06 03:20:43', '回复信息7', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(8, 8, 2, '留言内容8', '2023-04-06 03:20:43', '回复信息8', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(9, 9, 2, '留言内容9', '2023-04-06 03:20:43', '回复信息9', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(10, 10, 3, '留言内容10', '2023-04-06 03:20:43', '回复信息10', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(11, 11, 1, '留言内容11', '2023-04-06 03:20:43', '回复信息11', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(12, 12, 3, '留言内容12', '2023-04-06 03:20:43', '回复信息12', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(13, 13, 3, '留言内容13', '2023-04-06 03:20:43', '回复信息13', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(14, 14, 2, '留言内容14', '2023-04-06 03:20:43', '回复信息14', '2023-04-06 03:20:43', '2023-04-06 03:20:43');

DROP TABLE IF EXISTS `huodong_yuyue`;
CREATE TABLE IF NOT EXISTS `huodong_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `huodong_id` int DEFAULT NULL COMMENT '活动',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huodong_yuyue_text` longtext COMMENT '报名意愿',
  `huodong_yuyue_yesno_types` int DEFAULT NULL COMMENT '报名状态 Search111 ',
  `huodong_yuyue_yesno_text` longtext COMMENT '审核回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='活动报名';

DELETE FROM `huodong_yuyue`;
INSERT INTO `huodong_yuyue` (`id`, `huodong_yuyue_uuid_number`, `huodong_id`, `yonghu_id`, `huodong_yuyue_text`, `huodong_yuyue_yesno_types`, `huodong_yuyue_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, '1680751243570', 1, 2, '报名意愿1', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(2, '1680751243544', 2, 1, '报名意愿2', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(3, '1680751243597', 3, 2, '报名意愿3', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(4, '1680751243618', 4, 1, '报名意愿4', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(6, '1680751243573', 6, 3, '报名意愿6', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(7, '1680751243618', 7, 2, '报名意愿7', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(8, '1680751243567', 8, 3, '报名意愿8', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(9, '1680751243591', 9, 1, '报名意愿9', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(10, '1680751243587', 10, 3, '报名意愿10', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(11, '1680751243546', 11, 1, '报名意愿11', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(12, '1680751243593', 12, 2, '报名意愿12', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(13, '1680751243586', 13, 2, '报名意愿13', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(14, '1680751243584', 14, 1, '报名意愿14', 1, NULL, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(15, '1680751670422', 12, 1, '意愿详情意愿详情意愿详情意愿详情意愿详情意愿详情意愿详情意愿详情意愿详情意愿详情意愿详情', 2, '12312', '2023-04-06 03:27:50', '2023-04-06 03:27:50');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'upload/news1.jpg', '2023-04-06 03:20:43', '公告详情1', '2023-04-06 03:20:43'),
	(2, '公告标题2', 3, 'upload/news2.jpg', '2023-04-06 03:20:43', '公告详情2', '2023-04-06 03:20:43'),
	(3, '公告标题3', 2, 'upload/news3.jpg', '2023-04-06 03:20:43', '公告详情3', '2023-04-06 03:20:43'),
	(4, '公告标题4', 2, 'upload/news4.jpg', '2023-04-06 03:20:43', '公告详情4', '2023-04-06 03:20:43'),
	(5, '公告标题5', 2, 'upload/news5.jpg', '2023-04-06 03:20:43', '公告详情5', '2023-04-06 03:20:43'),
	(6, '公告标题6', 2, 'upload/news6.jpg', '2023-04-06 03:20:43', '公告详情6', '2023-04-06 03:20:43'),
	(7, '公告标题7', 3, 'upload/news7.jpg', '2023-04-06 03:20:43', '公告详情7', '2023-04-06 03:20:43'),
	(8, '公告标题8', 2, 'upload/news8.jpg', '2023-04-06 03:20:43', '公告详情8', '2023-04-06 03:20:43'),
	(9, '公告标题9', 2, 'upload/news9.jpg', '2023-04-06 03:20:43', '公告详情9', '2023-04-06 03:20:43'),
	(10, '公告标题10', 2, 'upload/news10.jpg', '2023-04-06 03:20:43', '公告详情10', '2023-04-06 03:20:43'),
	(11, '公告标题11', 2, 'upload/news11.jpg', '2023-04-06 03:20:43', '公告详情11', '2023-04-06 03:20:43'),
	(12, '公告标题12', 3, 'upload/news12.jpg', '2023-04-06 03:20:43', '公告详情12', '2023-04-06 03:20:43'),
	(13, '公告标题13', 2, 'upload/news13.jpg', '2023-04-06 03:20:43', '公告详情13', '2023-04-06 03:20:43'),
	(14, '公告标题14', 2, 'upload/news14.jpg', '2023-04-06 03:20:43', '公告详情14', '2023-04-06 03:20:43');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'tuxw3j4zu34208556rnxhgfhugrt9tok', '2023-04-06 03:22:51', '2024-08-09 04:29:47'),
	(2, 1, 'admin', 'users', '管理员', 'kyrrx5jpoybwhheq849abp7jdtqxtnb6', '2023-04-06 03:24:12', '2024-08-09 04:28:29');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-06 03:20:34');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '123456', '用户名称1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(2, '用户2', '123456', '用户名称2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(3, '用户3', '123456', '用户名称3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43');

DROP TABLE IF EXISTS `ziliao`;
CREATE TABLE IF NOT EXISTS `ziliao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `ziliao_uuid_number` varchar(200) DEFAULT NULL COMMENT '公共资料编号',
  `ziliao_name` varchar(200) DEFAULT NULL COMMENT '公共资料名称  Search111 ',
  `ziliao_photo` varchar(200) DEFAULT NULL COMMENT '公共资料照片',
  `ziliao_file` varchar(200) DEFAULT NULL COMMENT '资料文件',
  `ziliao_video` varchar(200) DEFAULT NULL COMMENT '资料视频',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `ziliao_types` int DEFAULT NULL COMMENT '公共资料类型 Search111',
  `ziliao_clicknum` int DEFAULT NULL COMMENT '公共资料热度',
  `ziliao_content` longtext COMMENT '公共资料介绍 ',
  `ziliao_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公共资料';

DELETE FROM `ziliao`;
INSERT INTO `ziliao` (`id`, `ziliao_uuid_number`, `ziliao_name`, `ziliao_photo`, `ziliao_file`, `ziliao_video`, `zan_number`, `cai_number`, `ziliao_types`, `ziliao_clicknum`, `ziliao_content`, `ziliao_delete`, `insert_time`, `create_time`) VALUES
	(1, '1680751243587', '公共资料名称1', 'upload/ziliao1.jpg', 'upload/file.rar', 'upload/video.mp4', 476, 22, 2, 466, '公共资料介绍1', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(2, '1680751243615', '公共资料名称2', 'upload/ziliao2.jpg', 'upload/file.rar', 'upload/video.mp4', 450, 377, 3, 122, '公共资料介绍2', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(3, '1680751243612', '公共资料名称3', 'upload/ziliao3.jpg', 'upload/file.rar', 'upload/video.mp4', 452, 101, 1, 419, '公共资料介绍3', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(4, '1680751243569', '公共资料名称4', 'upload/ziliao4.jpg', 'upload/file.rar', 'upload/video.mp4', 257, 132, 3, 118, '公共资料介绍4', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(5, '1680751243618', '公共资料名称5', 'upload/ziliao5.jpg', 'upload/file.rar', 'upload/video.mp4', 255, 137, 1, 236, '公共资料介绍5', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(6, '1680751243627', '公共资料名称6', 'upload/ziliao6.jpg', 'upload/file.rar', 'upload/video.mp4', 287, 497, 2, 78, '公共资料介绍6', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(7, '1680751243544', '公共资料名称7', 'upload/ziliao7.jpg', 'upload/file.rar', 'upload/video.mp4', 32, 218, 3, 192, '公共资料介绍7', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(8, '1680751243578', '公共资料名称8', 'upload/ziliao8.jpg', 'upload/file.rar', 'upload/video.mp4', 270, 356, 2, 415, '公共资料介绍8', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(9, '1680751243627', '公共资料名称9', 'upload/ziliao9.jpg', 'upload/file.rar', 'upload/video.mp4', 305, 137, 4, 342, '公共资料介绍9', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(10, '1680751243552', '公共资料名称10', 'upload/ziliao10.jpg', 'upload/file.rar', 'upload/video.mp4', 326, 104, 2, 339, '公共资料介绍10', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(11, '1680751243550', '公共资料名称11', 'upload/ziliao11.jpg', 'upload/file.rar', 'upload/video.mp4', 267, 120, 1, 356, '公共资料介绍11', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(12, '1680751243552', '公共资料名称12', 'upload/ziliao12.jpg', 'upload/file.rar', 'upload/video.mp4', 22, 448, 2, 488, '公共资料介绍12', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(13, '1680751243618', '公共资料名称13', 'upload/ziliao13.jpg', 'upload/file.rar', 'upload/video.mp4', 500, 102, 3, 349, '公共资料介绍13', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(14, '1680751243547', '公共资料名称14', 'upload/ziliao14.jpg', 'upload/file.rar', 'upload/video.mp4', 37, 198, 4, 444, '公共资料介绍14', 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43');

DROP TABLE IF EXISTS `ziliao_collection`;
CREATE TABLE IF NOT EXISTS `ziliao_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziliao_id` int DEFAULT NULL COMMENT '公共资料',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `ziliao_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='公共资料收藏';

DELETE FROM `ziliao_collection`;
INSERT INTO `ziliao_collection` (`id`, `ziliao_id`, `yonghu_id`, `ziliao_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(2, 2, 3, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(3, 3, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(4, 4, 3, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(5, 5, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(6, 6, 1, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(7, 7, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(8, 8, 3, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(9, 9, 3, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(10, 10, 3, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(11, 11, 3, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(12, 12, 2, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(13, 13, 3, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(14, 14, 1, 1, '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(15, 14, 1, 3, '2023-04-06 03:28:22', '2023-04-06 03:28:22'),
	(16, 3, 1, 1, '2024-08-09 03:30:16', '2024-08-09 03:30:16');

DROP TABLE IF EXISTS `ziliao_liuyan`;
CREATE TABLE IF NOT EXISTS `ziliao_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziliao_id` int DEFAULT NULL COMMENT '公共资料',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `ziliao_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='公共资料留言';

DELETE FROM `ziliao_liuyan`;
INSERT INTO `ziliao_liuyan` (`id`, `ziliao_id`, `yonghu_id`, `ziliao_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-04-06 03:20:43', '回复信息1', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(2, 2, 2, '留言内容2', '2023-04-06 03:20:43', '回复信息2', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(3, 3, 1, '留言内容3', '2023-04-06 03:20:43', '回复信息3', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(4, 4, 1, '留言内容4', '2023-04-06 03:20:43', '回复信息4', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(5, 5, 1, '留言内容5', '2023-04-06 03:20:43', '回复信息5', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(6, 6, 2, '留言内容6', '2023-04-06 03:20:43', '回复信息6', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(7, 7, 1, '留言内容7', '2023-04-06 03:20:43', '回复信息7', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(8, 8, 3, '留言内容8', '2023-04-06 03:20:43', '回复信息8', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(9, 9, 1, '留言内容9', '2023-04-06 03:20:43', '回复信息9', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(10, 10, 1, '留言内容10', '2023-04-06 03:20:43', '回复信息10', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(11, 11, 3, '留言内容11', '2023-04-06 03:20:43', '回复信息11', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(12, 12, 3, '留言内容12', '2023-04-06 03:20:43', '回复信息12', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(13, 13, 2, '留言内容13', '2023-04-06 03:20:43', '回复信息13', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(14, 14, 2, '留言内容14', '2023-04-06 03:20:43', '回复信息14', '2023-04-06 03:20:43', '2023-04-06 03:20:43'),
	(15, 14, 1, '123', '2023-04-06 03:28:27', '上方导航栏可以滚动', '2023-04-06 03:29:32', '2023-04-06 03:28:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
