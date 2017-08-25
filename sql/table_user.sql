CREATE TABLE `user` (
  `id` varchar(255) NOT NULL COMMENT '��ʶ��',
  `name` varchar(255) NOT NULL COMMENT '�ǳ�',
  `phone` varchar(11) NOT NULL COMMENT '�ֻ�����',
  `password` varchar(32) NOT NULL COMMENT '����',
  `gender` tinyint(1) NOT NULL COMMENT '�Ա�',
  `email` varchar(255) NOT NULL COMMENT '����',
  `regTime` datetime NOT NULL COMMENT 'ע��ʱ��',
  `verify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '�Ƿ񼤻�(0��û�У�1����)',
  `visible` tinyint(1) NOT NULL DEFAULT '1' COMMENT '�Ƿ�ɼ�(0�����ɼ���1���ɼ�)',
  `isTeacher` tinyint(1) NOT NULL COMMENT '�Ƿ��ʦ(0�����ǣ�1����)',
  `roleId` varchar(255) NOT NULL COMMENT '��ɫId',
  PRIMARY KEY (`id`),
  KEY `user_ibfk_1` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
