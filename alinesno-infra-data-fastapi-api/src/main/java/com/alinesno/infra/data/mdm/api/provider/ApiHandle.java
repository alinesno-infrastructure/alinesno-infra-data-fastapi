package com.alinesno.infra.data.mdm.api.provider;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiHandle {

    @RequestMapping(value = "/" , method = { RequestMethod.DELETE , RequestMethod.GET , RequestMethod.PUT , RequestMethod.POST})
    public Object handle(){

        return null ;
    }

}
