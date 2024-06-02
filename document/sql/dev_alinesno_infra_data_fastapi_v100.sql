/*
 Navicat Premium Data Transfer

 Source Server         : localhost3306
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:3306
 Source Schema         : dev_alinesno_infra_data_fastapi_v100

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 19/05/2024 22:48:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for api_config
-- ----------------------------
DROP TABLE IF EXISTS `api_config`;
CREATE TABLE `api_config`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '名称',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '路径',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '参数',
  `json_param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT 'JSON参数',
  `status` int NULL DEFAULT NULL COMMENT '状态 0-offline;1-online',
  `access` int NULL DEFAULT NULL COMMENT '访问权限 0-private;1-public',
  `group_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分组ID',
  `content_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '内容类型',
  `task` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '任务',
  `datasource_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据库源ID',
  `execute_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '执行器类型',
  `run_sql` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '执行SQL',
  `open_tran` int NULL DEFAULT NULL COMMENT '是否开启事务',
  `use_count` int NULL DEFAULT NULL COMMENT '调用次数',
  `has_delete` int NULL DEFAULT NULL COMMENT '是否删除',
  `delete_manager` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '删除人员',
  `application_id` bigint NULL DEFAULT NULL COMMENT '所属应用',
  `application_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用名称',
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属租户',
  `field_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段权限',
  `department_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门权限',
  `id` bigint NOT NULL COMMENT '主键',
  `field_prop` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段属性',
  `add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `has_status` int NULL DEFAULT NULL COMMENT '状态',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作员',
  `last_update_operator_id` bigint NULL DEFAULT NULL COMMENT '最后更新操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_config
-- ----------------------------
INSERT INTO `api_config` VALUES ('获取api配置清单', '/api/apiConfig', '/api/apiConfig', NULL, NULL, 0, 0, '1790760967322279937', '1', NULL, '1791743466693271553', NULL, '[{\"name\":\"SQL-0\",\"runSql\":\"SELECT * from api_config\"}]', 1, 0, 0, NULL, NULL, NULL, '0', NULL, NULL, 1790761188827668482, NULL, '2024-05-15 23:00:34', NULL, 1, '2024-05-18 15:56:09', NULL, NULL);
INSERT INTO `api_config` VALUES ('取数据源清单', '取数据源清单', '/api/datasource', NULL, NULL, 0, 1, '1791748537963323394', '2', NULL, '1791743466693271553', NULL, '[{\"name\":\"SQL-0\",\"runSql\":\"SELECT count(*) from api_datasource\"},{\"name\":\"SQL-1\",\"runSql\":\"SELECT * from api_datasource\"}]', 1, 0, 0, NULL, NULL, NULL, '0', NULL, NULL, 1792018232872337409, NULL, '2024-05-19 09:42:42', NULL, 0, '2024-05-19 21:07:45', NULL, NULL);

-- ----------------------------
-- Table structure for api_datasource
-- ----------------------------
DROP TABLE IF EXISTS `api_datasource`;
CREATE TABLE `api_datasource`  (
  `db_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '描述',
  `db_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据库名称',
  `db_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据库连接',
  `jdbc_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据库连接地址',
  `db_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据库用户名',
  `db_passwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据库密码',
  `db_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据库连接端口',
  `db_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '数据库类型',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作者名',
  `has_delete` int NULL DEFAULT NULL COMMENT '是否删除',
  `delete_manager` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '删除人员',
  `application_id` bigint NULL DEFAULT NULL COMMENT '所属应用',
  `application_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用名称',
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属租户',
  `field_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段权限',
  `department_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门权限',
  `id` bigint NOT NULL COMMENT '主键',
  `field_prop` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段属性',
  `add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `has_status` int NULL DEFAULT NULL COMMENT '状态',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作员',
  `last_update_operator_id` bigint NULL DEFAULT NULL COMMENT '最后更新操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_datasource
-- ----------------------------
INSERT INTO `api_datasource` VALUES ('本地数据库', 'dev_alinesno_infra_data_fastapi_v100', 'hHXdcrzofeB+PR8RmbyhdQ==', 'KctTvoERpEN1A9GyI4Rg79crn/ai9H/Lq9iJ11IurHxT8ueZcSWIqykpw1ApWrBl78QAttpLPQzFzjd+e18i4KyKPPjOBfOod7NcoilSGddyG/hw2Ps8Ed9JYwCEq5ji/TuseF3B990knXX0GPyhXdxrS5aLAM2iDMPVo0+ZAvAGp2FSI1XGzunHc8dvTcX4', 'PTAuqW5vTRGGjKxR2S0aXQ==', '5yTths3787rCvGOIQEKanA==', '3306', 'MySQL', NULL, 0, NULL, NULL, NULL, '0', NULL, NULL, 1791743466693271553, NULL, '2024-05-18 15:56:09', NULL, 0, '2024-05-18 15:56:09', NULL, NULL);
INSERT INTO `api_datasource` VALUES ('本地数据库2', 'dev_alinesno_infra_data_fastapi_v100', 'hHXdcrzofeB+PR8RmbyhdQ==', 'KctTvoERpEN1A9GyI4Rg79crn/ai9H/Lq9iJ11IurHxT8ueZcSWIqykpw1ApWrBl78QAttpLPQzFzjd+e18i4KyKPPjOBfOod7NcoilSGddyG/hw2Ps8Ed9JYwCEq5ji/TuseF3B990knXX0GPyhXdxrS5aLAM2iDMPVo0+ZAvAGp2FSI1XGzunHc8dvTcX4', 'PTAuqW5vTRGGjKxR2S0aXQ==', '5yTths3787rCvGOIQEKanA==', '3306', 'MySQL', NULL, 0, NULL, NULL, NULL, '0', NULL, NULL, 1791745224362500098, NULL, '2024-05-18 15:56:09', NULL, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for api_function
-- ----------------------------
DROP TABLE IF EXISTS `api_function`;
CREATE TABLE `api_function`  (
  `has_delete` int NULL DEFAULT NULL COMMENT '是否删除',
  `delete_manager` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '删除人员',
  `application_id` bigint NULL DEFAULT NULL COMMENT '所属应用',
  `application_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用名称',
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属租户',
  `field_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段权限',
  `department_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门权限',
  `id` bigint NOT NULL COMMENT '主键',
  `field_prop` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段属性',
  `add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `has_status` int NULL DEFAULT NULL COMMENT '状态',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作员',
  `last_update_operator_id` bigint NULL DEFAULT NULL COMMENT '最后更新操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_function
-- ----------------------------

-- ----------------------------
-- Table structure for api_group
-- ----------------------------
DROP TABLE IF EXISTS `api_group`;
CREATE TABLE `api_group`  (
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类型图标',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类型名称',
  `order_num` int NULL DEFAULT NULL COMMENT '显示排序',
  `description` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类型描述',
  `prompt_count` int NULL DEFAULT NULL COMMENT '生成式数量',
  `ancestors` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '祖级列表',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父类ID',
  `has_delete` int NULL DEFAULT NULL COMMENT '是否删除',
  `delete_manager` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '删除人员',
  `application_id` bigint NULL DEFAULT NULL COMMENT '所属应用',
  `application_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用名称',
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属租户',
  `field_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段权限',
  `department_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门权限',
  `id` bigint NOT NULL COMMENT '主键',
  `field_prop` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段属性',
  `add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `has_status` int NULL DEFAULT NULL COMMENT '状态',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作员',
  `last_update_operator_id` bigint NULL DEFAULT NULL COMMENT '最后更新操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_group
-- ----------------------------
INSERT INTO `api_group` VALUES (NULL, '主数据', 0, '主数据', 0, NULL, 0, 0, NULL, NULL, NULL, '0', NULL, NULL, 1790760967322279937, NULL, '2024-05-15 23:00:34', NULL, 0, NULL, NULL, NULL);
INSERT INTO `api_group` VALUES (NULL, '性别', 3, '主数据性别数据', 0, 'null,1790760967322279937', 1790760967322279937, 0, NULL, NULL, NULL, '0', NULL, NULL, 1791746459480170497, NULL, '2024-05-18 15:56:09', NULL, 0, NULL, NULL, NULL);
INSERT INTO `api_group` VALUES (NULL, '男', 0, '男', 0, 'null,1790760967322279937,1791746459480170497', 1791746459480170497, 0, NULL, NULL, NULL, '0', NULL, NULL, 1791748537963323394, NULL, '2024-05-18 15:56:09', NULL, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for api_history
-- ----------------------------
DROP TABLE IF EXISTS `api_history`;
CREATE TABLE `api_history`  (
  `api_id` bigint NULL DEFAULT NULL COMMENT 'AppID',
  `context` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '内容',
  `has_delete` int NULL DEFAULT NULL COMMENT '是否删除',
  `delete_manager` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '删除人员',
  `application_id` bigint NULL DEFAULT NULL COMMENT '所属应用',
  `application_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用名称',
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属租户',
  `field_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段权限',
  `department_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门权限',
  `id` bigint NOT NULL COMMENT '主键',
  `field_prop` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段属性',
  `add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `has_status` int NULL DEFAULT NULL COMMENT '状态',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作员',
  `last_update_operator_id` bigint NULL DEFAULT NULL COMMENT '最后更新操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_history
-- ----------------------------

-- ----------------------------
-- Table structure for api_record
-- ----------------------------
DROP TABLE IF EXISTS `api_record`;
CREATE TABLE `api_record`  (
  `oper_id` bigint NULL DEFAULT NULL COMMENT '日志主键',
  `tenant_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '租户编号',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '模块标题',
  `business_type` int NULL DEFAULT NULL COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '请求方式',
  `operator_type` int NULL DEFAULT NULL COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '返回参数',
  `status` int NULL DEFAULT NULL COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT NULL COMMENT '消耗时间',
  `has_delete` int NULL DEFAULT NULL COMMENT '是否删除',
  `delete_manager` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '删除人员',
  `application_id` bigint NULL DEFAULT NULL COMMENT '所属应用',
  `application_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用名称',
  `field_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段权限',
  `department_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门权限',
  `id` bigint NOT NULL COMMENT '主键',
  `field_prop` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段属性',
  `add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `has_status` int NULL DEFAULT NULL COMMENT '状态',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作员',
  `last_update_operator_id` bigint NULL DEFAULT NULL COMMENT '最后更新操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_record
-- ----------------------------

-- ----------------------------
-- Table structure for firewall
-- ----------------------------
DROP TABLE IF EXISTS `firewall`;
CREATE TABLE `firewall`  (
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态',
  `mode` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '模式',
  `has_delete` int NULL DEFAULT NULL COMMENT '是否删除',
  `delete_manager` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '删除人员',
  `application_id` bigint NULL DEFAULT NULL COMMENT '所属应用',
  `application_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用名称',
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属租户',
  `field_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段权限',
  `department_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门权限',
  `id` bigint NOT NULL COMMENT '主键',
  `field_prop` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段属性',
  `add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `has_status` int NULL DEFAULT NULL COMMENT '状态',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作员',
  `last_update_operator_id` bigint NULL DEFAULT NULL COMMENT '最后更新操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of firewall
-- ----------------------------

-- ----------------------------
-- Table structure for ip_rule
-- ----------------------------
DROP TABLE IF EXISTS `ip_rule`;
CREATE TABLE `ip_rule`  (
  `type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类型',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '模式',
  `has_delete` int NULL DEFAULT NULL COMMENT '是否删除',
  `delete_manager` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '删除人员',
  `application_id` bigint NULL DEFAULT NULL COMMENT '所属应用',
  `application_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用名称',
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属租户',
  `field_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段权限',
  `department_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门权限',
  `id` bigint NOT NULL COMMENT '主键',
  `field_prop` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段属性',
  `add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `has_status` int NULL DEFAULT NULL COMMENT '状态',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作员',
  `last_update_operator_id` bigint NULL DEFAULT NULL COMMENT '最后更新操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ip_rule
-- ----------------------------

-- ----------------------------
-- Table structure for monitor
-- ----------------------------
DROP TABLE IF EXISTS `monitor`;
CREATE TABLE `monitor`  (
  `has_delete` int NULL DEFAULT NULL COMMENT '是否删除',
  `delete_manager` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '删除人员',
  `application_id` bigint NULL DEFAULT NULL COMMENT '所属应用',
  `application_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用名称',
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属租户',
  `field_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段权限',
  `department_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门权限',
  `id` bigint NOT NULL COMMENT '主键',
  `field_prop` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段属性',
  `add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `has_status` int NULL DEFAULT NULL COMMENT '状态',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作员',
  `last_update_operator_id` bigint NULL DEFAULT NULL COMMENT '最后更新操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monitor
-- ----------------------------

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `project_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目名称',
  `project_desc` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目描述',
  `project_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '项目代码',
  `has_delete` int NULL DEFAULT NULL COMMENT '是否删除',
  `delete_manager` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '删除人员',
  `application_id` bigint NULL DEFAULT NULL COMMENT '所属应用',
  `application_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用名称',
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '所属租户',
  `field_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段权限',
  `department_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '部门权限',
  `id` bigint NOT NULL COMMENT '主键',
  `field_prop` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '字段属性',
  `add_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `has_status` int NULL DEFAULT NULL COMMENT '状态',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint NULL DEFAULT NULL COMMENT '操作员',
  `last_update_operator_id` bigint NULL DEFAULT NULL COMMENT '最后更新操作员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('默认应用', '用于系统默认初始化应用，便于集成业务管理', '86Rf07', 0, NULL, NULL, NULL, '0', NULL, NULL, 1790759545360949250, 'default', '2024-05-15 23:00:34', NULL, 0, NULL, 1767187833724583938, NULL);

SET FOREIGN_KEY_CHECKS = 1;
