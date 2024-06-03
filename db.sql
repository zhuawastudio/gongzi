/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gongzi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gongzi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gongzi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (17,'zhiwei_types','职位',1,'普通职员',NULL,'999','2023-04-18 13:59:01'),(18,'zhiwei_types','职位',2,'小组长',NULL,'1000','2023-04-18 13:59:01'),(19,'bumen_types','部门',1,'事业部',NULL,NULL,'2023-04-18 13:59:01'),(20,'bumen_types','部门',2,'宣传部',NULL,NULL,'2023-04-18 13:59:01'),(21,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-18 13:59:01'),(22,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-18 13:59:01'),(23,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-18 13:59:01'),(24,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-18 13:59:01'),(25,'jixiao_types','绩效类型',1,'绩效类型1',NULL,NULL,'2023-04-18 13:59:01'),(26,'jixiao_types','绩效类型',2,'绩效类型2',NULL,NULL,'2023-04-18 13:59:01'),(27,'jixiao_types','绩效类型',3,'绩效类型3',NULL,NULL,'2023-04-18 13:59:01'),(28,'jixiao_types','绩效类型',4,'绩效类型4',NULL,NULL,'2023-04-18 13:59:01'),(29,'jintie_types','津贴类型',1,'津贴类型1',NULL,NULL,'2023-04-18 13:59:01'),(30,'jintie_types','津贴类型',2,'津贴类型2',NULL,NULL,'2023-04-18 13:59:01'),(31,'jintie_types','津贴类型',3,'津贴类型3',NULL,NULL,'2023-04-18 13:59:01'),(32,'jintie_types','津贴类型',4,'津贴类型4',NULL,NULL,'2023-04-18 13:59:01'),(33,'yuangong_kaoqin_types','员工考勤类型',1,'日常考勤',NULL,NULL,'2023-04-18 13:59:01'),(34,'yuangong_kaoqin_types','员工考勤类型',2,'考勤类型2',NULL,NULL,'2023-04-18 13:59:01'),(35,'yuangong_kaoqin_list_types','打卡状态',1,'未打卡',NULL,NULL,'2023-04-18 13:59:01'),(36,'yuangong_kaoqin_list_types','打卡状态',2,'已打卡',NULL,NULL,'2023-04-18 13:59:01'),(37,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-18 13:59:01'),(38,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-18 13:59:01'),(39,'yuangong_kaoqin_types','员工考勤类型',3,'考勤类型3',NULL,'','2023-04-18 14:38:19'),(40,'zhiwei_types','职位',3,'大组长',NULL,'1200','2023-04-18 14:38:44');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-18 14:00:24','公告详情1','2023-04-18 14:00:24'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-18 14:00:24','公告详情2','2023-04-18 14:00:24'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-18 14:00:24','公告详情3','2023-04-18 14:00:24'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-18 14:00:24','公告详情4','2023-04-18 14:00:24'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-18 14:00:24','公告详情5','2023-04-18 14:00:24'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-18 14:00:24','公告详情6','2023-04-18 14:00:24'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-18 14:00:24','公告详情7','2023-04-18 14:00:24'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-18 14:00:24','公告详情8','2023-04-18 14:00:24'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-18 14:00:24','公告详情9','2023-04-18 14:00:24'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-18 14:00:24','公告详情10','2023-04-18 14:00:24'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-18 14:00:24','公告详情11','2023-04-18 14:00:24'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-18 14:00:24','公告详情12','2023-04-18 14:00:24'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-18 14:00:24','公告详情13','2023-04-18 14:00:24'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-18 14:00:24','公告详情14','2023-04-18 14:00:24'),(15,'公告1211','/upload/1681799942186.jpg',2,'2023-04-18 14:39:06','<p>第三个第三个发</p>','2023-04-18 14:39:06');

/*Table structure for table `jintie` */

DROP TABLE IF EXISTS `jintie`;

CREATE TABLE `jintie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `jintie_uuid_number` varchar(200) DEFAULT NULL COMMENT '津贴编号',
  `jintie_name` varchar(200) DEFAULT NULL COMMENT '津贴标题  Search111 ',
  `jintie_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `jintie_types` int(11) DEFAULT NULL COMMENT '津贴类型 Search111',
  `jintie_jine` decimal(10,2) DEFAULT NULL COMMENT '津贴金额',
  `jintie_content` longtext COMMENT '津贴缘由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='津贴';

/*Data for the table `jintie` */

