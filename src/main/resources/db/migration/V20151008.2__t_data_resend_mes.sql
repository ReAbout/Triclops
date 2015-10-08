CREATE TABLE IF NOT EXISTS  t_data_resend_mes (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  vin varchar(50) NOT NULL COMMENT 'vin',
  imei varchar(50) NOT NULL COMMENT 'imei',
  application_id int(11) NOT NULL COMMENT 'application id',
  message_id int(11) NOT NULL COMMENT 'message id',
  sending_time bigint(20) NOT NULL COMMENT '发送时间',
  is_location smallint(6) NOT NULL COMMENT '是否定位',
  latitude bigint(20) NOT NULL COMMENT '纬度',
  longitude bigint(20) NOT NULL COMMENT '经度',
  speed int(11) NOT NULL COMMENT '速度',
  heading int(11) NOT NULL COMMENT '方向',
  fuel_oil smallint(6) NOT NULL COMMENT '燃油量',
  avg_oil int(11) NOT NULL COMMENT '平均油耗',
  oil_life smallint(6) NOT NULL COMMENT '机油寿命',
  drive_range varchar(100) NOT NULL COMMENT '行驶里程',
  left_front_tire_pressure int(11) NOT NULL COMMENT '左前轮胎压',
  left_rear_tire_pressure int(11) NOT NULL COMMENT '左后轮胎压',
  right_front_tire_pressure int(11) NOT NULL COMMENT '右前轮胎压',
  right_rear_tire_pressure int(11) NOT NULL COMMENT '右后轮胎压',
  window_information smallint(6) NOT NULL COMMENT '车窗信息',
  vehicle_temperature smallint(6) NOT NULL COMMENT '车内温度',
  vehicle_outer_temperature smallint(6) NOT NULL COMMENT '车外温度',
  door_information smallint(6) NOT NULL COMMENT '车门信息',
  single_battery_voltage int(11) NOT NULL COMMENT '单体蓄电池电压',
  maximum_voltage_power_battery_pack smallint(6) NOT NULL COMMENT '最高电压动力蓄电池包序号',
  maximum_battery_voltage int(11) NOT NULL COMMENT '电池单体最高电压值',
  battery_monomer_minimum_voltage int(11) NOT NULL COMMENT '电池单体最低电压值',
  engine_condition smallint(6) NOT NULL COMMENT '发动机状态',
  engine_speed int(11) NOT NULL COMMENT '发动机转速',
  rapid_acceleration int(11) NOT NULL COMMENT '急加速',
  rapid_deceleration int(11) NOT NULL COMMENT '急减速',
  speeding int(11) NOT NULL COMMENT '超速',
  signal_strength smallint(6) NOT NULL COMMENT '信号强度',
  bcm1 varchar(100) NOT NULL COMMENT 'BCM',
  ems varchar(100) NOT NULL COMMENT 'EMS',
  tcu varchar(100) NOT NULL COMMENT 'TCU',
  ic varchar(100) NOT NULL COMMENT 'IC',
  abs varchar(100) NOT NULL COMMENT 'ABS',
  pdc varchar(100) NOT NULL COMMENT 'PDC',
  bcm2 varchar(100) NOT NULL COMMENT 'BCM',
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COMMENT='补发数据表';

