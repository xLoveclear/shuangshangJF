/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/10/22 13:12:39                          */
/*==============================================================*/
USE test

DROP TABLE IF EXISTS cpduijie;

DROP TABLE IF EXISTS chanping;

DROP TABLE IF EXISTS tousujianyi;

DROP TABLE IF EXISTS xinwenlm;

DROP TABLE IF EXISTS xinwencx;

DROP TABLE IF EXISTS dianzan;

DROP TABLE IF EXISTS yonghufl;

DROP TABLE IF EXISTS yhhyguanxi;

DROP TABLE IF EXISTS yhhangye;

DROP TABLE IF EXISTS `user`;

DROP TABLE IF EXISTS login;

DROP TABLE IF EXISTS pinglun;

DROP TABLE IF EXISTS fujiangx;

DROP TABLE IF EXISTS fujian;

/*==============================================================*/
/* Table: 产品对接表                                                 */
/*==============================================================*/
CREATE TABLE cpduijie
(
   id                   VARCHAR(32) NOT NULL,
   userid                 VARCHAR(32),
   cpxinxi                 VARCHAR(80),
   diantime                 VARCHAR(80),
   dianstatic               INT,
   PRIMARY KEY (id)
);


/*==============================================================*/
/* Table: 产品表                                                   */
/*==============================================================*/
CREATE TABLE chanping
(
   id                   VARCHAR(32) NOT NULL,
   tupian                   VARCHAR(255),
   title                   VARCHAR(80),
   shixian            VARCHAR(80),
   jianjie                   VARCHAR(255),
   tiaojian                   VARCHAR(255),
   liucheng                   VARCHAR(255),
   jine		VARCHAR(255),
   aboutwomen		VARCHAR(255),
   lxwomen                 VARCHAR(50),
   cpfenlei                 VARCHAR(80),
   cpstatic                 INT,
   shcishu                 INT,
   shtime          VARCHAR(120),
   bohuiyy                 VARCHAR(255),
   faburen                  VARCHAR(30),
   fabutime               VARCHAR(80),
   PRIMARY KEY (id)
);	
/*==============================================================*/
/* Table: 投诉建议表                                                 */
/*==============================================================*/
CREATE TABLE tousujianyi
(
   id                   VARCHAR(32),
   tsren                  VARCHAR(32),
   tsneirong                 VARCHAR(120),
   beitsren                 VARCHAR(32),
   nimingok               INT,
   tstime                 VARCHAR(80),
   tsstatic                 INT
);

/*==============================================================*/
/* Table: 新闻栏目表                                                 */
/*==============================================================*/
CREATE TABLE xinwenlm
(
   id                   VARCHAR(25),
   lmname                 VARCHAR(60),
   cjtime                 VARCHAR(80),
   lmfm                 VARCHAR(255),
   url                VARCHAR(255)
);

