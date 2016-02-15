一.表设计
CREATE TABLE film
(
	id BIGINT NOT NULL AUTO_INCREMENT,
    uid BIGINT NOT NULL default 0,   -- 上传者
	name varchar(128) not null default '''', -- 名称
	key_word varchar(512) not null default '''', -- 关键字 名字+导演+演员+类型+简介
	format_id BIGINT NOT NULL default 0, -- 电影格式id【BD-720-MKV】 -- sub
	format varchar(32) not null default '''', -- 电影格式【BD-720-MKV】 -- sub
	captions_type varchar(64) not null default '''', -- 电影字幕【国粤双语中字】
	score float not null default 0, -- 评价分数【6.1】
	size varchar(16) not null default '''', -- 大小【1.3G】
	screen_year_id BIGINT NOT NULL default 0, -- 上映年份id【2015】 -- sub
	screen_year varchar(16) not null default '''', -- 上映年份【2015】
	down_model varchar(32) not null default '''', -- 下载方式【BT下载】
	cover_id BIGINT NOT NULL default 0, -- 封面id【BT下载】 -- sub
	cover_name varchar(128) not null default '''', -- 封面名称【BT下载】
	class_id BIGINT not null default 0, -- 类型id【BT下载】
	class_name varchar(128) not null default '''', -- 类型名称【动作片】
	director varchar(32) not null default '''', -- 导演【】
	writer varchar(32) not null default '''', -- 编剧【】
	performer varchar(128) not null default '''', -- 主演【】
	country varchar(16) not null default '''', -- 制片国家/地区【】
	language varchar(16) not null default '''', -- 语言【】
	screen_date varchar(16) not null default '''', -- 上映日期【】
	length varchar(16) not null default '''', -- 片长【BT下载】
	other_name varchar(16) not null default '''', -- 其他名字【BT下载】
	description varchar(16) not null default '''', -- 简介【BT下载】
	seed varchar(16) not null default '''', -- 链接种子名字
	createTime DATETIME NOT NULL,
    modifyTime DATETIME NOT NULL,
    PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
/***************************************************************************************/

1.普通User表；
CREATE TABLE user
(
	id BIGINT NOT NULL AUTO_INCREMENT,
	name varchar(128) not null default '''', -- 用户名
	status int(11) NOT NULL DEFAULT ''0'',  -- 状态 ：0:-初始；10-发布；20-删除
	mail varchar(512) not null default '''', -- 邮箱
	password varchar(512) not null default '''', -- 密码
	province varchar(512) not null default '''', -- 省
	city varchar(512) not null default '''', --市
	phone varchar(32) not null default '''', -- 手机号码
	createTime DATETIME NOT NULL,  -- 创建时间
    modifyTime DATETIME NOT NULL,  -- 修改时间
    PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

商家表：
  CREATE TABLE business
(
	id BIGINT NOT NULL AUTO_INCREMENT,
	name varchar(128) not null default '''' COMMENT "商品名称", -- 名称
	descrp varchar(1024) not null default '''' COMMENT "商家简介", -- 商家简介
	status int NOT NULL DEFAULT ''0'' c,  -- 状态 ：0:-初始；10-发布；20-删除
	key varchar(512) not null default '''', -- 搜索关键字
	sort int not null default ''0'', -- 查询排序
	createTime DATETIME NOT NULL,  -- 创建时间
  modifyTime DATETIME NOT NULL,  -- 修改时间
  PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

  大分类表：BigClass:parentId =  1=美食；2=休闲娱乐 3=电影 4-购物 ；5=丽人 6=旅游
    CREATE TABLE big_class
(
	id BIGINT NOT NULL AUTO_INCREMENT,
	name varchar(128) not null default '''', -- 名称
	status int(11) NOT NULL DEFAULT ''0'',  -- 状态 ：0:-初始；10-发布；20-删除
	createTime DATETIME NOT NULL,  -- 创建时间
    modifyTime DATETIME NOT NULL,  -- 修改时间
    PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
  小分类表：SmallClass:
   CREATE TABLE small_class
(
	id BIGINT NOT NULL AUTO_INCREMENT,
	name varchar(128) not null default '''', -- 名称
	status int(11) NOT NULL DEFAULT ''0'',  -- 状态 ：0:-初始；10-发布；20-删除
	big_id bigint not null default ''0'',  -- 大分类id
	big_name varchar(128) not null default '''', -- 大分类名称
	createTime DATETIME NOT NULL,  -- 创建时间
    modifyTime DATETIME NOT NULL,  -- 修改时间
    PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
  商品表：
  CREATE TABLE item
(
	id BIGINT NOT NULL AUTO_INCREMENT,
	name varchar(128) not null default '''', -- 名称
	status int(11) NOT NULL DEFAULT ''0'',  -- 状态 ：0:-初始；10-发布；20-删除
	big_id bigint not null default ''0'',  -- 大分类id
	big_name varchar(128) not null default '''', -- 大分类名称
	small_id bigint not null default ''0'',  -- 小分类id
	small_name varchar(128) not null default '''', -- 小分类名称
	business_id bigint not null default ''0'',  -- 商家id
	business_name varchar(128) not null default '''', -- 商家名称
	avail_start_time DATETIME not null , -- 生效开始时间
	avail_end_time DATETIME not null , -- 生效结束时间
	count int not null default ''0'', -- 商品数量
	youhui tiny not null default ''0'', -- 是否允许使用优惠券
	yuyue tiny not null default ''0'', -- 使用需要预约 ：0-需要； 1-不需要
	show_yuyue tiny not null default ''0'', -- 是否展示预约标签
	show_youhui tiny not null default ''0'', -- 是否展示代金优惠券
	district varchar(200) not null default '''', -- 所属商圈
	province varchar(200) not null default '''', -- 所属一级区域（省）
	city varchar(200) not null default '''', -- 所属二级区域（市）
	key varchar(512) not null default '''', -- 搜索关键字
	sort int not null default ''0'', -- 查询排序
	createTime DATETIME NOT NULL,  -- 创建时间
    modifyTime DATETIME NOT NULL,  -- 修改时间
    PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

用户订单：
   CREATE TABLE order
(
	id BIGINT NOT NULL AUTO_INCREMENT,
	name varchar(128) not null default '''', -- 名称
	status int(11) NOT NULL DEFAULT ''0'',  -- 状态 ：0:-初始；10-发布；20-删除
	item_id bigint not null default ''0'', -- 商品id
	item_quality int not null default ''1'', -- 商品数量
	item_price double not null default ''0'' -- 商品单价
	youhui tiny not null default ''0'', -- 是否有优惠
	youhui_price double not null default ''0'', -- 优惠钱数 
	total_price double not null default ''0'', -- 订单总价
	big_id bigint not null default ''0'',  -- 大分类id
	big_name varchar(128) not null default '''', -- 大分类名称
	small_id bigint not null default ''0'',  -- 小分类id
	small_name varchar(128) not null default '''', -- 小分类名称
	createTime DATETIME NOT NULL,  -- 创建时间
    modifyTime DATETIME NOT NULL,  -- 修改时间
    PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
 
  首页轮播配置表：1：本周精选；2：名店抢购
     CREATE TABLE carousel
(
	id BIGINT NOT NULL AUTO_INCREMENT,
	name varchar(128) not null default '''', -- 名称
	status int(11) NOT NULL DEFAULT ''0'',  -- 状态 ：0:-初始；10-发布；20-删除
	type int(11) NOT NULL DEFAULT ''0'',  -- 类型：1-本周精选；2-名店抢购
	pid bigint not null default ''0'',  -- 图片id
	desc varchar(512) not null default '''', -- 描述
	price double not null default ''0'', -- 商品价格
	youhui tiny not null default ''0'', -- 是否允许使用优惠券
	yuyue tiny not null default ''0'', -- 使用需要预约 ：0-需要； 1-不需要
	show_yuyue tiny not null default ''0'', -- 是否展示预约标签
	show_youhui tiny not null default ''0'', -- 是否展示代金优惠券
	createTime DATETIME NOT NULL,  -- 创建时间
    modifyTime DATETIME NOT NULL,  -- 修改时间
    PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


二.前端接口

1.首页接口：
/index
{
1.分类：大小分类查询
		select * from small_class where big_id = {1,2,3,4,5,6}
2.热门团购：目前写死
3.热门商圈：目前写死
4.轮播：①精选轮播：
			select * from carousel where type = 1 and status = 10 order by create_time desc limit 6;
		②名店轮播：
			select * from carousel where type = 2 and status = 10 order by create_time desc limit 5;

5.
     1=美食；2=休闲娱乐 3=电影 4-购物 ；5=丽人 6=旅游
       美食数据：20  select * from item where big_id = 1 and status = 10 order by create_time desc limit 20;
	   休闲娱乐：15                           big_id = 2
	   电影：8                                big_id = 3               
	   购物：8                                big_id = 4
	   丽人：8                                big_id = 5
	   旅游：8                                big_id = 6

}

2.搜索接口：(搜索结果页面)
/s?type={类型}&key={关键字}&start={1}&size={10}
if (type == 1)｛
	//团购
	select * from item where status = 10 and key like ''%{key}%'' order by sort limit start size;
｝else if (type == 2){
	//商家：
	business = select * from business where key like ''%{key}%'' and status = 10 order by sort limit 1;
	select * from item where business_id = business.id limit start size;
}
3.跳转到登录页面
/login.html

4.登录提交校验：
/account/login?name={用户名称}&password={用户密码}

User user = select * from user where name = {} and password = {} and status = 10;
if(user == null ) {return error};
//将uid和token放到cookie里面。
return user;

5.跳转到注册页面
/account/unitivesignup.html

6.进行注册提交
/account/signupsubmit?username={}&password={}&province={}&city={}
insert into user set status = 10 , name = username, password = password, province = {}, city = {};


三.后台设置接口

//集成easyUI

//集成mybatis数据库


需求：账户表：两类：
		企业账户；企业基本信息:公司名称，公司hr邮箱,公司规模，创始人，联系电话，座机电话，hr电话，hr姓名，成立日期，福利积分，状态。
		企业充值记录表和分发表。10(加)：初始送积分，企业充值，员工返还。
													20(减)：分发积分，分发时间，分发福利金额，分发前余额，分发人。
													21(减)：企业购买：购买相关订单
		员工账户：公司邮箱，个人姓名，自身邮箱，福利积分，所属企业id,企业名称，企业邮箱，员工状态。
		员工积分日志表：10(加)：企业发放，自己充值。
									20(减)：企业收回。个人消费。



/**企业账户**/
DROP TABLE `company_acount`;
CREATE TABLE `company_acount` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(128) NOT NULL DEFAULT '''' COMMENT "企业名称",
	`descrp` varchar(1024) NOT NULL DEFAULT '' COMMENT "企业hr邮箱",
	`founder` varchar(128) NOT NULL DEFAULT '' COMMENT "创始人",
	`status` tinyint(4) NOT NULL DEFAULT '0' COMMENT "企业状态",
	`num` int(6) NOT NULL DEFAULT '0' COMMENT "企业规模",
	`phone` int(6) NOT NULL DEFAULT '0' COMMENT "企业联系电话",
	`hr_phone` int(6) NOT NULL DEFAULT '0' COMMENT "hr电话",
	`hr_name` varchar(128) NOT NULL DEFAULT '0' COMMENT "hr姓名",
	`build_date` datetime NOT NULL DEFAULT '0' COMMENT "公司成立时间",
	`integral` int(128) NOT NULL DEFAULT '0' COMMENT "公司福利积分",
	`search_key` varchar(512) NOT NULL DEFAULT '''' COMMENT "搜索关键字",
	`create_time` datetime NOT NULL COMMENT "创建时间",
	`modify_time` datetime NOT NULL COMMENT "修改时间",
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



/**企业积分充值消费记录表**/
DROP TABLE `company_integral_log`;
CREATE TABLE `company_acount` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`cid` bigint(20) NOT NULL DEFAULT '0' COMMENT "企业id",
	`company_name` varchar(128) NOT NULL DEFAULT '''' COMMENT "企业名称",
	`company_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT "企业状态",
	`integral` int(128) NOT NULL DEFAULT '0' COMMENT "公司福利积分",
	`integral` int(128) NOT NULL DEFAULT '0' COMMENT "公司福利积分",
	amount bigint(20) NOT NULL DEFAULT 0 COMMENT '本次充值金额',
	`create_time` datetime NOT NULL COMMENT "创建时间",
	`modify_time` datetime NOT NULL COMMENT "修改时间",
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;









