package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.User;
import org.apache.ibatis.annotations.Param;

/**
 *
 */
public interface UserMapper{
	User getLoginUser(@Param("name") String name, @Param("pwd") String pwd);
	int insertUser(User user);
	int updateUser(User user);
	int deleteUser(@Param("uid") Integer id);

}