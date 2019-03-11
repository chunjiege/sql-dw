CREATE TABLE global_user
(
  id         BIGINT AUTO_INCREMENT
  COMMENT '用户 ID'
    PRIMARY KEY,
  guid      VARCHAR(64)                                   NOT NULL
  COMMENT '用户全局 ID',
  account   VARCHAR(20)                                   NOT NULL
  COMMENT '账号',
  password  VARCHAR(128)                                  NOT NULL
  COMMENT '密码',
  locked    INYINT(1) DEFAULT '0'                        NULL
  COMMENT '用户锁定',
  enabled   TINYINT(1) DEFAULT '1'                        NOT NULL,
  expired   TINYINT(1) DEFAULT '0'                        NULL
  COMMENT '用户过期',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP           NOT NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP           NOT NULL,
  CONSTRAINT user_guid_index
  UNIQUE (guid)
)
  ENGINE = InnoDB;

CREATE TABLE user
(
  id         BIGINT AUTO_INCREMENT
  COMMENT '用户 ID'
  PRIMARY KEY,
  guid       VARCHAR(64)                                   NOT NULL
  COMMENT '用户全局 ID',
  username   VARCHAR(20)                                   NOT NULL
  COMMENT '姓名',
  mobile_phone VARCHAR(11)                                 NOT NULL
  COMMENT '移动电话',

  extension VARCHAR (1000) DEFAULT '0'                     NULL
  COMMENT '扩展字段',
);