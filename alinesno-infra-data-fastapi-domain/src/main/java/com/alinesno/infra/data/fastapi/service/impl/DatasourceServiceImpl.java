package com.alinesno.infra.data.fastapi.service.impl;

import com.alinesno.infra.common.core.service.impl.IBaseServiceImpl;
import com.alinesno.infra.data.fastapi.entity.DatasourceEntity;
import com.alinesno.infra.data.fastapi.mapper.DatasourceMapper;
import com.alinesno.infra.data.fastapi.service.IDatasourceService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class DatasourceServiceImpl extends IBaseServiceImpl<DatasourceEntity, DatasourceMapper> implements IDatasourceService {
}
