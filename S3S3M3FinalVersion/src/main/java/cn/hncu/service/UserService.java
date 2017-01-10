package cn.hncu.service;


import cn.hncu.model.User;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈浩翔.
 * Date: 2017/1/9.
 * Time: 下午 1:46.
 * Explain:
 */
public interface UserService {
    /**
     * 通过用户ID获得用户
     *
     * @param id
     * @return
     */
    User getUserById(String id);

    /**
     * 添加用户
     *
     * @param user
     */
    void addUser(User user);

    List<User> getAllUser();

}
