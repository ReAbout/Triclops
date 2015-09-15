CREATE TABLE IF NOT EXISTS t_user (
  Id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL DEFAULT '' COMMENT '账号',
  gender int(3) DEFAULT NULL COMMENT '性别',
  nick varchar(50) NOT NULL DEFAULT '' COMMENT '显示给其它人看的名称',
  phone varchar(11) DEFAULT NULL COMMENT '电话号码',
  is_verified  int(1) DEFAULT 0 COMMENT '0表示未验证，1表示已验证',
  PRIMARY KEY (Id),
  UNIQUE KEY unique_name (name),
  KEY idx_phone (phone)
) DEFAULT CHARSET=utf8 COMMENT='用户表';

INSERT INTO t_user(Id,name,nick) values('1','admin','admin4096');