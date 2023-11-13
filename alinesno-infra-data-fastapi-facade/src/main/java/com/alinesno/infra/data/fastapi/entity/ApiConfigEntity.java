package com.alinesno.infra.data.fastapi.entity;

import com.alinesno.infra.common.facade.mapper.entity.InfraBaseEntity;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.gitee.sunchenbin.mybatis.actable.annotation.ColumnComment;
import com.gitee.sunchenbin.mybatis.actable.annotation.ColumnType;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@TableName("api_config")
@Data
public class ApiConfigEntity extends InfraBaseEntity {

    /**
     * 名称
     */
    @TableField("name")
    @ColumnType(value = MySqlTypeConstant.VARCHAR, length = 255)
    @ColumnComment("名称")
    private String name;

    /**
     * 备注
     */
    @TableField("note")
    @ColumnType(value = MySqlTypeConstant.VARCHAR, length = 255)
    @ColumnComment("备注")
    private String note;

    /**
     * 路径
     */
    @TableField("path")
    @ColumnType(value = MySqlTypeConstant.VARCHAR, length = 255)
    @ColumnComment("路径")
    private String path;

    /**
     * 参数
     */
    @TableField("params")
    @ColumnType(value = MySqlTypeConstant.TEXT)
    @ColumnComment("参数")
    private String params;

    /**
     * JSON参数
     */
    @TableField("json_param")
    @ColumnType(value = MySqlTypeConstant.TEXT)
    @ColumnComment("JSON参数")
    private String jsonParam;

    /**
     * 状态
     */
    @TableField("status")
    @ColumnType(value = MySqlTypeConstant.INT, length = 11)
    @ColumnComment("状态 0-offline;1-online")
    private Integer status;

    /**
     * 访问权限
     */
    @TableField("access")
    @ColumnType(value = MySqlTypeConstant.INT, length = 11)
    @ColumnComment("访问权限 0-private;1-public")
    private Integer access;

    /**
     * 分组ID
     */
    @TableField("group_id")
    @ColumnType(value = MySqlTypeConstant.VARCHAR, length = 20)
    @ColumnComment("分组ID")
    private String groupId;

    /**
     * 内容类型
     */
    @TableField("content_type")
    @ColumnType(value = MySqlTypeConstant.VARCHAR, length = 50)
    @ColumnComment("内容类型")
    private String contentType;

    /**
     * 任务
     */
    @TableField("task")
    @ColumnType(value = MySqlTypeConstant.TEXT)
    @ColumnComment("任务")
    private String task;

}
