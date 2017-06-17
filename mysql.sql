/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017-06-06 11:44:22                          */
/*==============================================================*/


drop table if exists System_Department;

drop table if exists System_Limit_Set;

drop table if exists System_Menu;

drop table if exists System_Option_Data;

drop table if exists System_Option;

drop table if exists System_User_Limit;

drop table if exists System_User;

drop table if exists System_auto_id;

drop table if exists web_Category;

drop table if exists web_collection;

drop table if exists web_likes;

drop table if exists web_links;

drop table if exists web_post;

drop table if exists web_reply;

drop table if exists web_user;

/*==============================================================*/
/* Table: System_Department                                     */
/*==============================================================*/
create table System_Department
(
   SystemDepartmentId   int not null comment '����ID',
   DepartmentName       varchar(50) comment '��������',
   ParentId             int comment '����ID',
   SortId               int comment '����',
   UseFlag              char(1) comment '״̬',
   TrUser               varchar(50) comment '�޸���',
   TrTime               datetime comment '�޸�ʱ��',
   CrUser               varchar(50) comment '������',
   CrTime               datetime comment '����ʱ��',
   primary key (SystemDepartmentId)
);

alter table System_Department comment 'ϵͳ����';

/*==============================================================*/
/* Table: System_Limit_Set                                      */
/*==============================================================*/
create table System_Limit_Set
(
   SystemLimitSetId     int not null comment 'Ȩ������ID',
   LimitTableName       varchar(50) comment 'Ȩ�ޱ���',
   LimtSetType          varchar(50) comment 'Ȩ������',
   LimtSetTitle         varchar(50) comment 'ѡ�����',
   TrUser               varchar(50) comment '�޸���',
   TrTime               datetime comment '�޸�ʱ��',
   CrUser               varchar(50) comment '������',
   CrTime               datetime comment '����ʱ��',
   primary key (SystemLimitSetId)
);

alter table System_Limit_Set comment 'ϵͳȨ������';

/*==============================================================*/
/* Table: System_Menu                                           */
/*==============================================================*/
create table System_Menu
(
   SystemMenuId         int not null comment '�˵�ID',
   MenuName             varchar(50) comment '�˵�����',
   ParentId             int comment '����ID',
   Controller           varchar(50) comment '������',
   Action               varchar(50) comment '��������',
   ClassName            varchar(50) comment '��ʽ��',
   SortId               int comment '����',
   UseFlag              char(1) comment '״̬',
   TrUser               varchar(50) comment '�޸���',
   TrTime               datetime comment '�޸�ʱ��',
   CrUser               varchar(50) comment '������',
   CrTime               datetime comment '����ʱ��',
   primary key (SystemMenuId)
);

alter table System_Menu comment 'ϵͳ�˵�';

/*==============================================================*/
/* Table: System_Option                                         */
/*==============================================================*/
create table System_Option
(
   SystemOptionId       int not null comment '�Զ���ID',
   OptionName           varchar(50) comment '�Զ�������',
   FieldName            varchar(50) comment '�ֶ�����',
   SortId               int comment '����',
   UseFlag              char(1) comment '״̬',
   TrUser               varchar(50) comment '�޸���',
   TrTime               datetime comment '�޸�ʱ��',
   CrUser               varchar(50) comment '������',
   CrTime               datetime comment '����ʱ��',
   primary key (SystemOptionId)
);

alter table System_Option comment 'ϵͳ�Զ���';

/*==============================================================*/
/* Table: System_Option_Data                                    */
/*==============================================================*/
create table System_Option_Data
(
   SystemOptionDataId   int not null comment '�Զ���ID',
   SystemOptionId       int comment '�Զ���ID2',
   OptionValue          varchar(50) comment 'ʵ��ֵ',
   OptionText           varchar(50) comment '��ʾֵ',
   OptionColor          varchar(50) comment '��ɫ',
   SortId               int comment '����',
   UseFlag              char(1) comment '״̬',
   TrUser               varchar(50) comment '�޸���',
   TrTime               datetime comment '�޸�ʱ��',
   CrUser               varchar(50) comment '������',
   CrTime               datetime comment '����ʱ��',
   primary key (SystemOptionDataId)
);

alter table System_Option_Data comment 'ϵͳ�Զ�������';

