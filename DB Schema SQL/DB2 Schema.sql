--==============================================================
-- DBMS name:      IBM DB2 UDB 9.7 Common Server
-- Created on:     2022/10/13 下午 06:14:08
--==============================================================


alter table TB_FUNCTIONS
   drop foreign key FK_TB_0004;

alter table TB_FUNCTIONS
   drop foreign key FK_TB_0010;

alter table TB_FUNCTIONS_ITEMS
   drop foreign key FK_TB_0002;

alter table TB_GROUPS
   drop foreign key FK_TB_0011;

alter table TB_GROUPS_FUNCTIONS
   drop foreign key FK_TB_0001;

alter table TB_GROUPS_FUNCTIONS
   drop foreign key FK_TB_0003;

alter table TB_GROUPS_FUNCTIONS
   drop foreign key FK_TB_0007;

alter table TB_MODULES
   drop foreign key FK_TB_0009;

alter table TB_SYSTEMS
   drop foreign key FK_TB_0008;

alter table TB_USERS_GROUPS
   drop foreign key FK_TB_0005;

alter table TB_USERS_GROUPS
   drop foreign key FK_TB_0006;

drop table TB_CATEGORIES;

drop table TB_FUNCTIONS;

drop table TB_FUNCTIONS_ITEMS;

drop table TB_GROUPS;

drop table TB_GROUPS_FUNCTIONS;

drop table TB_MODULES;

drop table TB_SYSTEMS;

drop table TB_USERS;

drop table TB_USERS_GROUPS;

--==============================================================
-- Table: TB_CATEGORIES
--==============================================================
create table TB_CATEGORIES
(
   ID                   VARCHAR(36)            not null,
   CODE                 VARCHAR(20)            not null,
   "NAME"               VARCHAR(50),
   SEQUENCE             SMALLINT,
   constraint TB_CATEGORIES_PK primary key (ID),
   constraint TB_CATEGORIES_UK1 unique (CODE)
);

comment on table TB_CATEGORIES is
'CATEGORIES Table';

comment on column TB_CATEGORIES.ID is
'ID';

comment on column TB_CATEGORIES.CODE is
'Code';

comment on column TB_CATEGORIES."NAME" is
'Name';

comment on column TB_CATEGORIES.SEQUENCE is
'Sort sequence';

--==============================================================
-- Table: TB_FUNCTIONS
--==============================================================
create table TB_FUNCTIONS
(
   ID                   VARCHAR(36)            not null,
   TB_SYSTEMS_ID        VARCHAR(36),
   TB_MODULES_ID        VARCHAR(36),
   "NAME"               VARCHAR(40)            not null,
   OUTCOME              VARCHAR(200),
   CREATE_DATE          DATE                   not null default current date,
   UPDATE_DATE          DATE,
   CODE                 VARCHAR(40)            not null,
   SEQUENCE             SMALLINT,
   SHOWED               SMALLINT               default 1,
   constraint TBCL_FUNCTIONS_PK primary key (ID),
   constraint TBCL_FUNCTIONS_UK1 unique ("NAME")
);

comment on table TB_FUNCTIONS is
'Function table';

comment on column TB_FUNCTIONS.ID is
'ID';

comment on column TB_FUNCTIONS.TB_SYSTEMS_ID is
'System''s ID';

comment on column TB_FUNCTIONS.TB_MODULES_ID is
'Module''s ID';

comment on column TB_FUNCTIONS."NAME" is
'Name';

comment on column TB_FUNCTIONS.OUTCOME is
'Outcome';

comment on column TB_FUNCTIONS.CREATE_DATE is
'System create date time';

comment on column TB_FUNCTIONS.UPDATE_DATE is
'System update date time';

comment on column TB_FUNCTIONS.CODE is
'Code';

comment on column TB_FUNCTIONS.SEQUENCE is
'Sort sequence';

comment on column TB_FUNCTIONS.SHOWED is
'Show in menu';

--==============================================================
-- Table: TB_FUNCTIONS_ITEMS
--==============================================================
create table TB_FUNCTIONS_ITEMS
(
   ID                   VARCHAR(36)            not null,
   TB_FUNCTIONS_ID      VARCHAR(36)            not null,
   "NAME"               VARCHAR(50)            not null,
   CODE                 VARCHAR(20)            not null,
   URL                  VARCHAR(200),
   constraint TBCL_FUNCTIONS_ITEMS_PK primary key (ID)
);

comment on table TB_FUNCTIONS_ITEMS is
'Function item table';

