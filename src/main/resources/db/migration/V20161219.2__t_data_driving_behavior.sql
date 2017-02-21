CREATE TABLE IF NOT EXISTS t_data_driving_behavior (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  vin varchar(50) NOT NULL COMMENT 'vin',
  imei varchar(50) NOT NULL COMMENT 'imei',
  application_id int(11) NOT NULL COMMENT 'application id',
  message_id int(11) NOT NULL COMMENT 'message id',
  trip_id int(6) NOT NULL COMMENT '电动机启动次数，行程id',
  sending_time DATETIME NOT NULL COMMENT '发送时间',
  receive_time DATETIME NOT NULL COMMENT '接收时间',
  speed_up smallint(5) DEFAULT 0 COMMENT '急加速次数',
  speed_down smallint(5) DEFAULT 0 COMMENT '急减速次数',
  speed_turn smallint(5) DEFAULT 0 COMMENT '急转弯次数',
  trip_a float DEFAULT 0 COMMENT '小计里程A',
  trip_b float DEFAULT 0 COMMENT '小计里程B',
  seatbelt_fl varchar(1) DEFAULT NULL COMMENT '前左（主驾）安全带 0没系 1系了 2保留 3信号异常',
  seatbelt_fr varchar(1) DEFAULT NULL COMMENT '前右（副驾）安全带 0没系 1系了 2保留 3信号异常',
  seatbelt_rl varchar(1) DEFAULT NULL COMMENT '后左安全带 0没系 1系了 2保留 3信号异常',
  seatbelt_rm varchar(1) DEFAULT NULL COMMENT '后中安全带 0没系 1系了 2保留 3信号异常',
  seatbelt_rr varchar(1) DEFAULT NULL COMMENT '后右安全带 0没系 1系了 2保留 3信号异常',
  driving_range int(11) NOT NULL COMMENT '行驶里程',
  fuel_oil float NOT NULL COMMENT '燃油量',
  avg_oil_a float NOT NULL COMMENT '平均油耗A',
  avg_oil_b float NOT NULL COMMENT '平均油耗B',
  speed_1_count int(11) DEFAULT 0 COMMENT '车速小于等于1的次数，一次时间为1/40=0.025s',
  speed_1_45_count int(11) DEFAULT 0 COMMENT '车速大于1小于等于45的次数',
  speed_45_90_count int(11) DEFAULT 0 COMMENT '车速大于45小于等于90的次数',
  speed_90_count int(11) DEFAULT 0 COMMENT '车速大于90的次数',
  speed_up_count int(11) DEFAULT 0 COMMENT '超速的次数',
  max_speed int(11) DEFAULT 0 COMMENT '最高车速',
  PRIMARY KEY (id),
  INDEX idx_vin(vin),
  INDEX idx_sending_time(sending_time)
) DEFAULT CHARSET=utf8 COMMENT='驾驶行为数据表';
