package com.javakc.ssm.logger.entity;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class LoggerEntity {
    private int userId;
    private String controller;
    private String method;
    private String remoteAddr;
    private Timestamp createTime;
    private String error;
    private int type;
}
