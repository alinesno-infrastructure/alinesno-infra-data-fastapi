package com.alinesno.infra.data.fastapi.service;

import com.alinesno.infra.common.facade.services.IBaseService;
import com.alinesno.infra.data.fastapi.entity.ProjectEntity;

public interface IProjectService extends IBaseService<ProjectEntity> {

    /**
     * 初始化应用
     * @param userId
     */
    void initDefaultApp(long userId);

}
