package com.wangze.core.controller;

import com.wangze.core.entity.User;
import com.wangze.core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * @author: xcz
 */

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(String usercode, String password, Model model, HttpSession session){
        User user = userService.findUser(usercode,password);
        if(user != null){
                session.setAttribute("USER_SESSION",user);
                return "redirect:customer/list";
        }
        model.addAttribute("msg","账号或密码错误，请重新输入");

        return "login";
    }
    @RequestMapping("/tocon")
    public String tocon(){
        return "customer";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();  //清除session
        return "redirect:login";

    }

    @RequestMapping(value = "login",method = RequestMethod.GET)
    public String toLogin(){
        return "login";
    }


}