comment on column TB_FUNCTIONS_ITEMS.ID is
'ID';

comment on column TB_FUNCTIONS_ITEMS.TB_FUNCTIONS_ID is
'Function''s ID';

comment on column TB_FUNCTIONS_ITEMS."NAME" is
'Name';

comment on column TB_FUNCTIONS_ITEMS.CODE is
'Code';

comment on column TB_FUNCTIONS_ITEMS.URL is
'URL';

--==============================================================
-- Table: TB_GROUPS
--==============================================================
create table TB_GROUPS
(
   ID                   VARCHAR(36)            not null,
   TB_SYSTEMS_ID        VARCHAR(36),
   "NAME"               VARCHAR(40)            not null,
   CODE                 VARCHAR(20)            not null,
   ENABLED              NUMERIC(1,0)           not null default 1,
   CREATE_DATE          DATE                   not null default current date,
   UPDATE_DATE          DATE,
   constraint TBCL_GROUPS_PK primary key (ID)
);

comment on table TB_GROUPS is
'Group table';

comment on column TB_GROUPS.ID is
'ID';

comment on column TB_GROUPS.TB_SYSTEMS_ID is
'System''s ID';

comment on column TB_GROUPS."NAME" is
'Name';

comment on column TB_GROUPS.CODE is
'Code';

comment on column TB_GROUPS.ENABLED is
'Is enable';

comment on column TB_GROUPS.CREATE_DATE is
'System crate data time';

comment on column TB_GROUPS.UPDATE_DATE is
'System update data time';

--==============================================================
-- Table: TB_GROUPS_FUNCTIONS
--==============================================================
create table TB_GROUPS_FUNCTIONS
(
   ID                   VARCHAR(36)            not null,
   TB_GROUPS_ID         VARCHAR(36)            not null,
   TB_FUNCTIONS_ID      VARCHAR(36)            not null,
   TB_FUNCTIONS_ITEMS_ID VARCHAR(36)            not null,
   constraint TBCL_GROUPS_FUNCTIONS_PK primary key (ID),
   constraint TB_GROUPS_FUNCTIONS_UK1 unique (TB_GROUPS_ID, TB_FUNCTIONS_ID, TB_FUNCTIONS_ITEMS_ID)
);

comment on table TB_GROUPS_FUNCTIONS is
'Group, function and functionItem join table';

comment on column TB_GROUPS_FUNCTIONS.ID is
'ID';

comment on column TB_GROUPS_FUNCTIONS.TB_GROUPS_ID is
'Group''s ID';

comment on column TB_GROUPS_FUNCTIONS.TB_FUNCTIONS_ID is
'Function''s ID';

comment on column TB_GROUPS_FUNCTIONS.TB_FUNCTIONS_ITEMS_ID is
'FunctionItem''s ID';

--==============================================================
-- Table: TB_MODULES
--==============================================================
create table TB_MODULES
(
   ID                   VARCHAR(36)            not null,
   TB_SYSTEMS_ID        VARCHAR(36),
   "NAME"               VARCHAR(50)            not null,
   CODE                 VARCHAR(20)            not null,
   SEQUENCE             SMALLINT,
   SHOWED               SMALLINT               default 1,
   constraint TB_MODULES_PK primary key (ID)
);

comment on table TB_MODULES is
'Module table';

comment on column TB_MODULES.ID is
'ID';

comment on column TB_MODULES.TB_SYSTEMS_ID is
'System''s ID';

comment on column TB_MODULES."NAME" is
'Name';

comment on column TB_MODULES.CODE is
'Code';

comment on column TB_MODULES.SEQUENCE is
'Sort sequence';

comment on column TB_MODULES.SHOWED is
'Show in menu';

--==============================================================
-- Table: TB_SYSTEMS
--==============================================================
create table TB_SYSTEMS
(
   ID                   VARCHAR(36)            not null,
   TB_CATEGORIES_ID     VARCHAR(36),
   CODE                 VARCHAR(20)            not null,
   "NAME"               VARCHAR(50),
   SEQUENCE             SMALLINT,
   URL                  VARCHAR(250),
   OPEN_WINDOW          SMALLINT               default 0,
   SHOWED               SMALLINT               default 1,
   constraint TB_SYSTEMS_PK primary key (ID),
   constraint TB_SYSTEMS_UK1 unique (CODE)
);

comment on table TB_SYSTEMS is
'系統資料表';

comment on column TB_SYSTEMS.ID is
'ID';

comment on column TB_SYSTEMS.TB_CATEGORIES_ID is
'Categories''s ID';

