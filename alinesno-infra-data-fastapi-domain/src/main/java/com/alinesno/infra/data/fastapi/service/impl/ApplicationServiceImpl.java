package com.alinesno.infra.data.fastapi.service.impl;

import com.alinesno.infra.common.core.service.impl.IBaseServiceImpl;
import com.alinesno.infra.data.fastapi.entity.ApplicationEntity;
import com.alinesno.infra.data.fastapi.mapper.ApplicationMapper;
import com.alinesno.infra.data.fastapi.service.IApplicationService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class ApplicationServiceImpl extends IBaseServiceImpl<ApplicationEntity, ApplicationMapper> implements IApplicationService {
}
