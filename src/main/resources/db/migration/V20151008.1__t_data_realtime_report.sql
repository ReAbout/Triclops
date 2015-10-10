CREATE TABLE IF NOT EXISTS t_data_realtime_report (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  vin varchar(50) NOT NULL COMMENT 'vin',
  imei varchar(50) NOT NULL COMMENT 'imei',
  application_id int(11) NOT NULL COMMENT 'application id',
  message_id int(11) NOT NULL COMMENT 'message id',
  sending_time DATETIME NOT NULL COMMENT '发送时间',
  fuel_oil smallint(6) NOT NULL COMMENT '燃油量',
  avg_oil float NOT NULL COMMENT '平均油耗',
  oil_life smallint(6) NOT NULL COMMENT '机油寿命',
  drive_range int(11) NOT NULL COMMENT '行驶里程',
  left_front_tire_pressure int(11) NOT NULL COMMENT '左前轮胎压',
  left_rear_tire_pressure int(11) NOT NULL COMMENT '左后轮胎压',
  right_front_tire_pressure int(11) NOT NULL COMMENT '右前轮胎压',
  right_rear_tire_pressure int(11) NOT NULL COMMENT '右后轮胎压',
  left_front_window_information varchar(1) NOT NULL COMMENT '左前车窗信息1开0关',
  left_rear_window_information varchar(1) NOT NULL COMMENT '左后车窗信息1开0关',
  right_front_window_information varchar(1) NOT NULL COMMENT '右前车窗信息1开0关',
  right_rear_window_information varchar(1) NOT NULL COMMENT '右后车窗信息1开0关',
  vehicle_temperature smallint(6) NOT NULL COMMENT '车内温度',
  vehicle_outer_temperature smallint(6) NOT NULL COMMENT '车外温度',
  left_front_door_information varchar(1) NOT NULL COMMENT '左前车门信息1开0关',
  left_rear_door_information varchar(1) NOT NULL COMMENT '左后车门信息1开0关',
  right_front_door_information varchar(1) NOT NULL COMMENT '右前车门信息1开0关',
  right_rear_door_information varchar(1) NOT NULL COMMENT '右后车门信息1开0关',
  engine_door_information varchar(1) NOT NULL COMMENT '发动机舱门信息1开0关',
  trunk_door_information varchar(1) NOT NULL COMMENT '后备箱门信息1开0关',
  single_battery_voltage double NOT NULL COMMENT '单体蓄电池电压',
  maximum_voltage_power_pattery_pack smallint(6) NOT NULL COMMENT '最高电压动力蓄电池包序号',
  maximum_battery_voltage double NOT NULL COMMENT '电池单体最高电压值',
  battery_monomer_minimum_voltage double NOT NULL COMMENT '电池单体最低电压值',
  engine_condition varchar(1) NOT NULL COMMENT '发动机状态   0:engine stop 1:engine start 2:idle speed 3:part load  4:trailling throttle  5:full load  6:Fuel Cut Off  7:undefined',
  engine_speed int(6) NOT NULL COMMENT '发动机转速',
  rapid_acceleration int(6) NOT NULL COMMENT '急加速',
  rapid_deceleration int(6) NOT NULL COMMENT '急减速',
  speeding int(6) NOT NULL COMMENT '超速',
  signal_strength smallint(6) NOT NULL COMMENT '信号强度',
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COMMENT='实时数据表';

