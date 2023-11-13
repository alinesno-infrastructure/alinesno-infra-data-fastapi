package com.alinesno.infra.data.fastapi.entity;

import com.alinesno.infra.common.facade.mapper.entity.InfraBaseEntity;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@TableName("api_datasource")
@Data
public class DatasourceEntity extends InfraBaseEntity {

    /**
     * 名称
     */
    @TableField("name")
    @Column(comment = "名称", type = MySqlTypeConstant.VARCHAR, length = 255)
    private String name;

    /**
     * 备注
     */
    @TableField("note")
    @Column(comment = "备注", type = MySqlTypeConstant.VARCHAR, length = 255)
    private String note;

    /**
     * 类型
     */
    @TableField("type")
    @Column(comment = "类型", type = MySqlTypeConstant.VARCHAR, length = 20)
    private String type;

    /**
     * 详细信息
     */
    @TableField("detail")
    @Column(comment = "详细信息", type = MySqlTypeConstant.VARCHAR, length = 1024)
    private String detail;
}
