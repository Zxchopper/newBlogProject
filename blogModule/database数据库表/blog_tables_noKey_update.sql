/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/1/6 11:00:04                            */
/*==============================================================*/
DROP DATABASE IF EXISTS blog;

CREATE DATABASE blog;

USE blog;

DROP TABLE IF EXISTS blog;

DROP TABLE IF EXISTS blogComment;

DROP TABLE IF EXISTS blogGenre;

DROP TABLE IF EXISTS concern;

DROP TABLE IF EXISTS download;

DROP TABLE IF EXISTS downloadComment;

DROP TABLE IF EXISTS forum;

DROP TABLE IF EXISTS forumGenre;

DROP TABLE IF EXISTS `like`;

DROP TABLE IF EXISTS reply;

DROP TABLE IF EXISTS replyForum;

DROP TABLE IF EXISTS resourceType;

DROP TABLE IF EXISTS skillType;

DROP TABLE IF EXISTS topUp;

DROP TABLE IF EXISTS `user`;

DROP TABLE IF EXISTS collected;

/*==============================================================*/
/* Table: collected                                             */
/*==============================================================*/
CREATE TABLE collected
(
   cid                  INT NOT NULL,
   userId               INT,
   createTime           DATETIME,
   title                VARCHAR(50),
   `describe`           VARCHAR(100),
   url                  VARCHAR(50),
   PRIMARY KEY (cid)
);


CREATE TABLE blog
(
   bid                  INT(8) NOT NULL,
   uid                  INT(8),
   likeId               INT(8),
   genreId              INT(8),
   createTime           DATETIME,
   title                VARCHAR(50),
   contentPath          VARCHAR(500),
   readAmout            INT(8),
   PRIMARY KEY (bid)
);

