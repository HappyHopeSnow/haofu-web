/**商家表**/
DROP TABLE `business`;
CREATE TABLE `business` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '''' COMMENT "商家名称",
  `descrp` varchar(1024) NOT NULL DEFAULT '' COMMENT "商家简介",
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT "商家状态",
  `search_key` varchar(512) NOT NULL DEFAULT '''' COMMENT "搜索关键字",
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT "排序值",
  `create_time` datetime NOT NULL COMMENT "创建时间",
  `modify_time` datetime NOT NULL COMMENT "修改时间",
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


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
  `integral` varchar(128) NOT NULL DEFAULT '0' COMMENT "公司福利积分",
  `search_key` varchar(512) NOT NULL DEFAULT '''' COMMENT "搜索关键字",
  `create_time` datetime NOT NULL COMMENT "创建时间",
  `modify_time` datetime NOT NULL COMMENT "修改时间",
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



