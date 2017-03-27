package cn.hncu.dao;

import cn.hncu.model.User;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    /**
     * 获得所有用户
     * @return
     */
    List<User> getAllUser();

    List<User> getAllUser2();
    List<User> getAllUser3();
    List<User> getAllUser4();
}