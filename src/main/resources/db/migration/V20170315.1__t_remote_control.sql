alter table t_remote_control add remote_started_count smallint(1) NOT NULL DEFAULT 0 COMMENT '已经做过的远程启动发动机次数';