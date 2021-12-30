CREATE DATABASE IF NOT EXISTS `boot_crm` DEFAULT CHARACTER SET utf8;

USE `boot_crm`;

DROP TABLE IF EXISTS `base_dict`; #修改表时，避免重复表报错

CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(50) NOT NULL,
  `dict_type_name` varchar(50) NOT NULL,
  `dict_item_name` varchar(50) NOT NULL,
  `dict_item_code` varchar(10) DEFAULT NULL,
  `dict_sort` int(32) DEFAULT NULL,
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert  into `base_dict`(`dict_id`,`dict_type_code`,`dict_type_name`,`dict_item_name`,`dict_item_code`,`dict_sort`,`dict_enable`,`dict_memo`) values ('1','001','客户行业','教育培训 ',NULL,1,'1',NULL),('10','003','公司性质','民企',NULL,3,'1',NULL),('12','004','年营业额','1-10万',NULL,1,'1',NULL),('13','004','年营业额','10-20万',NULL,2,'1',NULL),('14','004','年营业额','20-50万',NULL,3,'1',NULL),('15','004','年营业额','50-100万',NULL,4,'1',NULL),('16','004','年营业额','100-500万',NULL,5,'1',NULL),('17','004','年营业额','500-1000万',NULL,6,'1',NULL),('18','005','客户状态','基础客户',NULL,1,'1',NULL),('19','005','客户状态','潜在客户',NULL,2,'1',NULL),('2','001','客户行业','电子商务',NULL,2,'1',NULL),('20','005','客户状态','成功客户',NULL,3,'1',NULL),('21','005','客户状态','无效客户',NULL,4,'1',NULL),('22','006','客户级别','普通客户',NULL,1,'1',NULL),('23','006','客户级别','VIP客户',NULL,2,'1',NULL),('24','007','商机状态','意向客户',NULL,1,'1',NULL),('25','007','商机状态','初步沟通',NULL,2,'1',NULL),('26','007','商机状态','深度沟通',NULL,3,'1',NULL),('27','007','商机状态','签订合同',NULL,4,'1',NULL),('3','001','客户行业','对外贸易',NULL,3,'1',NULL),('30','008','商机类型','新业务',NULL,1,'1',NULL),('31','008','商机类型','现有业务',NULL,2,'1',NULL),('32','009','商机来源','电话营销',NULL,1,'1',NULL),('33','009','商机来源','网络营销',NULL,2,'1',NULL),('34','009','商机来源','推广活动',NULL,3,'1',NULL),('4','001','客户行业','酒店旅游',NULL,4,'1',NULL),('5','001','客户行业','房地产',NULL,5,'1',NULL),('6','002','客户信息来源','电话营销',NULL,1,'1',NULL),('7','002','客户信息来源','网络营销',NULL,2,'1',NULL),('8','003','公司性质','合资',NULL,1,'1',NULL),('9','003','公司性质','国企',NULL,2,'1',NULL);


DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(50) NOT NULL,
  `cust_user_id` int(32) DEFAULT NULL,
  `cust_create_id` int(32) DEFAULT NULL,
  `cust_source` varchar(50) DEFAULT NULL,
  `cust_industry` varchar(50) DEFAULT NULL,
  `cust_level` varchar(32) DEFAULT NULL,
  `cust_linkman` varchar(50) DEFAULT NULL,
  `cust_phone` varchar(64) DEFAULT NULL,
  `cust_mobile` varchar(16) DEFAULT NULL,
  `cust_zipcode` varchar(10) DEFAULT NULL,
  `cust_address` varchar(100) DEFAULT NULL,
  `cust_createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

insert  into `customer`(`cust_id`,`cust_name`,`cust_user_id`,`cust_create_id`,`cust_source`,`cust_industry`,`cust_level`,`cust_linkman`,`cust_phone`,`cust_mobile`,`cust_zipcode`,`cust_address`,`cust_createtime`) values (14,'张',NULL,1,'7','3','23','shaw','5699409','13868752389','537500','社王盯','2021-12-20 16:32:01'),(15,'李',NULL,2,'7','3','23','sea','5699409','13298647357','537500','社王盯','2021-12-20 16:32:01'),(16,'王',NULL,3,'6','2','22','xcz','5699409','18962548663','537500','伟大航路','2021-12-20 16:32:01'),(17,'赵',NULL,4,'6','4','23','jd','5699409','13883833088','537500','社王盯','2021-12-20 16:32:01'),(18,'小明',NULL,3,'6','2','23','ciao','5699409','13764736473','537500','社王盯','2021-12-20 16:32:01');

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_state` int(1) NOT NULL COMMENT '1:正常,0:暂停',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


insert into `sys_user`(`user_id`,`user_code`,`user_name`,`user_password`,`user_state`) values (1,'201901','shaw','123456',1),(2,'201902','ciao','123',1),(3,'201903','sea','123',1),(4,'201701','xcz','123',1),(5,'201702','jd','123',1);