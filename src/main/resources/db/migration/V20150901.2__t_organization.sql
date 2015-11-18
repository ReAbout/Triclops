CREATE TABLE IF NOT EXISTS t_organization (
  Id int(11) NOT NULL AUTO_INCREMENT COMMENT '组织的id',
  org_name varchar(128) NOT NULL COMMENT '组织名称',
  bre_code varchar(8) UNIQUE NOT NULL COMMENT '组织简码',
  type_key int(3) NOT NULL COMMENT '组织类型，1是华晨汽车，2是经销商，3是车友群',
  descript VARCHAR(100) COMMENT '描述',
  available int(1) NOT NULL DEFAULT 1 COMMENT '是否可用，0失效，1可用',
  areaid int(11) COMMENT '地区id',
  PRIMARY KEY (Id),
  UNIQUE KEY (org_name),
  KEY idx_typekey (type_key)
) DEFAULT CHARSET=utf8 COMMENT='组织表';