/*==============================================================*/
/* Table: System_User                                           */
/*==============================================================*/
create table System_User
(
   SystemUserId         int not null comment '�û�ID',
   SystemUserName       varchar(50) comment '�û�����',
   LoginAccount         varchar(50) comment '��¼�ʺ�',
   LoginPassword        varchar(50) comment '��¼����',
   SystemDepartmentId   int comment '����ID',
   UseFlag              char(1) comment '״̬',
   TrUser               varchar(50) comment '�޸���',
   TrTime               datetime comment '�޸�ʱ��',
   CrUser               varchar(50) comment '������',
   CrTime               datetime comment '����ʱ��',
   primary key (SystemUserId)
);

alter table System_User comment 'ϵͳ�û�';

/*==============================================================*/
/* Table: System_User_Limit                                     */
/*==============================================================*/
create table System_User_Limit
(
   SystemUserLimitId    int not null comment 'Ȩ��ID',
   SystemUserId         int comment '�û�ID',
   LimitTableId         int comment 'Ȩ�ޱ�ID',
   LimitTableName       varchar(50) comment 'Ȩ�ޱ���',
   CrUser               varchar(50) comment '������',
   CrTime               datetime comment '����ʱ��',
   primary key (SystemUserLimitId)
);

alter table System_User_Limit comment 'ϵͳȨ��';

/*==============================================================*/
/* Table: System_auto_id                                        */
/*==============================================================*/
create table System_auto_id
(
   idName               varchar(50) comment '����',
   id                   bigint comment '����ֵ'
);

alter table System_auto_id comment '��������';

/*==============================================================*/
/* Table: web_Category                                          */
/*==============================================================*/
create table web_Category
(
   CategoryId           int not null comment '����ID',
   CategoryName         varchar(50) comment '��������',
   ParentId             int comment '����ID',
   SortId               int comment '����',
   UseFlag              char(1) comment '״̬',
   TrUser               varchar(50) comment '�޸���',
   TrTime               datetime comment '�޸�ʱ��',
   CrUser               varchar(50) comment '������',
   CrTime               datetime comment '����ʱ��',
   primary key (CategoryId)
);

alter table web_Category comment '���ӷ���';

/*==============================================================*/
/* Table: web_collection                                        */
/*==============================================================*/
create table web_collection
(
   CollectionId         bigint not null comment '�ղ�ID',
   PostId               bigint comment '����ID',
   UserId               int comment '�û�ID',
   AddTime              datetime comment '�ղ�ʱ��',
   primary key (CollectionId)
);

alter table web_collection comment '�ղر�';

/*==============================================================*/
/* Table: web_likes                                             */
/*==============================================================*/
create table web_likes
(
   LikeId               bigint not null comment '����ID',
   PostId               bigint comment '����ID',
   ReplyId              bigint comment '�ظ�ID',
   UserId               int comment '�û�ID',
   LikeTime             datetime comment '����ʱ��',
   primary key (LikeId)
);

alter table web_likes comment '���ޱ�';

/*==============================================================*/
/* Table: web_links                                             */
/*==============================================================*/
create table web_links
(
   LinkId               int not null comment '����ID',
   LinkName             varchar(50) comment '��������',
   LinkUrl              varchar(100) comment 'URL����',
   SortId               int comment '����',
   LinkStatus           char(1) comment '״̬',
   TrUser               varchar(50) comment '�޸���',
   TrTime               datetime comment '�޸�ʱ��',
   CrUser               varchar(50) comment '������',
   CrTime               datetime comment '����ʱ��',
   primary key (LinkId)
);

alter table web_links comment '������';

/*==============================================================*/
/* Table: web_post                                              */
/*==============================================================*/
create table web_post
(
   PostId               bigint not null comment '����ID',
   PostTitle            varchar(100) comment '���ӱ���',
   PostContent          text comment '��������',
   CategoryId           int comment '����ID',
   UserId               int comment '�û�ID',
   IsTop                char(1) comment '�Ƿ��ö� 0=��,1=��',
   IsFine               char(1) comment '�Ƿ��� 0=��,1=��',
   IsAdopt              char(1) comment '�Ƿ���� 0=��,1=��',
   ViewCount            int comment '�������',
   ReplyCount           int comment '�ظ�����',
   LikeCount            int comment '������',
   SortId               int comment '����',
   PostStatus           char(1) comment '����״̬ 0=����,1=����',
   UpdateTime           datetime comment '�޸�ʱ��',
   PostTime             datetime comment '����ʱ��',
   ReplyTime            datetime comment '�ظ�ʱ��',
   LikeTime             datetime comment '����ʱ��',
   primary key (PostId)
);

