/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmg90dl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmg90dl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmg90dl`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmg90dl/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmg90dl/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmg90dl/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `fangwuleixing` */

DROP TABLE IF EXISTS `fangwuleixing`;

CREATE TABLE `fangwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='房屋类型';

/*Data for the table `fangwuleixing` */

insert  into `fangwuleixing`(`id`,`addtime`,`fangwuleixing`) values (41,'2021-04-19 17:47:22','房屋类型1'),(42,'2021-04-19 17:47:22','房屋类型2'),(43,'2021-04-19 17:47:22','房屋类型3'),(44,'2021-04-19 17:47:22','房屋类型4'),(45,'2021-04-19 17:47:22','房屋类型5'),(46,'2021-04-19 17:47:22','房屋类型6');

/*Table structure for table `fangwuxinxi` */

DROP TABLE IF EXISTS `fangwuxinxi`;

CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuhao` varchar(200) NOT NULL COMMENT '房屋号',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `mianji` varchar(200) NOT NULL COMMENT '面积',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `xiangqing` longtext COMMENT '详情',
  `zhongjiezhanghao` varchar(200) DEFAULT NULL COMMENT '中介账号',
  `zhongjiexingming` varchar(200) DEFAULT NULL COMMENT '中介姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwuhao` (`fangwuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='房屋信息';

/*Data for the table `fangwuxinxi` */

insert  into `fangwuxinxi`(`id`,`addtime`,`fangwuhao`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`mianji`,`jiage`,`xiangxidizhi`,`zhuangtai`,`xiangqing`,`zhongjiezhanghao`,`zhongjiexingming`,`lianxidianhua`) values (31,'2021-04-19 17:47:22','房屋号1','房屋名称1','房屋类型1','http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian1.jpg','面积1',1,'详细地址1','待出租','详情1','中介账号1','中介姓名1','13823888881'),(32,'2021-04-19 17:47:22','房屋号2','房屋名称2','房屋类型2','http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian2.jpg','面积2',2,'详细地址2','待出租','详情2','中介账号2','中介姓名2','13823888882'),(33,'2021-04-19 17:47:22','房屋号3','房屋名称3','房屋类型3','http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian3.jpg','面积3',3,'详细地址3','待出租','详情3','中介账号3','中介姓名3','13823888883'),(34,'2021-04-19 17:47:22','房屋号4','房屋名称4','房屋类型4','http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian4.jpg','面积4',4,'详细地址4','待出租','详情4','中介账号4','中介姓名4','13823888884'),(35,'2021-04-19 17:47:22','房屋号5','房屋名称5','房屋类型5','http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian5.jpg','面积5',5,'详细地址5','待出租','详情5','中介账号5','中介姓名5','13823888885'),(36,'2021-04-19 17:47:22','房屋号6','房屋名称6','房屋类型6','http://localhost:8080/ssmg90dl/upload/fangwuxinxi_tupian6.jpg','面积6',6,'详细地址6','待出租','详情6','中介账号6','中介姓名6','13823888886');

/*Table structure for table `fangyuanguanli` */

DROP TABLE IF EXISTS `fangyuanguanli`;

CREATE TABLE `fangyuanguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuhao` varchar(200) NOT NULL COMMENT '房屋号',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `mianji` varchar(200) NOT NULL COMMENT '面积',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `shebeipeizhi` varchar(200) DEFAULT NULL COMMENT '设备配置',
  `zhuangxiuqingkuang` longtext COMMENT '装修情况',
  `fangwuxiangqing` longtext COMMENT '房屋详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='房源管理';

/*Data for the table `fangyuanguanli` */

insert  into `fangyuanguanli`(`id`,`addtime`,`fangwuhao`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`mianji`,`xiangxidizhi`,`shebeipeizhi`,`zhuangxiuqingkuang`,`fangwuxiangqing`) values (81,'2021-04-19 17:47:22','房屋号1','房屋名称1','房屋类型1','http://localhost:8080/ssmg90dl/upload/fangyuanguanli_tupian1.jpg','面积1','详细地址1','设备配置1','装修情况1','房屋详情1'),(82,'2021-04-19 17:47:22','房屋号2','房屋名称2','房屋类型2','http://localhost:8080/ssmg90dl/upload/fangyuanguanli_tupian2.jpg','面积2','详细地址2','设备配置2','装修情况2','房屋详情2'),(83,'2021-04-19 17:47:22','房屋号3','房屋名称3','房屋类型3','http://localhost:8080/ssmg90dl/upload/fangyuanguanli_tupian3.jpg','面积3','详细地址3','设备配置3','装修情况3','房屋详情3'),(84,'2021-04-19 17:47:22','房屋号4','房屋名称4','房屋类型4','http://localhost:8080/ssmg90dl/upload/fangyuanguanli_tupian4.jpg','面积4','详细地址4','设备配置4','装修情况4','房屋详情4'),(85,'2021-04-19 17:47:22','房屋号5','房屋名称5','房屋类型5','http://localhost:8080/ssmg90dl/upload/fangyuanguanli_tupian5.jpg','面积5','详细地址5','设备配置5','装修情况5','房屋详情5'),(86,'2021-04-19 17:47:22','房屋号6','房屋名称6','房屋类型6','http://localhost:8080/ssmg90dl/upload/fangyuanguanli_tupian6.jpg','面积6','详细地址6','设备配置6','装修情况6','房屋详情6');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-19 17:47:22');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`) values (11,'2021-04-19 17:47:22','用户1','123456','姓名1','男',1,'13823888881','440300199101010001','773890001@qq.com','http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-19 17:47:22','用户2','123456','姓名2','男',2,'13823888882','440300199202020002','773890002@qq.com','http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-19 17:47:22','用户3','123456','姓名3','男',3,'13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-19 17:47:22','用户4','123456','姓名4','男',4,'13823888884','440300199404040004','773890004@qq.com','http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-19 17:47:22','用户5','123456','姓名5','男',5,'13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-19 17:47:22','用户6','123456','姓名6','男',6,'13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/ssmg90dl/upload/yonghu_zhaopian6.jpg');

