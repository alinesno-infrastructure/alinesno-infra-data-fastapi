package com.alinesno.infra.data.fastapi.service.impl;

import com.alinesno.infra.common.core.service.impl.IBaseServiceImpl;
import com.alinesno.infra.data.fastapi.entity.MonitorApiEntity;
import com.alinesno.infra.data.fastapi.mapper.MonitorApiMapper;
import com.alinesno.infra.data.fastapi.service.IMonitorApiService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class MonitorServiceImpl extends IBaseServiceImpl<MonitorApiEntity, MonitorApiMapper> implements IMonitorApiService {
}