/*==============================================================*/
/* Table: blogComment                                           */
/*==============================================================*/
CREATE TABLE blogComment
(
   id                   INT(8) NOT NULL,
   uid                  INT(8),
   bid                  INT(8),
   createTime           DATETIME,
   content              VARCHAR(100),
   FLOOR                INT(8),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: blogGenre                                             */
/*==============================================================*/
CREATE TABLE blogGenre
(
   id                   INT(8) NOT NULL,
   genreName            VARCHAR(20),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: concern                                               */
/*==============================================================*/
CREATE TABLE concern
(
   id                   INT(8) NOT NULL,
   uid                  INT(8),
   byConcernId          INT(8),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: download                                              */
/*==============================================================*/
CREATE TABLE download
(
   did                  INT(8) NOT NULL,
   uid                  INT(8),
   skillId         	INT(8),
   resourceId           INT(8),
   createTime           DATETIME,
   title                VARCHAR(50),
   describle            VARCHAR(200),
   downloadPath         VARCHAR(50),
   downloadAmout        INT(8),
   price                DECIMAL(8,2),
   PRIMARY KEY (did)
);

/*==============================================================*/
/* Table: downloadComment                                       */
/*==============================================================*/
CREATE TABLE downloadComment
(
   id                   INT(8) NOT NULL,
   uid                  INT(8),
   did                  INT(8),
   createTime           DATETIME,
   content              VARCHAR(100),
   starLevel            INT(8),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: forum                                                 */
/*==============================================================*/
CREATE TABLE forum
(
   fid                  INT(8) NOT NULL,
   uid                  INT(8),
   genreId              INT(8),
   createTime           DATETIME,
   title                VARCHAR(50),
   content              VARCHAR(1000),
   readAmout            INT(8),
   rewardIntegral       INT(8),
   PRIMARY KEY (fid)
);

/*==============================================================*/
/* Table: reply                                                 */
/*==============================================================*/
CREATE TABLE reply
(
   id                   INT(8) NOT NULL,
   uid                  INT(8),
   fid                  INT(8),
   did                  INT(8),
   bid                  INT(8),
   createTime           DATETIME,
   content              VARCHAR(100),
   downloadId           INT(8),
   blogId               INT(8),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: forumGenre                                            */
/*==============================================================*/
CREATE TABLE forumGenre
(
   id                   INT(8) NOT NULL,
   genreName            VARCHAR(20),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: `like`                                                */
/*==============================================================*/
CREATE TABLE `like`
(
   id                   INT(8) NOT NULL,
   likeAmout            INT(8),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: replyForum                                            */
/*==============================================================*/
CREATE TABLE replyForum
(
   id                   INT(8) NOT NULL,
   fid                  INT(8),
   uid                  INT(8),
   content				VARCHAR(200),
   createTime           DATETIME,
   getIntegral          INT(8),
   FLOOR                INT(8),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: resourceType                                          */
/*==============================================================*/
CREATE TABLE resourceType
(
   id                   INT(8) NOT NULL,
   genreName            VARCHAR(20),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: skillType                                             */
/*==============================================================*/
CREATE TABLE skillType
(
   id                   INT(8) NOT NULL,
   genreName            VARCHAR(20),
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: topUp                                                 */
/*==============================================================*/
CREATE TABLE topUp
(
   id                   INT(8) NOT NULL,
   uid                  INT(8),
   account              DECIMAL(8,2),
   createTime           DATETIME,
   PRIMARY KEY (id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
CREATE TABLE `user`
(
   uid                  INT(8) NOT NULL,
   userName             VARCHAR(20),
   userPassword         VARCHAR(20),
   nickName             VARCHAR(30),
   NAME                 VARCHAR(20),
   sex                  CHAR(4),
   email                VARCHAR(20),
   STATUS               VARCHAR(20),
   money                DECIMAL(10,2),
   integral             INT,
   `describe`           VARCHAR(50),
   PRIMARY KEY (uid)
);

ALTER TABLE blog MODIFY bid INT(8) AUTO_INCREMENT;

ALTER TABLE download MODIFY did INT AUTO_INCREMENT;

ALTER TABLE downloadcomment MODIFY id INT AUTO_INCREMENT;

ALTER TABLE forum MODIFY fid INT AUTO_INCREMENT;

ALTER TABLE forumgenre MODIFY id INT AUTO_INCREMENT;

ALTER TABLE `like` MODIFY id INT AUTO_INCREMENT;

ALTER TABLE reply MODIFY id INT AUTO_INCREMENT;

ALTER TABLE replyforum MODIFY id INT AUTO_INCREMENT;

ALTER TABLE resourcetype MODIFY id INT AUTO_INCREMENT;

ALTER TABLE skilltype MODIFY id INT AUTO_INCREMENT;

ALTER TABLE topup MODIFY id INT AUTO_INCREMENT;

ALTER TABLE `user` MODIFY uid INT AUTO_INCREMENT;

ALTER TABLE concern MODIFY id INT AUTO_INCREMENT;

ALTER TABLE bloggenre MODIFY id INT AUTO_INCREMENT;

ALTER TABLE blogcomment MODIFY id INT AUTO_INCREMENT;

ALTER TABLE collected MODIFY cid INT AUTO_INCREMENT;


INSERT INTO `User`(userName,userPassword,nickName,`name`,sex,email,`status`,money,integral,`describe`) 
VALUE('admin','admin','管理员','项目经理','无','admin@blog.com','管理员',9999.9,'99999','没有描述');
INSERT INTO `User`(userName,userPassword,nickName,`name`,sex,email,`status`,money,integral,`describe`) 
VALUE('vip','vip','装X','vip','娘','vip@vip.com','vip',666.6,'6666','啊啊拉拉');
INSERT INTO `User`(userName,userPassword,nickName,`name`,sex,email,`status`,money,integral,`describe`) 
VALUE('user','123','你好帅','帅哥','男','nanshen@163.com','普通用户',7.7,'7','帅的一笔');

INSERT INTO `Blog`(uid,likeId,genreId,createTime,title,contentPath,readAmout) VALUE(1,1,2,NOW(),'Java中native关键字','native关键字说明其修饰的方法是一个原生态方法，方法对应的实现不是在当前文件，而是在用其他语言（如C和C++）实现的文件中。Java语言本身不能对操作系统底层进行访问和操作，但是可以通过JNI接口调用其他语言来实现对底层的访问。',183);
INSERT INTO `Blog`(uid,likeId,genreId,createTime,title,contentPath,readAmout) VALUE(2,2,2,NOW(),'JNI是什么？','JNI是Java本机接口（Java Native Interface），是一个本机编程接口，它是Java软件开发工具箱（Java Software Development Kit，SDK）的一部分。JNI允许Java代码使用以其他语言编写的代码和代码库。Invocation API（JNI的一部分）可以用来将Java虚拟机（JVM）嵌入到本机应用程序中，从而允许程序员从本机代码内部调用Java代码。',783);
INSERT INTO `Blog`(uid,likeId,genreId,createTime,title,contentPath,readAmout) VALUE(1,3,3,NOW(),'java动态代理原理及解析','代理模式是一种常用的设计模式，其目的就是为其他对象提供一个代理以控制对某个真实对象的访问。代理类负责为委托类预处理消息，过滤消息并转发消息，以及进行消息被委托类执行后的后续处理。',135);
INSERT INTO `Blog`(uid,likeId,genreId,createTime,title,contentPath,readAmout) VALUE(3,4,3,NOW(),'动态代理机制','1，通过实现 InvocationHandler 接口创建自己的调用处理器；2，通过为 Proxy 类指定 ClassLoader 对象和一组 interface 来创建动态代理类；3，通过反射机制获得动态代理类的构造函数，其唯一参数类型是调用处理器接口类型；4，通过构造函数创建动态代理类实例，构造时调用处理器对象作为参数被传入。',714);
INSERT INTO `Blog`(uid,likeId,genreId,createTime,title,contentPath,readAmout) VALUE(1,5,2,NOW(),'Maven是什么，以及为什么要使用Maven','Maven是一个构建工具,服务与构建.使用Maven配置好项目后,输入简单的命令,如:mvn clean install,Maven会帮我们处理那些繁琐的任务.Maven是跨平台的.Maven最大化的消除了构建的重复.',790);
INSERT INTO `Blog`(uid,likeId,genreId,createTime,title,contentPath,readAmout) VALUE(1,6,2,NOW(),'Make的强大','.Make也许是最早的构建工具，具体不详,没用过,可以不了解.Make的强大之处在于它可以利用所有系统的本地命令，尤其是UNIX/Linux系统，丰富的功能、强大的命令能够帮助Make快速高效地完成任务。',534);
INSERT INTO `Blog`(uid,likeId,genreId,createTime,title,contentPath,readAmout) VALUE(1,7,1,NOW(),'Ant工具','Ant是意指“另一个整洁的工具”（Another Neat Tool），它最早用来构建著名的Tomcat，其作者James Duncan Davidson创作它的动机就是因为受不了Makefile的语法格式。我们可以将Ant看成是一个Java版本的Make，也正因为使用了Java，Ant是跨平台的。此外，Ant使用XML定义构建脚本，相对于Makefile来说，这也更加友好。',152);
INSERT INTO `Blog`(uid,likeId,genreId,createTime,title,contentPath,readAmout) VALUE(2,8,3,NOW(),'IDE有什么？','IDE:基本上所有的主流IDE都集成了Maven,我们可以在IDE中方便的运行Mave执行构建.IDE依赖大量的手工操作。编译、测试、代码生成等工作都是相互独立的，很难一键完成所有工作。手工劳动往往意味着低效，意味着容易出错很难在项目中统一所有的IDE配置，每个人都有自己的喜好。也正是由于这个原因，一个在机器A上可以成功运行的任务，到了机器B的IDE中可能就会失败',644);
INSERT INTO `Blog`(uid,likeId,genreId,createTime,title,contentPath,readAmout) VALUE(2,9,1,NOW(),'Java开发中的23种设计模式详解','总体来说设计模式分为三大类：创建型模式，共五种：工厂方法模式、抽象工厂模式、单例模式、建造者模式、原型模式。结构型模式，共七种：适配器模式、装饰器模式、代理模式、外观模式、桥接模式、组合模式、享元模式。行为型模式，共十一种：策略模式、模板方法模式、观察者模式、迭代子模式、责任链模式、命令模式、备忘录模式、状态模式、访问者模式、中介者模式、解释器模式。',716);
INSERT INTO `Blog`(uid,likeId,genreId,createTime,title,contentPath,readAmout) VALUE(3,10,3,NOW(),'设计模式的六大原则','1、开闭原则、2、里氏代换原则、3、依赖倒转原则、4、接口隔离原则、5、迪米特法则、6、合成复用原则',916);


INSERT INTO `like`(likeAmout) VALUE(820);
INSERT INTO `like`(likeAmout) VALUE(240);
INSERT INTO `like`(likeAmout) VALUE(107);
INSERT INTO `like`(likeAmout) VALUE(604);
INSERT INTO `like`(likeAmout) VALUE(456);
INSERT INTO `like`(likeAmout) VALUE(608);
INSERT INTO `like`(likeAmout) VALUE(363);
INSERT INTO `like`(likeAmout) VALUE(476);
INSERT INTO `like`(likeAmout) VALUE(11);
INSERT INTO `like`(likeAmout) VALUE(685);

INSERT INTO blogGenre(genreName) VALUES('Java'),('C/C++'),('C#');


INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,1, NOW(),'就像楼上说的一样');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,2, NOW(),'你i这个问题我不能回答你!');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,3, NOW(),'厉害厉害');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,4, NOW(),'你就说：世界这么大  我想去看看 ');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,5, NOW(),'你i这个问题我不能回答你!');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,6, NOW(),'钱包那么小  哪也去不了');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,7, NOW(),'这有什么鬼？');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,8, NOW(),'膜拜大神');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,9, NOW(),'大佬好');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,10, NOW(),'可否简单说一下解析过程 ');


INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,2, NOW(),'配置没有问题呀');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,3, NOW(),'给你一个大赞');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,4, NOW(),'哥们，你得多混啊');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,5, NOW(),'就像楼上说的一样');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,6, NOW(),'你是在逗我吗？');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,7, NOW(),'请问一下：专业证明有什么用？ ');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,8, NOW(),'哥们，你得多混啊');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,9, NOW(),'说的有点道理');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,3, NOW(),'...');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,1, NOW(),'请问一下：专业证明有什么用？ ');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,2, NOW(),'你i这个问题我不能回答你!');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,3, NOW(),'膜拜大神');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,4, NOW(),'不要想太多');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,5, NOW(),'说的好专业');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,6, NOW(),'哎呀');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,7, NOW(),'牛逼');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,8, NOW(),'冒泡');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,9, NOW(),'你能不能问个简单一点的!');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,2, NOW(),'阿西吧');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,1, NOW(),'不要想太多');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,1, NOW(),'帅气');

INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,1, NOW(),'哇咔咔 ');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,2, NOW(),'放弃挣扎吧！');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,3, NOW(),'你是可以的');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,4, NOW(),'就像楼上说的一样');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,5, NOW(),'给你一个大赞');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,6, NOW(),'大佬好');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,7, NOW(),'钱包那么小  哪也去不了');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,8, NOW(),'找其他办法吧，有人能指导下吗？');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,9, NOW(),'可否简单说一下解析过程 ');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,4, NOW(),'运行结果贴出来 ');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,1, NOW(),' ');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,2, NOW(),'小case');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,3, NOW(),'刷评论不是我的强项，我就过来蹭个经验');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,4, NOW(),'是这样的吗？');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,5, NOW(),'你说的不全对');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,6, NOW(),'大佬好');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(3,7, NOW(),'我就刷个评论');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,8, NOW(),'你说对对对');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,9, NOW(),'999');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(1,5, NOW(),'楼上好帅 ');
INSERT INTO `blogComment`(uid,bid,createTime,content) VALUE(2,2, NOW(),'请问一下：专业证明有什么用？ ');


INSERT INTO `skilltype` (genreName) VALUE('Java'),('C/C++'),('C#'),('.Net'),('大数据');

INSERT INTO `resourcetype` (genreName) VALUE('图片类'),('代码类'),('文档类');

INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题1','没有描述','/upload/1.jpg','736','1.0','4','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题2','没有描述','/upload/2.jpg','40','2.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题3','没有描述','/upload/3.jpg','567','4.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题4','没有描述','/upload/4.jpg','512','3.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题5','没有描述','/upload/5.jpg','440','2.0','2','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题6','没有描述','/upload/6.jpg','83','3.0','2','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题7','没有描述','/upload/7.jpg','350','5.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题8','没有描述','/upload/8.jpg','885','5.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题9','没有描述','/upload/9.jpg','985','5.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题10','没有描述','/upload/10.jpg','148','1.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题11','没有描述','/upload/11.jpg','27','4.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题12','没有描述','/upload/12.jpg','446','2.0','4','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题13','没有描述','/upload/13.jpg','183','2.0','2','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题14','没有描述','/upload/14.jpg','547','4.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题15','没有描述','/upload/15.jpg','111','2.0','1','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题16','没有描述','/upload/16.jpg','845','5.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题17','没有描述','/upload/17.jpg','57','5.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题18','没有描述','/upload/18.jpg','766','4.0','1','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题19','没有描述','/upload/19.jpg','645','4.0','3','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题20','没有描述','/upload/20.jpg','712','5.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题21','没有描述','/upload/21.jpg','574','5.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题22','没有描述','/upload/22.jpg','266','1.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题23','没有描述','/upload/23.jpg','851','2.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题24','没有描述','/upload/24.jpg','354','4.0','3','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题25','没有描述','/upload/25.jpg','388','4.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题26','没有描述','/upload/26.jpg','410','2.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题27','没有描述','/upload/27.jpg','847','3.0','3','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题28','没有描述','/upload/28.jpg','451','4.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题29','没有描述','/upload/29.jpg','602','4.0','4','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题30','没有描述','/upload/30.jpg','362','5.0','1','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题31','没有描述','/upload/31.jpg','899','5.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题32','没有描述','/upload/32.jpg','933','3.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题33','没有描述','/upload/33.jpg','332','3.0','3','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题34','没有描述','/upload/34.jpg','372','5.0','2','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题35','没有描述','/upload/35.jpg','379','4.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题36','没有描述','/upload/36.jpg','300','5.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题37','没有描述','/upload/37.jpg','642','4.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题38','没有描述','/upload/38.jpg','935','2.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题39','没有描述','/upload/39.jpg','422','5.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题40','没有描述','/upload/40.jpg','949','1.0','3','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题41','没有描述','/upload/41.jpg','112','3.0','1','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题42','没有描述','/upload/42.jpg','9','2.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题43','没有描述','/upload/43.jpg','551','4.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题44','没有描述','/upload/44.jpg','955','1.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题45','没有描述','/upload/45.jpg','506','2.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题46','没有描述','/upload/46.jpg','590','1.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题47','没有描述','/upload/47.jpg','657','3.0','2','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题48','没有描述','/upload/48.jpg','108','5.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题49','没有描述','/upload/49.jpg','800','5.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题50','没有描述','/upload/50.jpg','548','4.0','3','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题51','没有描述','/upload/51.jpg','810','2.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题52','没有描述','/upload/52.jpg','882','3.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题53','没有描述','/upload/53.jpg','372','3.0','3','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题54','没有描述','/upload/54.jpg','937','5.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题55','没有描述','/upload/55.jpg','300','3.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题56','没有描述','/upload/56.jpg','23','4.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题57','没有描述','/upload/57.jpg','912','5.0','3','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题58','没有描述','/upload/58.jpg','879','1.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题59','没有描述','/upload/59.jpg','142','4.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题60','没有描述','/upload/60.jpg','358','3.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题61','没有描述','/upload/61.jpg','603','2.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题62','没有描述','/upload/62.jpg','957','5.0','3','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题63','没有描述','/upload/63.jpg','622','2.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题64','没有描述','/upload/64.jpg','493','1.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题65','没有描述','/upload/65.jpg','560','2.0','3','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题66','没有描述','/upload/66.jpg','521','4.0','1','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题67','没有描述','/upload/67.jpg','759','3.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题68','没有描述','/upload/68.jpg','567','1.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题69','没有描述','/upload/69.jpg','150','2.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题70','没有描述','/upload/70.jpg','56','1.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题71','没有描述','/upload/71.jpg','307','2.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题72','没有描述','/upload/72.jpg','715','3.0','1','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题73','没有描述','/upload/73.jpg','991','2.0','3','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题74','没有描述','/upload/74.jpg','555','4.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题75','没有描述','/upload/75.jpg','937','4.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题76','没有描述','/upload/76.jpg','629','1.0','1','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题77','没有描述','/upload/77.jpg','746','5.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题78','没有描述','/upload/78.jpg','735','3.0','1','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题79','没有描述','/upload/79.jpg','764','5.0','2','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题80','没有描述','/upload/80.jpg','118','2.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题81','没有描述','/upload/81.jpg','788','4.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题82','没有描述','/upload/82.jpg','170','4.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题83','没有描述','/upload/83.jpg','405','3.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题84','没有描述','/upload/84.jpg','831','2.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题85','没有描述','/upload/85.jpg','741','5.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题86','没有描述','/upload/86.jpg','127','4.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题87','没有描述','/upload/87.jpg','550','3.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题88','没有描述','/upload/88.jpg','967','5.0','2','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题89','没有描述','/upload/89.jpg','472','4.0','3','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题90','没有描述','/upload/90.jpg','22','5.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题91','没有描述','/upload/91.jpg','34','5.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题92','没有描述','/upload/92.jpg','146','3.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题93','没有描述','/upload/93.jpg','153','3.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题94','没有描述','/upload/94.jpg','700','3.0','3','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题95','没有描述','/upload/95.jpg','187','5.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题96','没有描述','/upload/96.jpg','751','4.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题97','没有描述','/upload/97.jpg','639','2.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题98','没有描述','/upload/98.jpg','788','5.0','2','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题99','没有描述','/upload/99.jpg','691','1.0','4','2');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题100','没有描述','/upload/100.jpg','482','1.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题101','没有描述','/upload/101.jpg','482','1.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题102','没有描述','/upload/102.jpg','482','1.0','1','1');
INSERT INTO `Download`(createTime,title,describle,downloadPath,downloadAmout,price,skillId,resourceId) VALUE(NOW(),'标题103','没有描述','/upload/103.jpg','482','1.0','1','1');

