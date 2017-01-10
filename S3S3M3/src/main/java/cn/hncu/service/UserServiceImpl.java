package cn.hncu.service;

import cn.hncu.dao.UserMapper;
import cn.hncu.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: 陈浩翔.
 * Date: 2017/1/9.
 * Time: 下午 1:46.
 * Explain: 使用@Service注解将UserServiceImpl类标注为一个service
 */
@Service("userService") //表明这个是一个Bean-service的id是userService
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    public User getUserById(String id) {
        return userMapper.selectByPrimaryKey(id);
    }

    public void addUser(User user) {
        userMapper.insert(user);
    }

    public List<User> getAllUser() {
        return userMapper.getAllUser();
    }

    public List<User> getAllUser2() {
        return userMapper.getAllUser2();
    }

    public List<User> getAllUser3() {
        return userMapper.getAllUser3();
    }

    public List<User> getAllUser4() {
        return userMapper.getAllUser4();
    }

}
