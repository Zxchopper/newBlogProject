package com.bdqn.blog.server.impl;

import com.bdqn.blog.dao.UserMapper;
import com.bdqn.blog.entity.User;
import com.bdqn.blog.server.UserServer;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 *Created by IntelliJ IDEA.
 User: fujiawei
 Date: 2018/1/7
 Time: 11:22
 */
@Service
public class UserServerImpl  implements UserServer{
    @Resource
   private UserMapper userMapperser;
    @Override
    public User getLoginUser(String name, String pwd) throws Exception {
        return userMapperser.getLoginUser(name,pwd);
    }
}