insert  into `jintie`(`id`,`yuangong_id`,`jintie_uuid_number`,`jintie_name`,`jintie_file`,`jintie_types`,`jintie_jine`,`jintie_content`,`insert_time`,`create_time`) values (1,1,'1681797624234','津贴标题1','upload/file.rar',2,'879.97','津贴缘由1','2023-04-18 14:00:24','2023-04-18 14:00:24'),(2,1,'1681797624239','津贴标题2','upload/file.rar',2,'975.40','津贴缘由2','2023-04-18 14:00:24','2023-04-18 14:00:24'),(3,3,'1681797624231','津贴标题3','upload/file.rar',1,'867.41','津贴缘由3','2023-04-18 14:00:24','2023-04-18 14:00:24'),(4,2,'1681797624188','津贴标题4','upload/file.rar',4,'794.66','津贴缘由4','2023-04-18 14:00:24','2023-04-18 14:00:24'),(5,2,'1681797624244','津贴标题5','upload/file.rar',4,'57.16','津贴缘由5','2023-04-18 14:00:24','2023-04-18 14:00:24'),(6,3,'1681797624238','津贴标题6','upload/file.rar',1,'875.42','津贴缘由6','2023-04-18 14:00:24','2023-04-18 14:00:24'),(7,3,'1681797624282','津贴标题7','upload/file.rar',1,'75.47','津贴缘由7','2023-04-18 14:00:24','2023-04-18 14:00:24'),(8,2,'1681797624266','津贴标题8','upload/file.rar',2,'691.95','津贴缘由8','2023-04-18 14:00:24','2023-04-18 14:00:24'),(9,3,'1681797624204','津贴标题9','upload/file.rar',1,'426.32','津贴缘由9','2023-04-18 14:00:24','2023-04-18 14:00:24'),(10,3,'1681797624190','津贴标题10','upload/file.rar',3,'643.87','津贴缘由10','2023-04-18 14:00:24','2023-04-18 14:00:24'),(11,2,'1681797624189','津贴标题11','upload/file.rar',3,'165.70','津贴缘由11','2023-04-18 14:00:24','2023-04-18 14:00:24'),(12,1,'1681797624189','津贴标题12','upload/file.rar',4,'947.65','津贴缘由12','2023-04-18 14:00:24','2023-04-18 14:00:24'),(13,1,'1681797624257','津贴标题13','upload/file.rar',1,'41.76','津贴缘由13','2023-04-18 14:00:24','2023-04-18 14:00:24'),(14,3,'1681797624218','津贴标题14','upload/file.rar',2,'227.68','津贴缘由14','2023-04-18 14:00:24','2023-04-18 14:00:24'),(15,1,'1681799948862','标题1211','/upload/1681799957005.doc',4,'300.00','<p>个第三个十多个是的</p>','2023-04-18 14:39:21','2023-04-18 14:39:21');

/*Table structure for table `jixiao` */

DROP TABLE IF EXISTS `jixiao`;

