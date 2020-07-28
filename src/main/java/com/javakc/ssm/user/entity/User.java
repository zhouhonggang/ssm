package com.javakc.ssm.user.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class User {
    private int id;// 用户主键ID
    private String name;// 用户名称
    private int age;// 用户年龄
    private int gender;// 用户性别 1:男 2:女
    private String phone;// 手机号码
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date birthday;// 出生日期
    private String address;//家庭住址
}