comment on column TB_SYSTEMS.CODE is
'Code';

comment on column TB_SYSTEMS."NAME" is
'Name';

comment on column TB_SYSTEMS.SEQUENCE is
'Sort sequence';

comment on column TB_SYSTEMS.URL is
'Url';

comment on column TB_SYSTEMS.OPEN_WINDOW is
'Open new windows';

comment on column TB_SYSTEMS.SHOWED is
'Show in menu';

--==============================================================
-- Table: TB_USERS
--==============================================================
create table TB_USERS
(
   ID                   VARCHAR(36)            not null,
   "NAME"               VARCHAR(40)            not null,
   ACCOUNT              VARCHAR(40)            not null,
   PASSWORD             VARCHAR(255),
   ENABLED              NUMERIC(1,0)           not null default 1,
   EMAIL                VARCHAR(40)            not null,
   CREATE_DATE          DATE                   not null default current date,
   UPDATE_DATE          DATE,
   constraint TBCL_USERS_PK primary key (ID),
   constraint TBCL_USERS_UK1 unique (ACCOUNT)
);

comment on table TB_USERS is
'User Table';

comment on column TB_USERS.ID is
'ID';

comment on column TB_USERS."NAME" is
'Name';

comment on column TB_USERS.ACCOUNT is
'Account';

comment on column TB_USERS.PASSWORD is
'Password';

comment on column TB_USERS.ENABLED is
'Is enable';

comment on column TB_USERS.EMAIL is
'EMAIL';

comment on column TB_USERS.CREATE_DATE is
'System create data time';

comment on column TB_USERS.UPDATE_DATE is
'System update data time';

--==============================================================
-- Table: TB_USERS_GROUPS
--==============================================================
create table TB_USERS_GROUPS
(
   TB_USERS_ID          VARCHAR(36)            not null,
   TB_GROUPS_ID         VARCHAR(36)            not null,
   constraint P_TB_USERS_GROUPS_ primary key (TB_USERS_ID, TB_GROUPS_ID)
);

comment on table TB_USERS_GROUPS is
'User and group join table';

comment on column TB_USERS_GROUPS.TB_USERS_ID is
'User''s ID';

comment on column TB_USERS_GROUPS.TB_GROUPS_ID is
'Group''s ID';

alter table TB_FUNCTIONS
   add constraint FK_TB_0004 foreign key (TB_MODULES_ID)
      references TB_MODULES (ID)
      on delete restrict on update restrict;

alter table TB_FUNCTIONS
   add constraint FK_TB_0010 foreign key (TB_SYSTEMS_ID)
      references TB_SYSTEMS (ID)
      on delete restrict on update restrict;

alter table TB_FUNCTIONS_ITEMS
   add constraint FK_TB_0002 foreign key (TB_FUNCTIONS_ID)
      references TB_FUNCTIONS (ID)
      on delete restrict on update restrict;

alter table TB_GROUPS
   add constraint FK_TB_0011 foreign key (TB_SYSTEMS_ID)
      references TB_SYSTEMS (ID)
      on delete restrict on update restrict;

alter table TB_GROUPS_FUNCTIONS
   add constraint FK_TB_0001 foreign key (TB_GROUPS_ID)
      references TB_GROUPS (ID)
      on delete no action on update restrict;

alter table TB_GROUPS_FUNCTIONS
   add constraint FK_TB_0003 foreign key (TB_FUNCTIONS_ID)
      references TB_FUNCTIONS (ID)
      on delete no action on update restrict;

alter table TB_GROUPS_FUNCTIONS
   add constraint FK_TB_0007 foreign key (TB_FUNCTIONS_ITEMS_ID)
      references TB_FUNCTIONS_ITEMS (ID)
      on delete restrict on update restrict;

alter table TB_MODULES
   add constraint FK_TB_0009 foreign key (TB_SYSTEMS_ID)
      references TB_SYSTEMS (ID)
      on delete restrict on update restrict;

alter table TB_SYSTEMS
   add constraint FK_TB_0008 foreign key (TB_CATEGORIES_ID)
      references TB_CATEGORIES (ID)
      on delete restrict on update restrict;

alter table TB_USERS_GROUPS
   add constraint FK_TB_0005 foreign key (TB_GROUPS_ID)
      references TB_GROUPS (ID)
      on delete restrict on update restrict;

alter table TB_USERS_GROUPS
   add constraint FK_TB_0006 foreign key (TB_USERS_ID)
      references TB_USERS (ID)
      on delete restrict on update restrict;

