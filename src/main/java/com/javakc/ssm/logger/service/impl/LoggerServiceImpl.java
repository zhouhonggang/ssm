package com.javakc.ssm.logger.service.impl;

import com.javakc.ssm.logger.dao.LoggerDao;
import com.javakc.ssm.logger.entity.LoggerEntity;
import com.javakc.ssm.logger.service.LoggerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoggerServiceImpl implements LoggerService {

    @Autowired
    private LoggerDao loggerDao;

    @Override
    public int insert(LoggerEntity entity) {
        return loggerDao.insert(entity);
    }

}
