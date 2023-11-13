package com.alinesno.infra.data.fastapi.entity;

import com.alinesno.infra.common.facade.mapper.entity.InfraBaseEntity;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.gitee.sunchenbin.mybatis.actable.annotation.ColumnComment;
import com.gitee.sunchenbin.mybatis.actable.annotation.ColumnType;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@TableName("access_log")
@Data
public class AccessRecordEntity extends InfraBaseEntity {

    /**
     * URL
     */
    @TableField("url")
    @ColumnType(length=255)
    @ColumnComment("url")
    private String url;

    /**
     * 状态码
     */
    @TableField("status")
    @ColumnType(length=2)
    @ColumnComment("状态码")
    private Integer status;

    /**
     * 持续时间
     */
    @TableField("duration")
    @ColumnType(length=10)
    @ColumnComment("持续时间")
    private Long duration;

    /**
     * 时间戳
     */
    @TableField("timestamp")
    @ColumnType(length=10)
    @ColumnComment("时间戳")
    private Long timestamp;

    /**
     * IP地址
     */
    @TableField("ip")
    @ColumnType(length=16)
    @ColumnComment("IP地址")
    private String ip;

    /**
     * 客户端ID
     */
    @TableField("client_id")
    @ColumnType(length=16)
    @ColumnComment("应用ID")
    private Long appId;

    /**
     * API ID
     */
    @TableField("api_id")
    @ColumnType(length=32)
    @ColumnComment("AppID")
    private Long apiId;

    /**
     * 错误信息
     */
    @TableField("error")
    @ColumnType(length=1024)
    @ColumnComment("错误信息")
    private String error;

    // 省略getter和setter方法
}
