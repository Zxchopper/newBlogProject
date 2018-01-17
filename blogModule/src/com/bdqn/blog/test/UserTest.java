package com.bdqn.blog.test;

import com.bdqn.blog.server.impl.UserServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class UserTest {
    public static void main(String[] atf){
        System.out.println(atf.getClass().getResource("/").getPath());
//        ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
//        UserServiceImpl bean = ac.getBean(UserServiceImpl.class);
//        try {
//            bean.getLoginUser("user","123");
//        } catch (Exception e) {
//            e.printStackTrace();
//        }

    }

}
