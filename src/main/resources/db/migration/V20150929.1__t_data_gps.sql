CREATE TABLE IF NOT EXISTS t_data_gps (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  vin varchar(17) NOT NULL COMMENT '车架号',
  imei varchar(15) NOT NULL COMMENT 'imei',
  application_id int(2) NOT NULL COMMENT '应用类型id',
  message_id int(1) NOT NULL COMMENT '消息id',
  sending_time DATETIME NOT NULL COMMENT '发送时间',
  is_location smallint(1) NOT NULL COMMENT '是否定位 0有效 1无效',
  north_south varchar(1) NOT NULL COMMENT '南北纬',
  east_west varchar(1) NOT NULL COMMENT '东西经',
  latitude double NOT NULL COMMENT '纬度',
  longitude double NOT NULL COMMENT '经度',
  speed float NOT NULL COMMENT '速度',
  heading int(3) NOT NULL COMMENT '方向',
  PRIMARY KEY (id),
  INDEX idx_vin(vin),
  INDEX idx_imei(imei),
  INDEX idx_sending_time(sending_time),
  INDEX idx_speed(speed)
) DEFAULT CHARSET=utf8 COMMENT='GPS数据表';