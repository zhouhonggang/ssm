package com.javakc.ssm.login.controller;

import com.javakc.ssm.user.entity.User;
import com.javakc.ssm.user.service.UserService;
import jdk.jfr.Frequency;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * @Program: ssm
 * @Created: 2021/3/25 9:27
 * @Author: ZhouHongGang
 * @Description: 登陆控制器
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    /**
     * 登陆方法
     * @param username 账号
     * @param password 密码
     * @return 相关页面
     */
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(String username, String password, HttpSession session, ModelMap model)
    {
        if(StringUtils.hasLength(username) && StringUtils.hasLength(password))
        {
            //shiro账号密码管理token
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            try {
                //开始执行认证相关工作
                Subject subject = SecurityUtils.getSubject();
                // 登陆认证
                subject.login(token);
                // 认证对象
                User user = userService.queryByUser(subject.getPrincipal().toString());
                session.setAttribute("user", user);
                // 成功跳转至主页
                return "redirect:/index.jsp";
            } catch (AuthenticationException exception) {
                model.put("error", "账号或密码输入错误!");
                return "login";
            }
        }
        else
        {
            model.put("error", "请输入账号与密码!");
            return "login";
        }
    }

}
