package com.alinesno.infra.data.fastapi.service;

import com.alinesno.infra.common.facade.services.IBaseService;
import com.alinesno.infra.data.fastapi.api.dto.CheckDbConnectResult;
import com.alinesno.infra.data.fastapi.entity.DatasourceEntity;

public interface IDatasourceService extends IBaseService<DatasourceEntity> {

    /**
     * 数据库连接校验
     * @param dbListEntity
     * @return
     */
    CheckDbConnectResult checkDbConnect(DatasourceEntity dbListEntity);

}
