package cn.hncu.controller;


import cn.hncu.model.User;
import cn.hncu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 * User: 陈浩翔.
 * Date: 2017/1/9.
 * Time: 下午 7:16.
 * Explain:
 */
@Controller
@RequestMapping("/userController")
public class UserController {
    @Autowired
    private UserService userService;

    //http://localhost:8080/S3S3M3/userController/showUser.chx?id=22bc622c8eb44121b8f3edbec3d51fbf
    @RequestMapping("/showUser")
    public String showUser(String id, HttpServletRequest request){
        User user = userService.getUserById(id);
        request.setAttribute("user",user);
        return "showUser";
    }

    //SpringMVC推荐的访问方式
    //http://localhost:8080/S3S3M3/userController/showUser1/22bc622c8eb44121b8f3edbec3d51fbf.chx
    @RequestMapping("/showUser1/{id}")
    public String showUser1(@PathVariable String id, HttpServletRequest request){
        User user = userService.getUserById(id);
        request.setAttribute("user",user);
        return "showUser";
    }

    //有些人的习惯
    //http://localhost:8080/S3S3M3/userController/22bc622c8eb44121b8f3edbec3d51fbf/showUser2.chx
    @RequestMapping("/{id}/showUser2")
    public String showUser2(@PathVariable String id, HttpServletRequest request){
        User user = userService.getUserById(id);
        request.setAttribute("user",user);
        return "showUser";
    }

}
