CREATE TABLE role(
id varchar(255) NOT NULL COMMENT '��ʶ��',
name varchar(255) NOT NULL COMMENT '����',
description varchar(255) NOT NULL COMMENT '����',
level int(11) NOT NULL DEFAULT '1' COMMENT '�ȼ�(����)',
PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;