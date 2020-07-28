package com.javakc.ssm.user.service;

import com.javakc.ssm.user.entity.User;

import java.util.List;

/**
 * 用户模块-逻辑层接口
 */
public interface UserService {

    /**
     * 用户注册
     * @param entity 实体类
     * @return 成功状态
     */
    public int insert(User entity);
    /**
     * 用户修改
     * @param entity 实体类
     * @return 成功状态
     */
    public int update(User entity);
    /**
     * 删除用户
     * @param id 主键ID
     * @return 状态
     */
    public int delete(int id);

    /**
     * 查询所有记录
     * @return 结果集
     */
    public List<User> queryAll();

    /**
     * 根据主键查询唯一对象
     * @param id 主键ID
     * @return 结果
     */
    public User queryById(int id);

    /**
     * 查询总条数
     * @return 条数
     */
    public long queryByCount();

}
