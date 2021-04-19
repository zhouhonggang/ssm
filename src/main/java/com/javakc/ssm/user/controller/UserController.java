package com.javakc.ssm.user.controller;

import com.javakc.ssm.user.entity.User;
import com.javakc.ssm.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * 用户模块-表现层实现类
 */
@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("query")
    public String query(ModelMap model)
    {
        model.put("userList", userService.queryAll());
        return "views/user/list";
    }

    @RequestMapping("insert")
    public String insert(User entity)
    {
        userService.insert(entity);
        return "redirect:/user/query.do";
    }

    @RequestMapping("check")
    @ResponseBody
    public Map<String, Boolean> check(String name)
    {
        return Map.of("valid", ObjectUtils.isEmpty(userService.queryByUser(name)));
    }

}