alter table web_post comment '���ӱ�';

/*==============================================================*/
/* Index: IX_IsTop_PostTime                                     */
/*==============================================================*/
create index IX_IsTop_PostTime on web_post
(
   IsTop,
   PostTime
);

/*==============================================================*/
/* Table: web_reply                                             */
/*==============================================================*/
create table web_reply
(
   ReplyId              bigint not null comment '�ظ�ID',
   ReplyContent         text comment '�ظ�����',
   PostId               bigint comment '����ID',
   UserId               int comment '�û�ID',
   ToReplyId            bigint comment '���ظ�ID',
   LikeCount            int comment '������',
   IsAdopt              char(1) comment '�Ƿ���� 0=��,1=��',
   ReplyStatus          char(1) comment '�ظ�״̬ 0=����,1=����',
   UpdateTime           datetime comment '�޸�ʱ��',
   ReplyTime            datetime comment '�ظ�ʱ��',
   primary key (ReplyId)
);

alter table web_reply comment '���ӻظ���';

/*==============================================================*/
/* Table: web_user                                              */
/*==============================================================*/
create table web_user
(
   UserId               int not null comment '�û�ID',
   Email                varchar(50) comment 'Email',
   NickName             varchar(50) comment '�س�',
   Mobile               varchar(11) comment '�ֻ���',
   Password             varchar(50) comment '����',
   Gender               varchar(10) comment '�Ա�',
   AvatarUrl            varchar(150) comment 'ͷ��',
   UserSign             varchar(200) comment '����ǩ��',
   Country              varchar(50) comment '����',
   Province             varchar(50) comment 'ʡ��',
   City                 varchar(50) comment '����',
   District             varchar(50) comment '����',
   Address              varchar(150) comment '��ַ',
   EmailStatus          char(1) comment '�ʼ���֤',
   MobileStatus         char(1) comment '�ֻ���֤',
   UserStatus           char(1) comment '�û�״̬',
   Points               int comment '�û�����',
   PostCount            int comment '��������',
   ReplyCount           int comment '�ظ�����',
   IsAdmin              char(1) comment '�Ƿ����Ա',
   LoginCount           int comment '��¼����',
   LoginTime            datetime comment '�����¼ʱ��',
   OnlineTime           datetime comment '�������ʱ��',
   UpdateTime           datetime comment '�޸�ʱ��',
   RegisterTime         datetime comment 'ע��ʱ��',
   LoginIP              varchar(20) comment '�����¼IP',
   RegisterIP           varchar(20) comment 'ע��IP',
   primary key (UserId)
);

alter table web_user comment '�û���';

/*==============================================================*/
/* Index: IX_Email                                              */
/*==============================================================*/
create unique index IX_Email on web_user
(
   Email
);

/*==============================================================*/
/* Index: IX_NickName                                           */
/*==============================================================*/
create unique index IX_NickName on web_user
(
   NickName
);

/*==============================================================*/
/* Index: IX_Mobile                                             */
/*==============================================================*/
create unique index IX_Mobile on web_user
(
   Mobile
);

alter table System_Option_Data add constraint FK_R2 foreign key (SystemOptionId)
      references System_Option (SystemOptionId);

alter table System_User_Limit add constraint FK_R1 foreign key (SystemUserId)
      references System_User (SystemUserId);

DROP procedure IF EXISTS `sp_get_auto_id`;

/* ���´洢����ֻ֧��mysql5.5���ϰ汾,�����5.2�汾,��ɾ�� DELIMITER �� $$ ��ִ��        */
DELIMITER $$
CREATE PROCEDURE `sp_get_auto_id` (idname_in varchar(20))
BEGIN
 declare oldid bigint;
    declare id_out bigint;
	start transaction;
	select id into oldid from system_auto_id where idname=idname_in for update;
	if oldid is NULL then
		insert into system_auto_id(idname,id) value(idname_in, 1);
		set id_out=1;
	else
		update system_auto_id set id=id+1 where idname=idname_in;
		set id_out=oldid+1;
	end if;
    select id_out as 'id'; 
	commit;
END$$

DELIMITER ;