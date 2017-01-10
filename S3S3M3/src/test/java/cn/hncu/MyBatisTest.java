package cn.hncu;

import cn.hncu.model.User;
import cn.hncu.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import java.util.Date;
import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * User: 陈浩翔.
 * Date: 2017/1/9.
 * Time: 下午 3:33.
 * Explain:
 */
public class MyBatisTest {

    private UserService userService;

    /**
     * 这个before方法在所有的测试方法之前执行，并且只执行一次
     * 所有做Junit单元测试时一些初始化工作可以在这个方法里面进行
     * 比如在before方法里面初始化ApplicationContext和userService
     */
    @Before
    public void before() {
        //使用"spring.xml"和"spring-mybatis.xml"这两个配置文件创建Spring上下文
        ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml", "spring-mybatis.xml");
        //从Spring容器中根据bean的id取出我们要使用的userService对象
        userService = (UserService) context.getBean("userService");
    }

    @Test
    public void testAddUser() {
        User user = new User();
        user.setId(UUID.randomUUID().toString().replaceAll("-", ""));
        user.setCreatedatetime(new Date());
        user.setCreateTime(new Date());
        user.setModifydatetime(new Date());
        user.setName("陈浩翔");
        user.setPwd("chx");
        user.setUpdateTime(new Date());
        userService.addUser(user);
    }

    @Test
    public void testGetUser(){
        String userId = "22bc622c8eb44121b8f3edbec3d51fbf";
        User user = userService.getUserById(userId);
        System.out.println("userName:"+user.getName());
    }

}
