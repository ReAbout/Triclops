create table t_tbox_parm_set(
id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
vin varchar(50) NOT NULL COMMENT '车架号',
sending_time DATETIME NOT NULL COMMENT '发送时间',
event_id bigint(20) NOT NULL  COMMENT'eventId',
frequency_save_local_media int(11) NOT NULL COMMENT '本地存储周期',
frequency_save_local_media_result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
frequency_for_report int(11) NOT NULL COMMENT '信息上报周期',
frequency_for_report_result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
frequency_for_warning_report int(11) NOT NULL COMMENT '报警上报周期',
frequency_for_warning_report_result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
frequency_heartbeat smallint(6) NOT NULL COMMENT '心跳周期',
frequency_heartbeat_result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
time_out_for_terminal_search int(11) NOT NULL COMMENT '终端应答超时',
time_out_for_terminal_search_result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
time_out_for_server_search int(11) NOT NULL COMMENT '平台应答超时',
time_out_for_server_search_result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
upload_type smallint(1) NOT NULL COMMENT '上报方式',
upload_type_result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
enterprise_broadcast_address1 varchar(20) NOT NULL COMMENT '平台IP1',
enterprise_broadcast_address1result smallint(1) NOT NULL COMMENT '',
enterprise_broadcast_port1 int(11) NOT NULL COMMENT '平台端口1',
enterprise_broadcast_port1result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
enterprise_broadcast_address2 varchar(20) NOT NULL COMMENT '平台IP2',
enterprise_broadcast_address2result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
enterprise_broadcast_port2 int(11) NOT NULL COMMENT '平台端口2',
enterprise_broadcast_port2result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
enterprise_domain_name_size smallint(6) NOT NULL COMMENT '域名长度',
enterprise_domain_name_size_result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
enterprise_domain_name varchar(70) NOT NULL COMMENT '域名',
enterprise_domain_name_result smallint(1) NOT NULL COMMENT '结果 0:成功 1:失败',
status smallint(1) NOT NULL COMMENT '设置状态标识 0:TBox离线尚未发出 1:已向TBox发出 2:TBOX已响应',
version varchar(20) NOT NULL COMMENT '',
PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COMMENT='TBOX参数设置表';