CREATE TABLE IF NOT EXISTS  t_data_warning_message (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  vin varchar(50) NOT NULL COMMENT '车架号',
  imei varchar(50) NOT NULL COMMENT 'imei',
  application_id int(11) NOT NULL COMMENT 'application id',
  message_id int(11) NOT NULL COMMENT 'message id',
  sending_time DATETIME NOT NULL COMMENT '发送时间',
  is_location smallint(6) NOT NULL COMMENT '是否定位 0有效 1无效',
  north_south varchar(1) NOT NULL COMMENT '南北纬',
  east_west varchar(1) NOT NULL COMMENT '东西经',
  latitude double NOT NULL COMMENT '纬度',
  longitude double NOT NULL COMMENT '经度',
  speed float NOT NULL COMMENT '速度',
  heading int(11) NOT NULL COMMENT '方向',
  battery_voltage_too_high varchar(1) NOT NULL COMMENT '车辆电瓶过压 0:故障发生 1:故障消除',
  battery_voltage_too_low varchar(1) NOT NULL COMMENT '车辆电瓶欠压 0:故障发生 1:故障消除',
  media_abnormal varchar(1) NOT NULL COMMENT '多媒体异常 0:故障发生 1:故障消除',
  frozen_liquid_shortage varchar(1) NOT NULL COMMENT '冷冻液不足 0:故障发生 1:故障消除',
  lamp_failure varchar(1) NOT NULL COMMENT '车灯系统故障  0:故障发生 1:故障消除',
  engine_abnormal varchar(1) NOT NULL COMMENT '发动机异常 0:故障发生 1:故障消除',
  water_temperature_too_high varchar(1) NOT NULL COMMENT '水温过高 0:故障发生 1:故障消除',
  dangerous_driving_system_fault varchar(1) NOT NULL COMMENT '危险传动系统故障 0:故障发生 1:故障消除',
  warning_driving_system_fault varchar(1) NOT NULL COMMENT '警告传动系统故障  0:故障发生 1:故障消除',
  driving_system_overheated varchar(1) NOT NULL COMMENT '传动系统过热 0:故障发生 1:故障消除',
  airbag_abnormal varchar(1) NOT NULL COMMENT '安全气囊异常 0:故障发生 1:故障消除',
  abs_fault varchar(1) NOT NULL COMMENT 'ABS故障  0:故障发生 1:故障消除',
  oil_pressure_low varchar(1) NOT NULL COMMENT '油压低 0:故障发生 1:故障消除',
  brake_fluid_level_low varchar(1) NOT NULL COMMENT '刹车液位低  0:故障发生 1:故障消除',
  pdc_system_fault varchar(1) NOT NULL COMMENT 'PDC系统故障 0:故障发生 1:故障消除',
  airbag_triggered varchar(1) NOT NULL COMMENT '安全气囊触发 0: 触发 1:未触发',
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COMMENT='报警数据表';

