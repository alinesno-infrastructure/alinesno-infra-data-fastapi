package com.alinesno.infra.data.fastapi.config;

import com.alinesno.infra.common.facade.enable.EnableActable;
import com.alinesno.infra.common.web.adapter.sso.enable.EnableInfraSsoApi;
import com.alinesno.infra.common.web.log.aspect.LogAspect;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 应用配置管理
 */
@EnableActable
@EnableInfraSsoApi
@MapperScan("com.alinesno.infra.data.fastapi.mapper")
@Configuration
public class AppConfiguration {

    @Bean
    public LogAspect getLogAspect(){
        return new LogAspect() ;
    }

}

