package com.javakc.ssm.user.service.impl;

import com.javakc.ssm.user.dao.UserDao;
import com.javakc.ssm.user.entity.User;
import com.javakc.ssm.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public int insert(User entity) {
        entity.setId(UUID.randomUUID().toString().replace("-", ""));
        return userDao.insert(entity);
    }

    @Override
    public int update(User entity) {
        return userDao.update(entity);
    }

    @Override
    public int delete(String id) {
        return userDao.delete(id);
    }

    @Override
    public List<User> queryAll() {
        return userDao.queryAll();
    }

    @Override
    public User queryById(String id) {
        return userDao.queryById(id);
    }

    @Override
    public long queryByCount() {
        return userDao.queryByCount();
    }

}
