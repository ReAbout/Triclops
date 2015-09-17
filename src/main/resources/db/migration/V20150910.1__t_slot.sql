﻿DROP TABLE IF  EXISTS t_slot;
CREATE TABLE IF NOT EXISTS t_slot (
  id bigint(12) NOT NULL AUTO_INCREMENT COMMENT 'id',
  uid int(11) NOT NULL COMMENT '用户id',
  slotkey varchar(50) NOT NULL COMMENT 'slotkey',
  slot longblob NOT NULL COMMENT 'slot二进制数据',
  PRIMARY KEY (id),
  FOREIGN KEY (uid) REFERENCES t_user(Id)
) DEFAULT CHARSET=utf8 COMMENT='通讯录表';