/*Table structure for table `zhongjie` */

DROP TABLE IF EXISTS `zhongjie`;

CREATE TABLE `zhongjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhongjiezhanghao` varchar(200) NOT NULL COMMENT '中介账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhongjiexingming` varchar(200) NOT NULL COMMENT '中介姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhongjiezhanghao` (`zhongjiezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='中介';

/*Data for the table `zhongjie` */

insert  into `zhongjie`(`id`,`addtime`,`zhongjiezhanghao`,`mima`,`zhongjiexingming`,`xingbie`,`touxiang`,`shenfenzheng`,`lianxidianhua`,`nianling`) values (21,'2021-04-19 17:47:22','中介1','123456','中介姓名1','男','http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang1.jpg','440300199101010001','13823888881',1),(22,'2021-04-19 17:47:22','中介2','123456','中介姓名2','男','http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang2.jpg','440300199202020002','13823888882',2),(23,'2021-04-19 17:47:22','中介3','123456','中介姓名3','男','http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang3.jpg','440300199303030003','13823888883',3),(24,'2021-04-19 17:47:22','中介4','123456','中介姓名4','男','http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang4.jpg','440300199404040004','13823888884',4),(25,'2021-04-19 17:47:22','中介5','123456','中介姓名5','男','http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang5.jpg','440300199505050005','13823888885',5),(26,'2021-04-19 17:47:22','中介6','123456','中介姓名6','男','http://localhost:8080/ssmg90dl/upload/zhongjie_touxiang6.jpg','440300199606060006','13823888886',6);

/*Table structure for table `zufangdingdan` */

DROP TABLE IF EXISTS `zufangdingdan`;

CREATE TABLE `zufangdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuhao` varchar(200) NOT NULL COMMENT '房屋号',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `zufangriqi` date DEFAULT NULL COMMENT '租房日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='租房订单';

/*Data for the table `zufangdingdan` */

insert  into `zufangdingdan`(`id`,`addtime`,`fangwuhao`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`jiage`,`xiangxidizhi`,`zufangriqi`,`zhanghao`,`xingming`,`shouji`,`ispay`,`userid`) values (51,'2021-04-19 17:47:22','房屋号1','房屋名称1','房屋类型1','http://localhost:8080/ssmg90dl/upload/zufangdingdan_tupian1.jpg',1,'详细地址1','2021-04-19','账号1','姓名1','手机1','未支付',1),(52,'2021-04-19 17:47:22','房屋号2','房屋名称2','房屋类型2','http://localhost:8080/ssmg90dl/upload/zufangdingdan_tupian2.jpg',2,'详细地址2','2021-04-19','账号2','姓名2','手机2','未支付',2),(53,'2021-04-19 17:47:22','房屋号3','房屋名称3','房屋类型3','http://localhost:8080/ssmg90dl/upload/zufangdingdan_tupian3.jpg',3,'详细地址3','2021-04-19','账号3','姓名3','手机3','未支付',3),(54,'2021-04-19 17:47:22','房屋号4','房屋名称4','房屋类型4','http://localhost:8080/ssmg90dl/upload/zufangdingdan_tupian4.jpg',4,'详细地址4','2021-04-19','账号4','姓名4','手机4','未支付',4),(55,'2021-04-19 17:47:22','房屋号5','房屋名称5','房屋类型5','http://localhost:8080/ssmg90dl/upload/zufangdingdan_tupian5.jpg',5,'详细地址5','2021-04-19','账号5','姓名5','手机5','未支付',5),(56,'2021-04-19 17:47:22','房屋号6','房屋名称6','房屋类型6','http://localhost:8080/ssmg90dl/upload/zufangdingdan_tupian6.jpg',6,'详细地址6','2021-04-19','账号6','姓名6','手机6','未支付',6);

