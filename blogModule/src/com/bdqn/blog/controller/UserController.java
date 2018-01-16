package com.bdqn.blog.controller;


import com.bdqn.blog.pojo.User;
import com.bdqn.blog.server.UserService;
import com.bdqn.blog.utils.MD5Tool;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *Created by IntelliJ IDEA.
 User: fujiawei
 Date: 2018/1/6
 Time: 17:19
 */
@Controller
@RequestMapping(value="/user")
public class UserController {
    @Resource
    private UserService userServer;

    @RequestMapping(value="/loginCheck",method= RequestMethod.POST)
    public String loginCheck(@RequestParam String name, @RequestParam String pwd, HttpServletRequest request){
        User user  = null;
        try {
            //密码加密
            String newPwd = MD5Tool.MD5(pwd);
            user = userServer.getLoginUser(name,newPwd);
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
        } catch (Exception e) {
            e.printStackTrace();
        }
       /* if(user !=null){
            return "list.jsp";
        }*/

        return "redirect:/blogIndex.jsp";


    }

    /**
     * @author kanxueke
     *
     */
    @RequestMapping(value = "/goRegister", method=RequestMethod.GET)
    public String goRegister(){
        return "register";
    }

    @RequestMapping(value = "/goLogin", method=RequestMethod.GET)
    public String goLogin(){
        return "login";
    }
    /**
     * @author kanxueke
     */
    @RequestMapping(value = "/doRegister", method=RequestMethod.POST)
    public String doRegister(User user,Model model){
        String userPassword = user.getUserPassword();
        String newUserPassword = MD5Tool.MD5(userPassword);
        user.setUserPassword(newUserPassword);
        int count = userServer.doRegister(user);
        user.setUserPassword(userPassword);
        if(count>0){
            model.addAttribute("user",user);
            return"login";
        }
        return "fail";
    }

}