INSERT INTO forumGenre(genreName) VALUES('Java'),('C/C++'),('C#');


INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(1,1,NOW(),'java入门','如题：如何从入门到放弃。',100,100);
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(2,1,NOW(),'javase,学到什么程度算是掌握了？？','学到什么程度才算是精通呢？？？','999','100');
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(3,1,NOW(),'适合JAVA的初学者的全套基础核心','适合JAVA的初学者的全套基础核心http://www.javaying.cn/videolist.html','74','1000');
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(2,1,NOW(),'Java入门易，精通难','令狐冲的IT江湖淼淼6java作为一种高级编程语言，入门是很容易的；但是精通很难。工作n年，没有真正多少能精通java的。一旦开始工作，大家的时间就会被工作占用了，人就容易产生惰性，没有学习的动力了。所以，很多程序员觉得自己会java啊，但是找工作、面试总碰壁。规划了一周的课程，只聊java，前四天完成门，后三天领路怎么样精通，有想学习的可以私信。目前正在写java的相关课程，写了很多又重新推翻了，重新整理了思路，让java学习变得更简单。','888','1');
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(1,1,NOW(),'有没有做过EDI的大佬 啊 求助','如题。','0','200');
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(2,1,NOW(),'java入门','如题：如何从入门到放弃。',321,100);
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE('1',1,NOW(),'实习一个月。。1800一个月。开了 不是技术，不是能力，竟然','实习一个月。。1800一个月。开了 不是技术，不是能力，竟然是说话得罪人，社会社会','10','100');
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE('1',1,NOW(),'被上海的项目经理恶心到了','解读下他的话，1.bug率过高，这个外包项目组，没有需求，只有原型。开发的时候让我们按照原型做，做出来之后。所谓的bug就是标题少了几个字，表格的单位没加，百分比加小标题上，这些小问题你开发前有告知吗？我们就按照原型做也有错了，你之前没告知也都成我们的bug了？还有一个bug是他们新增的需求，我们毫不知情，没有任何人通知我这个新需求，也成bug了！
2.我们等于要帮他们重写，这句话极其恶心！这些小bug改完能花多少时间，怎么就变成了帮我们重写了，我的后台代码是你重写的？前台js是你重写的？echart图表都是你重写的？完全是子虚乌有恶意中伤！此人非常阴险，笑里藏刀！不愧为上海人！
3.后面那三句废话我就不想说啥了，最后那一句很多值都是写死的，大哥！你告诉我，我那个值是写死的！如果有写死的值为什么bug单上没录入？也从没听任何人说过？你自己如果发现写死的值你咋不说？只是跟我们公司人事提这个？这最后一句话更是对我们人格的侮辱。完全的子虚乌有，为了扣钱找个理由，搬弄是非！','10','1');
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(3,1,NOW(),'程序员是在用头发换工资啊','那还挺值的','100','1');
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(2,1,NOW(),'想学编程，我现在是餐厅的服务员，19岁，想学IT，觉得这个有','想学编程，我现在是餐厅的服务员，19岁，想学IT，觉得这个有前景，北大青鸟的老师给我介绍过专业课，分3个阶段，2个阶段学完也就就2万多，不算生活费，但是朋友劝我不要学，因为他本身就是中级工程师，反正我挺想学的，求大神指路。','0','200');

INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(1,4,NOW(),'关于net毕业设计的做法','如何通过毕业项目',100,100);
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(2,4,NOW(),'微信跳一跳源码','跳一跳 源码 nice winform邮箱 邮箱 发你们','229','220');
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(1,4,NOW(),'net原创定制，有需要的吗，实力说话','联系电话：10010',100,100);
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(3,4,NOW(),'。net开发web','ASP.Net视频教程自学C#基础入门/网站实战/项目实例开发/mv','799','166');

INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(1,3,NOW(),'为什么ios打游戏延迟都要比安卓稳定好多？','之前用的红米note3在房间里打游戏延迟老是跳，换了荣耀v9还是一样，必须离路由器近点才可以，而我玩的平板阿派就没这个问题，非常稳定
',100,1010);
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(2,3,NOW(),'小米mix2对比菊花mate10，菊花又被虐哭了','学到什么程度才算是精通呢？？？','959','175');
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(1,3,NOW(),'我想知道，现在的安卓机皇是哪个屏幕5.5寸以下的，太大拿不住','如题',10,0);
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(3,3,NOW(),'手机求救，急，大佬们看过来','急，哪位大佬可以发一下三星sm-n9002的中文recovery。同学叫我帮他，我又不好意思拒绝。','123','190');

INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(2,2,NOW(),'c++入门','如题：如何从入门到放弃。',120,640);
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(2,2,NOW(),'c++学到什么程度算是掌握了？？','学到什么程度才算是精通呢？？？','522','344');
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(1,2,NOW(),'未定义标识符','Waves未定义标识符，不知道怎么改，谁来帮我解答下。。',100,100);
INSERT INTO forum (uid,genreid,createTime,title,content,readAmout,rewardIntegral) VALUE(3,2,NOW(),'有一起学习前后端的朋友吗～','交流主要内容在于：面向所有的前后端，无论是win，安卓，ios。也无论是哪种主流语言，哪种主流框架，都会有所接触。强调通识性学习，比本科教学深入很多，但不会对任何一门知识过分专精。软件本科生，希望找同样对软件充满热忱的人一起学习～
无论你是刚入门的学生党，还是已经工作了好几年的单科小牛，只要依旧有一颗热爱学习的心，来者不拒噢～随手配图。楼下介绍一下LZ自己的一些情况。','999','100');



INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(3,2,NOW(),'给你一个大赞',366,8);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,2,NOW(),'你是在逗我吗？',995,9);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,1,NOW(),'给你一个大赞',957,9);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,3,NOW(),'兄台，你得多混混混社会？',726,0);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,1,NOW(),'你i这个问题我不能回答你!',627,6);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,1,NOW(),'你i这个问题我不能回答你!',785,1);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,1,NOW(),'大佬好',276,6);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,3,NOW(),'运行结果贴出来 ',529,4);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,1,NOW(),'请问一下：专业证明有什么用？ ',821,0);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(3,2,NOW(),'请问一下：专业证明有什么用？ ',567,2);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,2,NOW(),'配置没有问题呀',781,5);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,1,NOW(),'你说对对对',641,2);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,1,NOW(),'大佬好',378,4);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,3,NOW(),'牛逼',969,0);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,1,NOW(),'请问一下：专业证明有什么用？ ',113,2);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(3,2,NOW(),'运行结果贴出来 ',801,6);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,3,NOW(),'大佬好',867,5);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,2,NOW(),'可否简单说一下解析过程 ',811,1);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,3,NOW(),'给你一个大赞',521,3);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,1,NOW(),'牛逼',520,0);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(3,1,NOW(),'配置没有问题呀',871,1);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(2,3,NOW(),'不要想太多',430,5);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(3,2,NOW(),'找其他办法吧，有人能指导下吗？',612,2);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(3,3,NOW(),'找其他办法吧，有人能指导下吗？',390,3);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,3,NOW(),'找其他办法吧，有人能指导下吗？',343,5);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,3,NOW(),'请问一下：专业证明有什么用？ ',222,1);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,3,NOW(),'给你一个大赞',773,8);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(3,1,NOW(),'就像楼上说的一样',809,0);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,2,NOW(),'厉害厉害',434,5);
INSERT INTO replyforum (fid,uid,createTime,content,getIntegral,`floor`) VALUE(1,2,NOW(),'没有问题的呀',309,8);

