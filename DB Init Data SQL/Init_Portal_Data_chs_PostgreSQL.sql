INSERT INTO TB_CATEGORIES (ID, NAME, CODE, SEQUENCE) VALUES( '10000007-0000-0000-0000-000000000001', 'Demo', 'DEMO', 0);
INSERT INTO TB_CATEGORIES (ID, NAME, CODE, SEQUENCE) VALUES( '10000007-0000-0000-0000-000000000002', '站台管理', 'ADMIN', 1);

INSERT INTO TB_SYSTEMS (ID, NAME, CODE, SEQUENCE, URL, OPEN_WINDOW, TB_CATEGORIES_ID) VALUES( '10000008-0000-0000-0000-000000000001', 'Yahoo', 'YAHOO', 0, 'https://www.yahoo.com', 1, '10000007-0000-0000-0000-000000000001');
INSERT INTO TB_SYSTEMS (ID, NAME, CODE, SEQUENCE, URL, OPEN_WINDOW, TB_CATEGORIES_ID) VALUES( '10000008-0000-0000-0000-000000000002', 'Google', 'GOOGLE', 1, 'https://www.google.com', 1, '10000007-0000-0000-0000-000000000001');
INSERT INTO TB_SYSTEMS (ID, NAME, CODE, SEQUENCE, URL, OPEN_WINDOW, TB_CATEGORIES_ID) VALUES( '10000008-0000-0000-0000-000000000003', '管理', 'EASPortalM', 2, 'https://localhost:7443/EASPortalM', 0, '10000007-0000-0000-0000-000000000002');
INSERT INTO TB_SYSTEMS (ID, NAME, CODE, SEQUENCE, URL, OPEN_WINDOW, TB_CATEGORIES_ID) VALUES( '10000008-0000-0000-0000-000000000004', 'Java JSF样板系统', 'EASJavaJSFTemplate', 3, 'https://localhost:6443/EASJavaJSFTemplate', 0, '10000007-0000-0000-0000-000000000001');

INSERT INTO TB_GROUPS (ID, NAME, CODE, TB_SYSTEMS_ID) VALUES( '10000005-0000-0000-0000-000000000001', '系统管理', 'MANAGE', '10000008-0000-0000-0000-000000000003');
INSERT INTO TB_GROUPS (ID, NAME, CODE, TB_SYSTEMS_ID) VALUES( '10000005-0000-0000-0000-000000000002', 'Yahoo群组', 'YahooGroup', '10000008-0000-0000-0000-000000000001');
INSERT INTO TB_GROUPS (ID, NAME, CODE, TB_SYSTEMS_ID) VALUES( '10000005-0000-0000-0000-000000000003', 'Google群组', 'GoogleGroup', '10000008-0000-0000-0000-000000000002');
INSERT INTO TB_GROUPS (ID, NAME, CODE, TB_SYSTEMS_ID) VALUES( '10000005-0000-0000-0000-000000000004', '展示群组', 'DemoGroup', '10000008-0000-0000-0000-000000000004');

INSERT INTO TB_USERS (ID, NAME, ACCOUNT, PASSWORD, ENABLED, EMAIL) VALUES( '10000006-0000-0000-0000-000000000001', 'ADMIN', 'ADMIN',  '',true, 'abc@sample.com');

INSERT INTO TB_USERS_GROUPS (TB_USERS_ID, TB_GROUPS_ID) VALUES( '10000006-0000-0000-0000-000000000001', '10000005-0000-0000-0000-000000000001');
INSERT INTO TB_USERS_GROUPS (TB_USERS_ID, TB_GROUPS_ID) VALUES( '10000006-0000-0000-0000-000000000001', '10000005-0000-0000-0000-000000000002');
INSERT INTO TB_USERS_GROUPS (TB_USERS_ID, TB_GROUPS_ID) VALUES( '10000006-0000-0000-0000-000000000001', '10000005-0000-0000-0000-000000000003');
INSERT INTO TB_USERS_GROUPS (TB_USERS_ID, TB_GROUPS_ID) VALUES( '10000006-0000-0000-0000-000000000001', '10000005-0000-0000-0000-000000000004');

