package com.bdqn.blog.server.impl;

import com.bdqn.blog.dao.UserMapper;

import com.bdqn.blog.pojo.BlogComment;
import com.bdqn.blog.pojo.User;
import com.bdqn.blog.server.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *Created by IntelliJ IDEA.
 User: fujiawei
 Date: 2018/1/7
 Time: 11:22
 */
@Service("service")
public class UserServiceImpl implements UserService{
    @Resource
   private UserMapper userMapper;
    @Override
    public User getLoginUser(String name, String pwd) throws Exception {
       /* return userMapperser.getLoginUser(name,pwd);*/

       return userMapper.getLoginUser(name,pwd);
    }

    @Override
    public int doRegister(User user) {

        return userMapper.insertUser(user);
    }

    @Override
    public int addUser(User user) {
        return userMapper.insertUser(user);
    }

    @Override
    public int modifyUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int removeUser(Integer id) {
        return userMapper.deleteUser(id);
    }

    @Override
    public List<BlogComment> selectAllBlogcomment(int uid, int pageNo, int pageSize) {
        return userMapper.getBlogCommentListByUserId(uid,pageNo,pageSize);
    }
}
