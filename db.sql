/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspmg9w8z
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspmg9w8z` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspmg9w8z`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmg9w8z/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmg9w8z/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmg9w8z/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussgequxinxi` */

DROP TABLE IF EXISTS `discussgequxinxi`;

CREATE TABLE `discussgequxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='歌曲信息评论表';

/*Data for the table `discussgequxinxi` */

insert  into `discussgequxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (51,'2021-03-11 18:12:00',1,1,'用户名1','评论内容1','回复内容1'),(52,'2021-03-11 18:12:00',2,2,'用户名2','评论内容2','回复内容2'),(53,'2021-03-11 18:12:00',3,3,'用户名3','评论内容3','回复内容3'),(54,'2021-03-11 18:12:00',4,4,'用户名4','评论内容4','回复内容4'),(55,'2021-03-11 18:12:00',5,5,'用户名5','评论内容5','回复内容5'),(56,'2021-03-11 18:12:00',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusstuijianxinxi` */

DROP TABLE IF EXISTS `discusstuijianxinxi`;

CREATE TABLE `discusstuijianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='推荐信息评论表';

/*Data for the table `discusstuijianxinxi` */

insert  into `discusstuijianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (61,'2021-03-11 18:12:00',1,1,'用户名1','评论内容1','回复内容1'),(62,'2021-03-11 18:12:00',2,2,'用户名2','评论内容2','回复内容2'),(63,'2021-03-11 18:12:00',3,3,'用户名3','评论内容3','回复内容3'),(64,'2021-03-11 18:12:00',4,4,'用户名4','评论内容4','回复内容4'),(65,'2021-03-11 18:12:00',5,5,'用户名5','评论内容5','回复内容5'),(66,'2021-03-11 18:12:00',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `gequxinxi` */

DROP TABLE IF EXISTS `gequxinxi`;

CREATE TABLE `gequxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gequbianhao` varchar(200) DEFAULT NULL COMMENT '歌曲编号',
  `gequmingcheng` varchar(200) NOT NULL COMMENT '歌曲名称',
  `gequleibie` varchar(200) NOT NULL COMMENT '歌曲类别',
  `geshou` varchar(200) NOT NULL COMMENT '歌手',
  `puqu` varchar(200) DEFAULT NULL COMMENT '谱曲',
  `shizhang` varchar(200) DEFAULT NULL COMMENT '时长',
  `gequ` varchar(200) DEFAULT NULL COMMENT '歌曲',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `xiangguanxinxi` varchar(200) DEFAULT NULL COMMENT '相关信息',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615457787932 DEFAULT CHARSET=utf8 COMMENT='歌曲信息';

/*Data for the table `gequxinxi` */

insert  into `gequxinxi`(`id`,`addtime`,`gequbianhao`,`gequmingcheng`,`gequleibie`,`geshou`,`puqu`,`shizhang`,`gequ`,`xiangguantupian`,`xiangguanxinxi`,`shangjiariqi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-03-11 18:12:00','歌曲编号1','歌曲名称1','流行','歌手1','谱曲1','时长1','','http://localhost:8080/jspmg9w8z/upload/gequxinxi_xiangguantupian1.jpg','相关信息1','2021-03-11',1,1,'2021-03-11 18:12:00',1),(22,'2021-03-11 18:12:00','歌曲编号2','歌曲名称2','流行','歌手2','谱曲2','时长2','','http://localhost:8080/jspmg9w8z/upload/gequxinxi_xiangguantupian2.jpg','相关信息2','2021-03-11',2,2,'2021-03-11 18:12:00',2),(23,'2021-03-11 18:12:00','歌曲编号3','歌曲名称3','流行','歌手3','谱曲3','时长3','','http://localhost:8080/jspmg9w8z/upload/gequxinxi_xiangguantupian3.jpg','相关信息3','2021-03-11',3,3,'2021-03-11 18:12:00',3),(24,'2021-03-11 18:12:00','歌曲编号4','歌曲名称4','流行','歌手4','谱曲4','时长4','','http://localhost:8080/jspmg9w8z/upload/gequxinxi_xiangguantupian4.jpg','相关信息4','2021-03-11',4,4,'2021-03-11 18:12:00',4),(25,'2021-03-11 18:12:00','歌曲编号5','歌曲名称5','流行','歌手5','谱曲5','时长5','','http://localhost:8080/jspmg9w8z/upload/gequxinxi_xiangguantupian5.jpg','相关信息5','2021-03-11',5,5,'2021-03-11 18:12:00',5),(26,'2021-03-11 18:12:00','歌曲编号6','歌曲名称6','流行','歌手6','谱曲6','时长6','','http://localhost:8080/jspmg9w8z/upload/gequxinxi_xiangguantupian6.jpg','相关信息6','2021-03-11',6,6,'2021-03-11 18:12:00',6),(1615457787931,'2021-03-11 18:16:26','123','456','流行','112223','1212','5','http://localhost:8080/jspmg9w8z/upload/1615457783313.mp3','http://localhost:8080/jspmg9w8z/upload/1615457773861.png','1010','2021-02-03',0,0,'2021-03-11 18:18:04',2);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1615457691691,'1','yonghu','用户','mw95dbq4h8o4j0cdthxngvq6390g9rzd','2021-03-11 18:14:57','2021-03-11 19:14:58'),(2,1,'abo','users','管理员','h7ydbq8d8gwosm2iz5iinoko3rjumme2','2021-03-11 18:15:43','2021-03-11 19:15:43');

/*Table structure for table `tuijianxinxi` */

DROP TABLE IF EXISTS `tuijianxinxi`;

CREATE TABLE `tuijianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gequbianhao` varchar(200) DEFAULT NULL COMMENT '歌曲编号',
  `gequmingcheng` varchar(200) DEFAULT NULL COMMENT '歌曲名称',
  `gequleibie` varchar(200) DEFAULT NULL COMMENT '歌曲类别',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `gequ` varchar(200) DEFAULT NULL COMMENT '歌曲',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tuijianliyou` varchar(200) DEFAULT NULL COMMENT '推荐理由',
  `tuijianriqi` date DEFAULT NULL COMMENT '推荐日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='推荐信息';

/*Data for the table `tuijianxinxi` */

insert  into `tuijianxinxi`(`id`,`addtime`,`gequbianhao`,`gequmingcheng`,`gequleibie`,`geshou`,`gequ`,`zhanghao`,`xiangguantupian`,`xingming`,`tuijianliyou`,`tuijianriqi`,`thumbsupnum`,`crazilynum`) values (31,'2021-03-11 18:12:00','歌曲编号1','歌曲名称1','歌曲类别1','歌手1','','账号1','http://localhost:8080/jspmg9w8z/upload/tuijianxinxi_xiangguantupian1.jpg','姓名1','推荐理由1','2021-03-11',1,1),(32,'2021-03-11 18:12:00','歌曲编号2','歌曲名称2','歌曲类别2','歌手2','','账号2','http://localhost:8080/jspmg9w8z/upload/tuijianxinxi_xiangguantupian2.jpg','姓名2','推荐理由2','2021-03-11',2,2),(33,'2021-03-11 18:12:00','歌曲编号3','歌曲名称3','歌曲类别3','歌手3','','账号3','http://localhost:8080/jspmg9w8z/upload/tuijianxinxi_xiangguantupian3.jpg','姓名3','推荐理由3','2021-03-11',3,3),(34,'2021-03-11 18:12:00','歌曲编号4','歌曲名称4','歌曲类别4','歌手4','','账号4','http://localhost:8080/jspmg9w8z/upload/tuijianxinxi_xiangguantupian4.jpg','姓名4','推荐理由4','2021-03-11',4,4),(35,'2021-03-11 18:12:00','歌曲编号5','歌曲名称5','歌曲类别5','歌手5','','账号5','http://localhost:8080/jspmg9w8z/upload/tuijianxinxi_xiangguantupian5.jpg','姓名5','推荐理由5','2021-03-11',5,5),(36,'2021-03-11 18:12:00','歌曲编号6','歌曲名称6','歌曲类别6','歌手6','','账号6','http://localhost:8080/jspmg9w8z/upload/tuijianxinxi_xiangguantupian6.jpg','姓名6','推荐理由6','2021-03-11',6,6);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-11 18:12:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615457691692 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shenfenzhenghaoma`,`shoujihaoma`,`zhaopian`) values (11,'2021-03-11 18:12:00','用户1','123456','姓名1','男','440300199101010001','13823888881','http://localhost:8080/jspmg9w8z/upload/yonghu_zhaopian1.jpg'),(12,'2021-03-11 18:12:00','用户2','123456','姓名2','男','440300199202020002','13823888882','http://localhost:8080/jspmg9w8z/upload/yonghu_zhaopian2.jpg'),(13,'2021-03-11 18:12:00','用户3','123456','姓名3','男','440300199303030003','13823888883','http://localhost:8080/jspmg9w8z/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-11 18:12:00','用户4','123456','姓名4','男','440300199404040004','13823888884','http://localhost:8080/jspmg9w8z/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-11 18:12:00','用户5','123456','姓名5','男','440300199505050005','13823888885','http://localhost:8080/jspmg9w8z/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-11 18:12:00','用户6','123456','姓名6','男','440300199606060006','13823888886','http://localhost:8080/jspmg9w8z/upload/yonghu_zhaopian6.jpg'),(1615457691691,'2021-03-11 18:14:51','1','1','1',NULL,'','',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
