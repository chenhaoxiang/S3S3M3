package cn.hncu;

import cn.hncu.model.User;
import cn.hncu.service.UserService;
import com.alibaba.fastjson.JSON;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * User: 陈浩翔.
 * Date: 2017/1/10.
 * Time: 下午 5:10.
 * Explain:
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml", "classpath:spring-mybatis.xml"})
public class MyBatisTest2 {
    private Logger logger = Logger.getLogger(MyBatisTest2.class);
    @Autowired
    private UserService userService;

    @Test
    public void testAddUser() throws ParseException {
        User user = new User();
        user.setId(UUID.randomUUID().toString().replaceAll("-", ""));
        user.setCreatedatetime(new Date());
        user.setModifydatetime(new Date());
        user.setName("testaa");
        user.setPwd("1234");
        user.setUpdateTime(new Date());
        userService.addUser(user);
    }

    @Test
    public void testGetUser() {
        String userId = "4641a9cad60d4b628b26b79332010692";
        User user = userService.getUserById(userId);
        System.out.println("userName:" + user.getName());
        //转换为JSON字符串
        System.out.println(JSON.toJSON(user));
        //日期的格式---自动识别date类型和datetime类型
        System.out.println(JSON.toJSONStringWithDateFormat(user, "yyyy-MM-dd HH:mm:ss"));
        logger.debug("debug======================================================");
        logger.info("info========================================================");
        logger.error("错误信息========================================================");
    }

    @Test
    public void test3(){
        List<User> allUser = userService.getAllUser();
        logger.info(JSON.toJSONStringWithDateFormat(allUser,"yyyy-MM-dd HH:mm:ss"));
    }
    @Test
    public void test4(){
        List<User> allUser = userService.getAllUser2();
        logger.info(JSON.toJSONStringWithDateFormat(allUser,"yyyy-MM-dd HH:mm:ss"));
    }
    @Test
    public void test5(){
        List<User> allUser = userService.getAllUser3();
        logger.info(JSON.toJSONStringWithDateFormat(allUser,"yyyy-MM-dd HH:mm:ss"));
    }

    @Test
    public void test6(){
        List<User> allUser = userService.getAllUser4();
        logger.info(JSON.toJSONStringWithDateFormat(allUser,"yyyy-MM-dd HH:mm:ss"));
    }

}
