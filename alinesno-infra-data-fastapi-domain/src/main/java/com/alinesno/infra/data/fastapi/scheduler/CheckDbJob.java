package com.alinesno.infra.data.fastapi.scheduler;

import com.alinesno.infra.common.facade.enums.HasStatusEnums;
import com.alinesno.infra.data.fastapi.api.dto.CheckDbConnectResult;
import com.alinesno.infra.data.fastapi.entity.DatasourceEntity;
import com.alinesno.infra.data.fastapi.service.IDatasourceService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 验证数据库连接是否正常
 * @author luoxiaodong
 * @since 1.0.0
 */
@Slf4j
@Component
public class CheckDbJob {

    @Autowired
    private IDatasourceService datasourceService;

	/**
	 * 验证数据库状态，每1小时进行检测一次，按毫秒
	 */
	@Scheduled(fixedDelay = 60 * 60 * 1000)
	public void checkDbStatus() {
		
		List<DatasourceEntity> list =  datasourceService.list() ;
		
		for(DatasourceEntity e : list) {
		
			if(e.getJdbcUrl() == null) {
				continue ;
			}
			
			CheckDbConnectResult result = datasourceService.checkDbConnect(e) ;
		
			if("200".equals(result.getCode())) {
				e.setHasStatus(HasStatusEnums.LEGAL.value);
			}else {
				e.setHasStatus(HasStatusEnums.ILLEGAL.value);
			}
		}

		datasourceService.updateBatchById(list, 1000) ;
	}
	
}