INSERT INTO TB_MODULES (ID, NAME, CODE, SEQUENCE, TB_SYSTEMS_ID) VALUES( '10000003-0000-0000-0000-000000000001', '系统管理模块', 'SYSTEM',1, '10000008-0000-0000-0000-000000000003');
INSERT INTO TB_MODULES (ID, NAME, CODE, SEQUENCE, TB_SYSTEMS_ID) VALUES( '10000003-0000-0000-0000-000000000002', '展示模块', 'DEMO',1, '10000008-0000-0000-0000-000000000004');

INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE) VALUES( '10000002-0000-0000-0000-000000000001', '根目录', 'ROOT', '', 0);
INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE, TB_SYSTEMS_ID, TB_MODULES_ID) VALUES( '10000002-0000-0000-0000-000000000002', '系统功能项目设定', 'functionItem', 'functionItem', 3, '10000008-0000-0000-0000-000000000003', '10000003-0000-0000-0000-000000000001');
INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE, TB_SYSTEMS_ID, TB_MODULES_ID) VALUES( '10000002-0000-0000-0000-000000000003', '系统功能设定', 'function', 'function', 4, '10000008-0000-0000-0000-000000000003', '10000003-0000-0000-0000-000000000001');
INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE, TB_SYSTEMS_ID, TB_MODULES_ID) VALUES( '10000002-0000-0000-0000-000000000004', '系统群组设定', 'group', 'group', 5, '10000008-0000-0000-0000-000000000003', '10000003-0000-0000-0000-000000000001');
INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE, TB_SYSTEMS_ID, TB_MODULES_ID) VALUES( '10000002-0000-0000-0000-000000000005', '系统账号设定', 'user', 'user', 6, '10000008-0000-0000-0000-000000000003', '10000003-0000-0000-0000-000000000001');
INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE, TB_SYSTEMS_ID, TB_MODULES_ID) VALUES( '10000002-0000-0000-0000-000000000006', '系统模块设定', 'module', 'module', 7, '10000008-0000-0000-0000-000000000003', '10000003-0000-0000-0000-000000000001');
INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE, TB_SYSTEMS_ID, TB_MODULES_ID) VALUES( '10000002-0000-0000-0000-000000000007', '系统类别设定', 'category', 'category', 1, '10000008-0000-0000-0000-000000000003', '10000003-0000-0000-0000-000000000001');
INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE, TB_SYSTEMS_ID, TB_MODULES_ID) VALUES( '10000002-0000-0000-0000-000000000008', '系统设定', 'system', 'system', 2, '10000008-0000-0000-0000-000000000003', '10000003-0000-0000-0000-000000000001');
INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE, TB_SYSTEMS_ID, TB_MODULES_ID) VALUES( '10000002-0000-0000-0000-000000000009', 'Master', 'master', 'master', 1, '10000008-0000-0000-0000-000000000004', '10000003-0000-0000-0000-000000000002');
INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE, TB_SYSTEMS_ID, TB_MODULES_ID) VALUES( '10000002-0000-0000-0000-000000000010', 'Detail', 'detail', 'detail', 2, '10000008-0000-0000-0000-000000000004', '10000003-0000-0000-0000-000000000002');
INSERT INTO TB_FUNCTIONS (ID, NAME, CODE, OUTCOME, SEQUENCE, TB_SYSTEMS_ID, TB_MODULES_ID) VALUES( '10000002-0000-0000-0000-000000000011', 'Many1', 'many1', 'many1', 3, '10000008-0000-0000-0000-000000000004', '10000003-0000-0000-0000-000000000002');


INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000000', 'BackOffice', 'default', '/default.jsf', '10000002-0000-0000-0000-000000000001');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000001', '查询功能项目', 'query', '/kernel/item/readItem.jsf', '10000002-0000-0000-0000-000000000002');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000002', '新增功能项目', 'create', '/kernel/item/createItem.jsf', '10000002-0000-0000-0000-000000000002');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000003', '修改功能项目', 'update', '/kernel/item/updateItem.jsf', '10000002-0000-0000-0000-000000000002');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000004', '删除功能项目', 'delete', '/kernel/item/updateItem.jsf', '10000002-0000-0000-0000-000000000002');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000005', '查询功能', 'query', '/kernel/function/readFunction.jsf', '10000002-0000-0000-0000-000000000003');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000006', '新增功能', 'create', '/kernel/function/createFunction.jsf', '10000002-0000-0000-0000-000000000003');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000007', '修改功能', 'update', '/kernel/function/updateFunction.jsf', '10000002-0000-0000-0000-000000000003');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000008', '删除功能', 'delete', '/kernel/function/updateFunction.jsf', '10000002-0000-0000-0000-000000000003');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000009', '查询群组', 'query', '/kernel/group/readGroup.jsf', '10000002-0000-0000-0000-000000000004');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000010', '新增群组', 'create', '/kernel/group/createGroup.jsf', '10000002-0000-0000-0000-000000000004');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000011', '修改群组', 'update', '/kernel/group/updateGroup.jsf', '10000002-0000-0000-0000-000000000004');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000012', '删除群组', 'delete', '/kernel/group/updateGroup.jsf', '10000002-0000-0000-0000-000000000004');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000013', '查询使用者', 'query', '/kernel/user/readUser.jsf', '10000002-0000-0000-0000-000000000005');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000014', '新增使用者', 'create', '/kernel/user/createUser.jsf', '10000002-0000-0000-0000-000000000005');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000015', '修改使用者', 'update', '/kernel/user/updateUser.jsf', '10000002-0000-0000-0000-000000000005');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000016', '删除使用者', 'delete', '/kernel/user/updateUser.jsf', '10000002-0000-0000-0000-000000000005');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000017', '查询模块', 'query', '/kernel/module/readModule.jsf', '10000002-0000-0000-0000-000000000006');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000018', '新增模块', 'create', '/kernel/module/createModule.jsf', '10000002-0000-0000-0000-000000000006');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000019', '修改模块', 'update', '/kernel/module/updateModule.jsf', '10000002-0000-0000-0000-000000000006');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000020', '删除模块', 'delete', '/kernel/module/updateModule.jsf', '10000002-0000-0000-0000-000000000006');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000021', '查询分类', 'query', '/kernel/category/readCategory.jsf', '10000002-0000-0000-0000-000000000007');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000022', '新增分类', 'create', '/kernel/category/createCategory.jsf', '10000002-0000-0000-0000-000000000007');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000023', '修改分类', 'update', '/kernel/category/updateCategory.jsf', '10000002-0000-0000-0000-000000000007');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000024', '删除分类', 'delete', '/kernel/category/updateCategory.jsf', '10000002-0000-0000-0000-000000000007');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000025', '查询系统', 'query', '/kernel/system/readSystem.jsf', '10000002-0000-0000-0000-000000000008');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000026', '新增系统', 'create', '/kernel/system/createSystem.jsf', '10000002-0000-0000-0000-000000000008');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000027', '修改系统', 'update', '/kernel/system/updateSystem.jsf', '10000002-0000-0000-0000-000000000008');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000028', '删除系统', 'delete', '/kernel/system/updateSystem.jsf', '10000002-0000-0000-0000-000000000008');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000029', '查询Master', 'query', '/kernel/master/readMaster.jsf', '10000002-0000-0000-0000-000000000009');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000030', '新增Master', 'create', '/kernel/master/createMaster.jsf', '10000002-0000-0000-0000-000000000009');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000031', '修改Master', 'update', '/kernel/master/updateMaster.jsf', '10000002-0000-0000-0000-000000000009');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000032', '删除Master', 'delete', '/kernel/master/updateMaster.jsf', '10000002-0000-0000-0000-000000000009');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000033', '查询Detail', 'query', '/kernel/detail/readDetail.jsf', '10000002-0000-0000-0000-000000000010');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000034', '新增Detail', 'create', '/kernel/detail/createDetail.jsf', '10000002-0000-0000-0000-000000000010');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000035', '修改Detail', 'update', '/kernel/detail/updateDetail.jsf', '10000002-0000-0000-0000-000000000010');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000036', '删除Detail', 'delete', '/kernel/detail/updateDetail.jsf', '10000002-0000-0000-0000-000000000010');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000037', '查询Many1', 'query', '/kernel/many1/readMany1.jsf', '10000002-0000-0000-0000-000000000011');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000038', '新增Many1', 'create', '/kernel/many1/createMany1.jsf', '10000002-0000-0000-0000-000000000011');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000039', '修改Many1', 'update', '/kernel/many1/updateMany1.jsf', '10000002-0000-0000-0000-000000000011');
INSERT INTO TB_FUNCTIONS_ITEMS (ID, NAME, CODE, URL, TB_FUNCTIONS_ID) VALUES( '10000001-0000-0000-0000-000000000040', '删除Many1', 'delete', '/kernel/many1/updateMany1.jsf', '10000002-0000-0000-0000-000000000011');

INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000001', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000001', '10000001-0000-0000-0000-000000000000');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000002', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000002', '10000001-0000-0000-0000-000000000001');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000003', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000002', '10000001-0000-0000-0000-000000000002');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000004', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000002', '10000001-0000-0000-0000-000000000003');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000005', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000002', '10000001-0000-0000-0000-000000000004');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000006', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000003', '10000001-0000-0000-0000-000000000005');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000007', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000003', '10000001-0000-0000-0000-000000000006');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000008', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000003', '10000001-0000-0000-0000-000000000007');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000009', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000003', '10000001-0000-0000-0000-000000000008');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000010', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000004', '10000001-0000-0000-0000-000000000009');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000011', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000004', '10000001-0000-0000-0000-000000000010');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000012', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000004', '10000001-0000-0000-0000-000000000011');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000013', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000004', '10000001-0000-0000-0000-000000000012');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000014', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000005', '10000001-0000-0000-0000-000000000015');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000015', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000005', '10000001-0000-0000-0000-000000000013');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000016', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000005', '10000001-0000-0000-0000-000000000014');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000017', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000005', '10000001-0000-0000-0000-000000000016');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000018', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000006', '10000001-0000-0000-0000-000000000017');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000019', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000006', '10000001-0000-0000-0000-000000000018');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000020', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000006', '10000001-0000-0000-0000-000000000019');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000021', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000006', '10000001-0000-0000-0000-000000000020');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000022', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000007', '10000001-0000-0000-0000-000000000021');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000023', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000007', '10000001-0000-0000-0000-000000000022');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000024', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000007', '10000001-0000-0000-0000-000000000023');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000025', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000007', '10000001-0000-0000-0000-000000000024');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000026', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000008', '10000001-0000-0000-0000-000000000025');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000027', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000008', '10000001-0000-0000-0000-000000000026');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000028', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000008', '10000001-0000-0000-0000-000000000027');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000029', '10000005-0000-0000-0000-000000000001', '10000002-0000-0000-0000-000000000008', '10000001-0000-0000-0000-000000000028');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000030', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000009', '10000001-0000-0000-0000-000000000029');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000031', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000009', '10000001-0000-0000-0000-000000000030');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000032', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000009', '10000001-0000-0000-0000-000000000031');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000033', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000009', '10000001-0000-0000-0000-000000000032');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000034', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000010', '10000001-0000-0000-0000-000000000033');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000035', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000010', '10000001-0000-0000-0000-000000000034');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000036', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000010', '10000001-0000-0000-0000-000000000035');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000037', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000010', '10000001-0000-0000-0000-000000000036');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000038', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000011', '10000001-0000-0000-0000-000000000037');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000039', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000011', '10000001-0000-0000-0000-000000000038');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000040', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000011', '10000001-0000-0000-0000-000000000039');
INSERT INTO TB_GROUPS_FUNCTIONS (ID, TB_GROUPS_ID, TB_FUNCTIONS_ID,TB_FUNCTIONS_ITEMS_ID) VALUES('10000009-0000-0000-0000-000000000041', '10000005-0000-0000-0000-000000000004', '10000002-0000-0000-0000-000000000011', '10000001-0000-0000-0000-000000000040');