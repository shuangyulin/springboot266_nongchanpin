/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - nongchanpinzhimai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nongchanpinzhimai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nongchanpinzhimai`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2022-03-16 10:34:14','2022-03-16 10:34:14','2022-03-16 10:34:14'),(2,1,'收货人2','17703786902','地址2',2,'2022-03-16 10:34:14','2022-03-16 10:43:37','2022-03-16 10:34:14'),(3,1,'收货人3','17703786903','地址3',1,'2022-03-16 10:34:14','2022-03-16 10:43:31','2022-03-16 10:34:14'),(4,3,'收货人4','17703786904','地址4',1,'2022-03-16 10:34:14','2022-03-16 10:34:14','2022-03-16 10:34:14'),(5,2,'收货人5','17703786905','地址5',1,'2022-03-16 10:34:14','2022-03-16 10:34:14','2022-03-16 10:34:14');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '农产品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/nongchanpinzhimai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/nongchanpinzhimai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/nongchanpinzhimai/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-16 10:34:10'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-16 10:34:10'),(3,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2022-03-16 10:34:10'),(4,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2022-03-16 10:34:10'),(5,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2022-03-16 10:34:10'),(6,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-16 10:34:10'),(7,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-16 10:34:10'),(8,'nongchanpin_types','农产品类型',1,'农产品类型1',NULL,NULL,'2022-03-16 10:34:10'),(9,'nongchanpin_types','农产品类型',2,'农产品类型2',NULL,NULL,'2022-03-16 10:34:10'),(10,'nongchanpin_types','农产品类型',3,'农产品类型3',NULL,NULL,'2022-03-16 10:34:10'),(11,'nongchanpin_types','农产品类型',4,'农产品类型4',NULL,NULL,'2022-03-16 10:34:10'),(12,'nongchanpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-16 10:34:10'),(13,'nongchanpin_order_types','订单类型',1,'已评价',NULL,NULL,'2022-03-16 10:34:11'),(14,'nongchanpin_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-16 10:34:11'),(15,'nongchanpin_order_types','订单类型',3,'已支付',NULL,NULL,'2022-03-16 10:34:11'),(16,'nongchanpin_order_types','订单类型',4,'已发货',NULL,NULL,'2022-03-16 10:34:11'),(17,'nongchanpin_order_types','订单类型',5,'已收货',NULL,NULL,'2022-03-16 10:34:11'),(18,'nongchanpin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-16 10:34:11'),(19,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-16 10:34:11'),(20,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-16 10:34:11'),(21,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-16 10:34:11'),(22,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-16 10:34:11');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/nongchanpinzhimai/upload/gonggao1.jpg',1,'2022-03-16 10:34:14','公告详情1','2022-03-16 10:34:14'),(2,'公告名称2','http://localhost:8080/nongchanpinzhimai/upload/gonggao2.jpg',2,'2022-03-16 10:34:14','公告详情2','2022-03-16 10:34:14'),(3,'公告名称3','http://localhost:8080/nongchanpinzhimai/upload/gonggao3.jpg',1,'2022-03-16 10:34:14','公告详情3','2022-03-16 10:34:14'),(4,'公告名称4','http://localhost:8080/nongchanpinzhimai/upload/gonggao4.jpg',2,'2022-03-16 10:34:14','公告详情4','2022-03-16 10:34:14'),(5,'公告名称5','http://localhost:8080/nongchanpinzhimai/upload/gonggao5.jpg',1,'2022-03-16 10:34:14','公告详情5','2022-03-16 10:34:14');

/*Table structure for table `nongchanpin` */

DROP TABLE IF EXISTS `nongchanpin`;

CREATE TABLE `nongchanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `nongchanpin_name` varchar(200) DEFAULT NULL COMMENT '农产品名称  Search111 ',
  `nongchanpin_photo` varchar(200) DEFAULT NULL COMMENT '农产品照片',
  `nongchanpin_types` int(11) DEFAULT NULL COMMENT '农产品类型 Search111',
  `nongchanpin_kucun_number` int(11) DEFAULT NULL COMMENT '农产品库存',
  `nongchanpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '农产品原价 ',
  `nongchanpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `nongchanpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `nongchanpin_content` text COMMENT '农产品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `nongchanpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='农产品';

/*Data for the table `nongchanpin` */

insert  into `nongchanpin`(`id`,`shangjia_id`,`nongchanpin_name`,`nongchanpin_photo`,`nongchanpin_types`,`nongchanpin_kucun_number`,`nongchanpin_old_money`,`nongchanpin_new_money`,`nongchanpin_clicknum`,`nongchanpin_content`,`shangxia_types`,`nongchanpin_delete`,`create_time`) values (1,3,'农产品名称1','http://localhost:8080/nongchanpinzhimai/upload/nongchanpin1.jpg',3,97,'579.34','352.35',446,'农产品介绍1',1,1,'2022-03-16 10:34:14'),(2,2,'农产品名称2','http://localhost:8080/nongchanpinzhimai/upload/nongchanpin2.jpg',1,102,'917.63','252.26',358,'农产品介绍2',1,1,'2022-03-16 10:34:14'),(3,1,'农产品名称3','http://localhost:8080/nongchanpinzhimai/upload/nongchanpin3.jpg',2,101,'924.97','257.70',220,'<p>农产品介绍3是是是</p>',1,1,'2022-03-16 10:34:14'),(4,2,'农产品名称4','http://localhost:8080/nongchanpinzhimai/upload/nongchanpin4.jpg',3,104,'738.30','160.92',251,'农产品介绍4',1,1,'2022-03-16 10:34:14'),(5,3,'农产品名称5','http://localhost:8080/nongchanpinzhimai/upload/nongchanpin5.jpg',3,103,'886.02','453.75',480,'农产品介绍5',1,1,'2022-03-16 10:34:14');

