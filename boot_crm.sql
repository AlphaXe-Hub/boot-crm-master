CREATE DATABASE IF NOT EXISTS `boot_crm` DEFAULT CHARACTER SET utf8;

USE `boot_crm`;

DROP TABLE IF EXISTS `base_dict`; #�޸ı�ʱ�������ظ�����

CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '�����ֵ�id(����)',
  `dict_type_code` varchar(50) NOT NULL,
  `dict_type_name` varchar(50) NOT NULL,
  `dict_item_name` varchar(50) NOT NULL,
  `dict_item_code` varchar(10) DEFAULT NULL,
  `dict_sort` int(32) DEFAULT NULL,
  `dict_enable` char(1) NOT NULL COMMENT '1:ʹ�� 0:ͣ��',
  `dict_memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert  into `base_dict`(`dict_id`,`dict_type_code`,`dict_type_name`,`dict_item_name`,`dict_item_code`,`dict_sort`,`dict_enable`,`dict_memo`) values ('1','001','�ͻ���ҵ','������ѵ ',NULL,1,'1',NULL),('10','003','��˾����','����',NULL,3,'1',NULL),('12','004','��Ӫҵ��','1-10��',NULL,1,'1',NULL),('13','004','��Ӫҵ��','10-20��',NULL,2,'1',NULL),('14','004','��Ӫҵ��','20-50��',NULL,3,'1',NULL),('15','004','��Ӫҵ��','50-100��',NULL,4,'1',NULL),('16','004','��Ӫҵ��','100-500��',NULL,5,'1',NULL),('17','004','��Ӫҵ��','500-1000��',NULL,6,'1',NULL),('18','005','�ͻ�״̬','�����ͻ�',NULL,1,'1',NULL),('19','005','�ͻ�״̬','Ǳ�ڿͻ�',NULL,2,'1',NULL),('2','001','�ͻ���ҵ','��������',NULL,2,'1',NULL),('20','005','�ͻ�״̬','�ɹ��ͻ�',NULL,3,'1',NULL),('21','005','�ͻ�״̬','��Ч�ͻ�',NULL,4,'1',NULL),('22','006','�ͻ�����','��ͨ�ͻ�',NULL,1,'1',NULL),('23','006','�ͻ�����','VIP�ͻ�',NULL,2,'1',NULL),('24','007','�̻�״̬','����ͻ�',NULL,1,'1',NULL),('25','007','�̻�״̬','������ͨ',NULL,2,'1',NULL),('26','007','�̻�״̬','��ȹ�ͨ',NULL,3,'1',NULL),('27','007','�̻�״̬','ǩ����ͬ',NULL,4,'1',NULL),('3','001','�ͻ���ҵ','����ó��',NULL,3,'1',NULL),('30','008','�̻�����','��ҵ��',NULL,1,'1',NULL),('31','008','�̻�����','����ҵ��',NULL,2,'1',NULL),('32','009','�̻���Դ','�绰Ӫ��',NULL,1,'1',NULL),('33','009','�̻���Դ','����Ӫ��',NULL,2,'1',NULL),('34','009','�̻���Դ','�ƹ�',NULL,3,'1',NULL),('4','001','�ͻ���ҵ','�Ƶ�����',NULL,4,'1',NULL),('5','001','�ͻ���ҵ','���ز�',NULL,5,'1',NULL),('6','002','�ͻ���Ϣ��Դ','�绰Ӫ��',NULL,1,'1',NULL),('7','002','�ͻ���Ϣ��Դ','����Ӫ��',NULL,2,'1',NULL),('8','003','��˾����','����',NULL,1,'1',NULL),('9','003','��˾����','����',NULL,2,'1',NULL);


DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '�ͻ����(����)',
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

insert  into `customer`(`cust_id`,`cust_name`,`cust_user_id`,`cust_create_id`,`cust_source`,`cust_industry`,`cust_level`,`cust_linkman`,`cust_phone`,`cust_mobile`,`cust_zipcode`,`cust_address`,`cust_createtime`) values (14,'��',NULL,1,'7','3','23','shaw','5699409','13868752389','537500','������','2021-12-20 16:32:01'),(15,'��',NULL,2,'7','3','23','sea','5699409','13298647357','537500','������','2021-12-20 16:32:01'),(16,'��',NULL,3,'6','2','22','xcz','5699409','18962548663','537500','ΰ��·','2021-12-20 16:32:01'),(17,'��',NULL,4,'6','4','23','jd','5699409','13883833088','537500','������','2021-12-20 16:32:01'),(18,'С��',NULL,3,'6','2','23','ciao','5699409','13764736473','537500','������','2021-12-20 16:32:01');

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '�û�id',
  `user_code` varchar(32) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_state` int(1) NOT NULL COMMENT '1:����,0:��ͣ',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


insert into `sys_user`(`user_id`,`user_code`,`user_name`,`user_password`,`user_state`) values (1,'201901','shaw','123456',1),(2,'201902','ciao','123',1),(3,'201903','sea','123',1),(4,'201701','xcz','123',1),(5,'201702','jd','123',1);