CREATE TABLE `jixiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `jixiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '绩效编号',
  `jixiao_name` varchar(200) DEFAULT NULL COMMENT '绩效标题  Search111 ',
  `jixiao_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `jixiao_types` int(11) DEFAULT NULL COMMENT '绩效类型 Search111',
  `jixiao_dafen` decimal(10,2) DEFAULT NULL COMMENT '绩效打分',
  `pinggu_time` timestamp NULL DEFAULT NULL COMMENT '评估时间',
  `jixiao_content` longtext COMMENT '打分缘由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='绩效';

/*Data for the table `jixiao` */

insert  into `jixiao`(`id`,`yuangong_id`,`jixiao_uuid_number`,`jixiao_name`,`jixiao_file`,`jixiao_types`,`jixiao_dafen`,`pinggu_time`,`jixiao_content`,`insert_time`,`create_time`) values (1,1,'1681797624240','绩效标题1','upload/file.rar',2,'865.08','2023-04-18 14:00:24','打分缘由1','2023-04-18 14:00:24','2023-04-18 14:00:24'),(2,3,'1681797624249','绩效标题2','upload/file.rar',4,'856.75','2023-04-18 14:00:24','打分缘由2','2023-04-18 14:00:24','2023-04-18 14:00:24'),(3,2,'1681797624218','绩效标题3','upload/file.rar',4,'890.36','2023-04-18 14:00:24','打分缘由3','2023-04-18 14:00:24','2023-04-18 14:00:24'),(4,2,'1681797624284','绩效标题4','upload/file.rar',2,'128.45','2023-04-18 14:00:24','打分缘由4','2023-04-18 14:00:24','2023-04-18 14:00:24'),(5,2,'1681797624222','绩效标题5','upload/file.rar',1,'288.05','2023-04-18 14:00:24','打分缘由5','2023-04-18 14:00:24','2023-04-18 14:00:24'),(6,3,'1681797624198','绩效标题6','upload/file.rar',3,'157.11','2023-04-18 14:00:24','打分缘由6','2023-04-18 14:00:24','2023-04-18 14:00:24'),(7,3,'1681797624278','绩效标题7','upload/file.rar',1,'364.36','2023-04-18 14:00:24','打分缘由7','2023-04-18 14:00:24','2023-04-18 14:00:24'),(8,3,'1681797624226','绩效标题8','upload/file.rar',3,'995.95','2023-04-18 14:00:24','打分缘由8','2023-04-18 14:00:24','2023-04-18 14:00:24'),(9,3,'1681797624289','绩效标题9','upload/file.rar',3,'47.52','2023-04-18 14:00:24','打分缘由9','2023-04-18 14:00:24','2023-04-18 14:00:24'),(10,2,'1681797624281','绩效标题10','upload/file.rar',1,'839.75','2023-04-18 14:00:24','打分缘由10','2023-04-18 14:00:24','2023-04-18 14:00:24'),(11,2,'1681797624225','绩效标题11','upload/file.rar',4,'300.62','2023-04-18 14:00:24','打分缘由11','2023-04-18 14:00:24','2023-04-18 14:00:24'),(12,3,'1681797624240','绩效标题12','upload/file.rar',3,'335.93','2023-04-18 14:00:24','打分缘由12','2023-04-18 14:00:24','2023-04-18 14:00:24'),(13,2,'1681797624262','绩效标题13','upload/file.rar',1,'543.62','2023-04-18 14:00:24','打分缘由13','2023-04-18 14:00:24','2023-04-18 14:00:24'),(14,2,'1681797624206','绩效标题14','upload/file.rar',1,'966.09','2023-04-18 14:00:24','打分缘由14','2023-04-18 14:00:24','2023-04-18 14:00:24'),(15,1,'1681799965533','绩效1111','/upload/1681799977014.doc',4,'300.00','2023-04-18 14:39:41','<p>个地方高大上个</p>','2023-04-18 14:39:43','2023-04-18 14:39:43');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','uijuzzgmcj1wkuuy8ql9kxt4cfw6bxdj','2023-04-18 14:05:14','2023-04-18 15:44:07'),(2,2,'a2','yuangong','用户','zhxf9t8ynpfmatuwyp02ot0wqshxhgd7','2023-04-18 14:41:48','2023-04-18 15:41:49');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-18 13:59:01');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `xinzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '薪资编号 Search111 ',
  `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `jiangjin_jine` decimal(10,2) DEFAULT NULL COMMENT '提成',
  `jixiao_jine` decimal(10,2) DEFAULT NULL COMMENT '绩效',
  `butie_jine` decimal(10,2) DEFAULT NULL COMMENT '津贴',
  `shifa_jine` decimal(10,2) DEFAULT NULL COMMENT '实发',
  `xinzi_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='套账';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yuangong_id`,`xinzi_uuid_number`,`xinzi_month`,`jiangjin_jine`,`jixiao_jine`,`butie_jine`,`shifa_jine`,`xinzi_content`,`insert_time`,`create_time`) values (1,3,'1681797624273','2023-01','209.09','427.27','309.81','802.16','备注1','2023-04-18 14:00:24','2023-04-18 14:00:24'),(2,2,'1681797624239','2023-01','840.48','772.68','464.77','895.15','备注2','2023-04-18 14:00:24','2023-04-18 14:00:24'),(3,1,'1681797624268','2023-01','322.24','102.31','50.09','314.05','备注3','2023-04-18 14:00:24','2023-04-18 14:00:24'),(4,3,'1681797624270','2023-02','336.37','130.65','702.59','121.15','备注4','2023-04-18 14:00:24','2023-04-18 14:00:24'),(5,2,'1681797624267','2023-02','457.20','723.90','375.12','741.51','备注5','2023-04-18 14:00:24','2023-04-18 14:00:24'),(6,1,'1681797624225','2023-02','298.64','990.65','215.58','211.08','备注6','2023-04-18 14:00:24','2023-04-18 14:00:24'),(7,2,'1681797624281','2023-03','485.95','330.04','822.49','655.69','备注7','2023-04-18 14:00:24','2023-04-18 14:00:24'),(8,3,'1681797624236','2023-03','366.93','581.29','690.40','915.40','备注8','2023-04-18 14:00:24','2023-04-18 14:00:24'),(9,1,'1681797624207','2023-03','741.86','955.47','351.99','716.66','备注9','2023-04-18 14:00:24','2023-04-18 14:00:24'),(10,3,'1681797624257','2023-04','698.59','454.45','759.90','508.08','备注10','2023-04-18 14:00:24','2023-04-18 14:00:24'),(15,1,'1681799986432','2023-04','300.00','400.00','200.00','1900.00','<p>郭德纲的三个</p>','2023-04-18 14:39:57','2023-04-18 14:39:57'),(16,2,'1681800036557','2023-04','400.00','200.00','300.00','1899.00','<p>广东省广东省</p>','2023-04-18 14:40:52','2023-04-18 14:40:52');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_uuid_number`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`bumen_types`,`zhiwei_types`,`yuangong_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1681797624291','用户姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',2,2,2,'1@qq.com',1,'2023-04-18 14:00:24'),(2,'a2','123456','1681797624243','用户姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',2,1,1,'2@qq.com',1,'2023-04-18 14:00:24'),(3,'a3','123456','1681797624255','用户姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',1,2,2,'3@qq.com',2,'2023-04-18 14:00:24');

/*Table structure for table `yuangong_kaoqin` */

DROP TABLE IF EXISTS `yuangong_kaoqin`;

CREATE TABLE `yuangong_kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_kaoqin_uuid_number` varchar(200) DEFAULT NULL COMMENT '考勤唯一编号 Search111 ',
  `yuangong_kaoqin_name` varchar(200) DEFAULT NULL COMMENT '考勤标题 Search111 ',
  `yuangong_kaoqin_types` int(11) DEFAULT NULL COMMENT '员工考勤类型 Search111',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门',
  `yuangong_kaoqin_content` longtext COMMENT '考勤详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '考勤发起时间',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '考勤截止时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='员工考勤';

/*Data for the table `yuangong_kaoqin` */

insert  into `yuangong_kaoqin`(`id`,`yuangong_kaoqin_uuid_number`,`yuangong_kaoqin_name`,`yuangong_kaoqin_types`,`bumen_types`,`yuangong_kaoqin_content`,`insert_time`,`jiezhi_time`,`create_time`) values (1,'1681797624287','考勤标题1',2,1,'考勤详情1','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(2,'1681797624204','考勤标题2',1,2,'考勤详情2','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(3,'1681797624289','考勤标题3',1,1,'考勤详情3','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(4,'1681797624257','考勤标题4',2,2,'考勤详情4','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(5,'1681797624249','考勤标题5',1,1,'考勤详情5','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(6,'1681797624252','考勤标题6',2,2,'考勤详情6','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(7,'1681797624231','考勤标题7',2,2,'考勤详情7','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(8,'1681797624262','考勤标题8',1,1,'考勤详情8','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(9,'1681797624211','考勤标题9',1,1,'考勤详情9','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(10,'1681797624235','考勤标题10',2,2,'考勤详情10','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(11,'1681797624225','考勤标题11',2,1,'考勤详情11','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(12,'1681797624286','考勤标题12',2,2,'考勤详情12','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(13,'1681797624249','考勤标题13',1,1,'考勤详情13','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(14,'1681797624223','考勤标题14',1,2,'考勤详情14','2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(15,'1681800068969','烤漆你11',1,1,'<p>但是给第三方孤独颂歌</p>','2023-04-18 14:41:24','2023-04-19 14:41:19','2023-04-18 14:41:24');

/*Table structure for table `yuangong_kaoqin_list` */

DROP TABLE IF EXISTS `yuangong_kaoqin_list`;

CREATE TABLE `yuangong_kaoqin_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `yuangong_kaoqin_id` int(11) DEFAULT NULL COMMENT '考勤',
  `yuangong_kaoqin_list_types` int(11) DEFAULT NULL COMMENT '打卡状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='员工考勤详情';

/*Data for the table `yuangong_kaoqin_list` */

insert  into `yuangong_kaoqin_list`(`id`,`yuangong_id`,`yuangong_kaoqin_id`,`yuangong_kaoqin_list_types`,`insert_time`,`update_time`,`create_time`) values (1,2,1,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(2,2,2,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(3,1,3,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(4,1,4,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(5,1,5,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(6,3,6,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(7,3,7,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(8,2,8,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(9,1,9,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(10,2,10,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(11,1,11,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(12,3,12,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(13,3,13,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(14,2,14,1,'2023-04-18 14:00:24','2023-04-18 14:00:24','2023-04-18 14:00:24'),(15,2,15,2,'2023-04-18 14:41:24','2023-04-18 14:42:28','2023-04-18 14:41:24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