/*==============================================================*/
/* Table: 新闻资讯表                                                 */
/*==============================================================*/
CREATE TABLE xinwencx
(
   id                   VARCHAR(32) NOT NULL,
   title                   VARCHAR(80),
   fbtime                 VARCHAR(80),
   fbren                  VARCHAR(50),
   xinwennr                 VARCHAR(255),
   fmtupian                 VARCHAR(255),
   xwlmbianhao               VARCHAR(30),
   liulanshu                 INT,
   dianzanzd               INT,
   plziduan             INT,
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: 点赞表                                                   */
/*==============================================================*/
CREATE TABLE dianzan
(
   id                   VARCHAR(32),
   userid                 VARCHAR(32),
   dzdxbianhao               VARCHAR(32),
   dztable                 VARCHAR(60),
   dztime                 VARCHAR(80)
);

/*==============================================================*/
/* Table: 用户分类表                                                 */
/*==============================================================*/
CREATE TABLE yonghufl
(
   id                   VARCHAR(32),
   flmingcheng                 VARCHAR(50),
   flstatic           INT
);

/*==============================================================*/
/* Table: 用户行业关系表                                               */
/*==============================================================*/
CREATE TABLE yhhyguanxi
(
   id                   VARCHAR(32) NOT NULL,
   yhhybianhao               VARCHAR(32),
   yhid                 VARCHAR(32),
   yhflid               VARCHAR(32),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: 用户行业表                                                 */
/*==============================================================*/
CREATE TABLE yhhangye
(
   id                   VARCHAR(32) NOT NULL,
   mingcheng                 VARCHAR(80),
   zhuangtai             INT,
   shangji             VARCHAR(80),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: 用户表                                                   */
/*==============================================================*/
CREATE TABLE `user`
(
   id                   VARCHAR(32) NOT NULL,
   `name`                 VARCHAR(32),
   phone                 VARCHAR(50),
   flid               VARCHAR(32),
   qiye                 VARCHAR(60),
   jifen                 INT,
   fjid                 VARCHAR(32),
   userfj               VARCHAR(255),
   loginid                 VARCHAR(32),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: 登录表                                                   */
/*==============================================================*/
CREATE TABLE login
(
   id                   VARCHAR(32),
   loginid                 VARCHAR(60),
   pass                 VARCHAR(60),
   jami               VARCHAR(120),
   email		VARCHAR(30),
   lasttime               VARCHAR(80),
   ip               VARCHAR(60)
);

/*==============================================================*/
/* Table: 评论表                                                   */
/*==============================================================*/
CREATE TABLE pinglun
(
   id                   VARCHAR(32),
   userid            VARCHAR(32),
   duixiang                 VARCHAR(50),
   pltable                 VARCHAR(60),
   pltime                 VARCHAR(80),
   plnr                 VARCHAR(120),
   bplid                VARCHAR(32)
);

/*==============================================================*/
/* Table: 附件关系表                                                 */
/*==============================================================*/
CREATE TABLE fujiangx
(
   id                   VARCHAR(32),
   fjid                 VARCHAR(32),
   fjnx                 VARCHAR(32),
   glid                 VARCHAR(32),
   gltable                 VARCHAR(50),
   scren                  VARCHAR(50),
   sctime                 VARCHAR(80),
   beizhu                 VARCHAR(255),
   url                VARCHAR(255)
);

/*==============================================================*/
/* Table: 附件表                                                   */
/*==============================================================*/
CREATE TABLE fujian
(
   id                   VARCHAR(32) NOT NULL,
   fjmc                 VARCHAR(50),
   fjwenjian                VARCHAR(50),
   fjhouzhui                 VARCHAR(30),
   fjsize                 VARCHAR(30),
   fjurl                 VARCHAR(255),
   fjduourl               VARCHAR(255),
   sctime                 VARCHAR(80),
   xiazaics                 INT,
   fjstatic             INT,
   PRIMARY KEY (id)
);



/* 使用test数据库*/
USE test;
CREATE TABLE student
(
   id  VARCHAR(32) NOT NULL,
   `name` VARCHAR(20),
   sex VARCHAR(4)
 );
 CREATE TABLE shouyefm
(
   id VARCHAR(32) NOT NULL,
   url VARCHAR(255)
 );
  CREATE TABLE aboutwomen
(
   id VARCHAR(32) NOT NULL,
   jianjie TEXT,
   zhidu TEXT,
   tuandui TEXT,
   jiagou TEXT,
   lianxi TEXT
 );
 INSERT INTO student (id,`name`,sex) VALUE 
	(1,"喔","男"),
	(2,"喔1","女");
 INSERT INTO shouyefm (id,url) VALUE 
	(1,""),
	(2,"");
 INSERT INTO aboutwomen (id,jianjie,zhidu,tuandui,jiagou,lianxi) VALUE 
	(1,'为积极响应"十九大"以来党中央国务院、省市区关于"政银企  对接"工作的最新精神与政策， 深入开展企业服务工作。为积极响应"十九大"以来党中央国务院、省市区关于"政银企  对接"工作的最新精神与政策， 深入开展企业服务工作为积极响应"十九大"以来党中央国务院、省市区关于"政银企  对接"工作的最新精神与政策， 深入开展企业服务工作。为积极响应"十九大"以来党中央国务院、省市区关于"政银企  对接"工作的最新精神与政策， 深入开展企业服务工作',
	'管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范管理制的规范',
	'团队团队团队团队团队团队团队团队团队团队团队团队团队团队团队团队团队团队团队',
	'架构架构架构架构架构架构架构架构架构架构架构架构架构架构架构架构架构架构架构架构架构',
	'敬请期待');

INSERT INTO yhhangye (id,mingcheng,zhuangtai,shangji) VALUE
("1",'wo1',1,'micksoft'),
("2",'wo2',1,'micksoft1'),
("3",'wo3',1,'micksoft2'),
("4",'wo4',1,'micksoft3'),
("5",'wo5',1,'micksoft4'),
("6",'wo6',1,'micksoft5'),
("7",'wo7',1,'micksoft6'),
("8",'wo8',1,'micksoft7'),
("9",'wo9',1,'micksoft8');     	

INSERT INTO `user` (id,`name`,phone,qiye,loginid) VALUE
('1','user','123',1,'user'),
('2','user1','123',1,'user1'),
('3','user2','123',2,'user2'),
('4','user3','123',2,'user3');

INSERT INTO login (id,loginid,pass,jami,email) VALUE
('1','user','123','MD5',''),

INSERT INTO xinwenlm (id,lmname,cjtime,lmfm,url) VALUE
('1','时事新闻','2020-01-01','tbd1..',"www.baidu.xinwen"),
('2','环球事件','2020-01-02','tbd2..',"www.baidu.v"),
('3','国内新闻','2020-01-03','tbd3..',"www.baidu.b"),
('4','海峡两岸','2020-01-04','tbd4..',"www.baidu.aa"),
('5','互联网+AI','2020-01-05','tbd5..',"www.baidu.AI");

INSERT INTO xinwencx (id,title,fbtime,fbren,xinwennr,fmtupian,xwlmbianhao) VALUE
('1','中央经济工作会议划重点：严厉打击腐败','2017/12/20  12:20','张三','xinwennr','','1'),
('2','中央经济工作会议划重点：严厉打击腐败','2015/12/20  12:20','李四','xinwennr','','4'),
('3','中央经济工作会议划重点：严厉打击腐败','2016/12/20  12:20','王五','xinwennr','','1'),
('4','中央经济工作会议划重点：严厉打击腐败','2011/12/20  12:20','老龙','xinwennr','','1'),
('5','中央经济工作会议划重点：严厉打击腐败','2012/12/20  12:20','老邱','xinwennr','','1'),
('6','中央经济工作会议划重点：严厉打击腐败','2014/12/20  12:20','老席','xinwennr','','1'),
('7','中央经济工作会议划重点：严厉打击腐败','2008/11/20  14:20','张三','xinwennr','','2'),
('8','中央经济工作会议划重点：严厉打击腐败','2009/10/20  15:20','李四','xinwennr','','3');
UPDATE	xinwencx SET xinwennr='看点一："稳中求进"仍是"主基调"还需"长期坚持"'
WHERE 1=1

INSERT INTO chanping (id,jine,aboutwomen,tupian,title,shixian,jianjie,tiaojian,lxwomen,cpstatic,faburen,fabutime) VALUE
('1','500万元','上市公司&&首席运营','','qwer0','1年','acb','acb1','028-8456110','1','1','2020-01-01'),
('2','1000万元','上市集团&&首席运营','','qwer1','1年','acb','acb1','028-8456110','1','2','2020-01-02'),
('3','1500万元','未上市&&首席运营','','qwer2','1年','acb','acb1','028-8456110','1','3','2020-01-03'),
('4','2500万元','未上市&&首席运营','','qwer3','1年','acb','acb1','028-8456110','0','4','2020-01-04'),
('5','3500万元','上市公司&&首席运营','','qwer4','1年','acb','acb1','028-8456110','0','5','2020-01-05');		