/*Table structure for table `zufangxinxi` */

DROP TABLE IF EXISTS `zufangxinxi`;

CREATE TABLE `zufangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuhao` varchar(200) NOT NULL COMMENT '房屋号',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='租房信息';

/*Data for the table `zufangxinxi` */

insert  into `zufangxinxi`(`id`,`addtime`,`fangwuhao`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`xiangxidizhi`,`zhanghao`,`xingming`,`userid`) values (61,'2021-04-19 17:47:22','房屋号1','房屋名称1','房屋类型1','http://localhost:8080/ssmg90dl/upload/zufangxinxi_tupian1.jpg','详细地址1','账号1','姓名1',1),(62,'2021-04-19 17:47:22','房屋号2','房屋名称2','房屋类型2','http://localhost:8080/ssmg90dl/upload/zufangxinxi_tupian2.jpg','详细地址2','账号2','姓名2',2),(63,'2021-04-19 17:47:22','房屋号3','房屋名称3','房屋类型3','http://localhost:8080/ssmg90dl/upload/zufangxinxi_tupian3.jpg','详细地址3','账号3','姓名3',3),(64,'2021-04-19 17:47:22','房屋号4','房屋名称4','房屋类型4','http://localhost:8080/ssmg90dl/upload/zufangxinxi_tupian4.jpg','详细地址4','账号4','姓名4',4),(65,'2021-04-19 17:47:22','房屋号5','房屋名称5','房屋类型5','http://localhost:8080/ssmg90dl/upload/zufangxinxi_tupian5.jpg','详细地址5','账号5','姓名5',5),(66,'2021-04-19 17:47:22','房屋号6','房屋名称6','房屋类型6','http://localhost:8080/ssmg90dl/upload/zufangxinxi_tupian6.jpg','详细地址6','账号6','姓名6',6);

/*Table structure for table `zufangzhangdan` */

DROP TABLE IF EXISTS `zufangzhangdan`;

CREATE TABLE `zufangzhangdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuhao` varchar(200) NOT NULL COMMENT '房屋号',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shuidianfei` int(11) DEFAULT NULL COMMENT '水电费',
  `wuyefei` int(11) DEFAULT NULL COMMENT '物业费',
  `fangzufei` int(11) DEFAULT NULL COMMENT '房租费',
  `zhangdanxiangqing` longtext COMMENT '账单详情',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='租房账单';

/*Data for the table `zufangzhangdan` */

insert  into `zufangzhangdan`(`id`,`addtime`,`fangwuhao`,`fangwumingcheng`,`fangwuleixing`,`tupian`,`zhanghao`,`xingming`,`shuidianfei`,`wuyefei`,`fangzufei`,`zhangdanxiangqing`,`ispay`,`userid`) values (71,'2021-04-19 17:47:22','房屋号1','房屋名称1','房屋类型1','http://localhost:8080/ssmg90dl/upload/zufangzhangdan_tupian1.jpg','账号1','姓名1',1,1,1,'账单详情1','未支付',1),(72,'2021-04-19 17:47:22','房屋号2','房屋名称2','房屋类型2','http://localhost:8080/ssmg90dl/upload/zufangzhangdan_tupian2.jpg','账号2','姓名2',2,2,2,'账单详情2','未支付',2),(73,'2021-04-19 17:47:22','房屋号3','房屋名称3','房屋类型3','http://localhost:8080/ssmg90dl/upload/zufangzhangdan_tupian3.jpg','账号3','姓名3',3,3,3,'账单详情3','未支付',3),(74,'2021-04-19 17:47:22','房屋号4','房屋名称4','房屋类型4','http://localhost:8080/ssmg90dl/upload/zufangzhangdan_tupian4.jpg','账号4','姓名4',4,4,4,'账单详情4','未支付',4),(75,'2021-04-19 17:47:22','房屋号5','房屋名称5','房屋类型5','http://localhost:8080/ssmg90dl/upload/zufangzhangdan_tupian5.jpg','账号5','姓名5',5,5,5,'账单详情5','未支付',5),(76,'2021-04-19 17:47:22','房屋号6','房屋名称6','房屋类型6','http://localhost:8080/ssmg90dl/upload/zufangzhangdan_tupian6.jpg','账号6','姓名6',6,6,6,'账单详情6','未支付',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