/*Table structure for table `nongchanpin_collection` */

DROP TABLE IF EXISTS `nongchanpin_collection`;

CREATE TABLE `nongchanpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '农产品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `nongchanpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='农产品收藏';

/*Data for the table `nongchanpin_collection` */

insert  into `nongchanpin_collection`(`id`,`nongchanpin_id`,`yonghu_id`,`nongchanpin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-03-16 10:34:14','2022-03-16 10:34:14'),(2,2,2,1,'2022-03-16 10:34:14','2022-03-16 10:34:14'),(3,3,2,1,'2022-03-16 10:34:14','2022-03-16 10:34:14'),(4,4,1,1,'2022-03-16 10:34:14','2022-03-16 10:34:14'),(5,5,1,1,'2022-03-16 10:34:14','2022-03-16 10:34:14');

/*Table structure for table `nongchanpin_commentback` */

DROP TABLE IF EXISTS `nongchanpin_commentback`;

CREATE TABLE `nongchanpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '农产品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `nongchanpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='农产品评价';

/*Data for the table `nongchanpin_commentback` */

insert  into `nongchanpin_commentback`(`id`,`nongchanpin_id`,`yonghu_id`,`nongchanpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2022-03-16 10:34:14','回复信息1','2022-03-16 10:34:14','2022-03-16 10:34:14'),(2,2,2,'评价内容2','2022-03-16 10:34:14','回复信息2','2022-03-16 10:34:14','2022-03-16 10:34:14'),(3,3,2,'评价内容3','2022-03-16 10:34:14','回复信息3','2022-03-16 10:34:14','2022-03-16 10:34:14'),(4,4,2,'评价内容4','2022-03-16 10:34:14','回复信息4','2022-03-16 10:34:14','2022-03-16 10:34:14'),(5,5,3,'评价内容5','2022-03-16 10:34:14','回复信息5','2022-03-16 10:34:14','2022-03-16 10:34:14'),(6,3,1,'好的很','2022-03-16 10:46:45','感谢您的鼓掌怒','2022-03-16 10:47:11','2022-03-16 10:46:45');

/*Table structure for table `nongchanpin_order` */

DROP TABLE IF EXISTS `nongchanpin_order`;

CREATE TABLE `nongchanpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '农产品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `nongchanpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `nongchanpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `nongchanpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `nongchanpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `nongchanpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='农产品订单';

/*Data for the table `nongchanpin_order` */

insert  into `nongchanpin_order`(`id`,`nongchanpin_order_uuid_number`,`address_id`,`nongchanpin_id`,`yonghu_id`,`buy_number`,`nongchanpin_order_true_price`,`nongchanpin_order_courier_name`,`nongchanpin_order_courier_number`,`nongchanpin_order_types`,`nongchanpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1647398596033',2,3,1,1,'357.70',NULL,NULL,2,1,'2022-03-16 10:43:16','2022-03-16 10:43:16'),(2,'1647398632086',2,3,1,2,'715.40','申通快递','5649961',1,1,'2022-03-16 10:43:52','2022-03-16 10:43:52'),(3,'1647398632086',2,1,1,4,'1409.40',NULL,NULL,3,1,'2022-03-16 10:43:52','2022-03-16 10:43:52'),(4,'1647398632086',2,5,1,2,'907.50',NULL,NULL,3,1,'2022-03-16 10:43:52','2022-03-16 10:43:52');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家介绍',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','http://localhost:8080/nongchanpinzhimai/upload/shangjia1.jpg',3,'1522.44','<p>商家介绍1是是是</p>',1,'2022-03-16 10:34:14'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','http://localhost:8080/nongchanpinzhimai/upload/shangjia2.jpg',3,'561.35','商家介绍2',1,'2022-03-16 10:34:14'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','http://localhost:8080/nongchanpinzhimai/upload/shangjia3.jpg',3,'1508.45','商家介绍3',1,'2022-03-16 10:34:14');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','bmi48ey59ovssu8mlp0pqfdwdzsj614i','2022-03-16 10:27:14','2022-03-16 11:46:17'),(2,6,'admin','users','管理员','hc87hk5f5r8rzu9dba0zcnylyqnxhc2v','2022-03-16 10:44:25','2022-03-16 11:44:26'),(3,1,'a1','shangjia','商家','6u9z2immjcprwl3lw1cmg3z8namcygll','2022-03-16 10:44:55','2022-03-16 11:46:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/nongchanpinzhimai/upload/yonghu1.jpg',1,'1@qq.com','10117.66','2022-03-16 10:34:14'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/nongchanpinzhimai/upload/yonghu2.jpg',2,'2@qq.com','148.83','2022-03-16 10:34:14'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/nongchanpinzhimai/upload/yonghu3.jpg',2,'3@qq.com','705.50','2022-03-16 10:34:14');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
