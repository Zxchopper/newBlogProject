package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper{

	int insertUser(User user);
	int updateUser(User user);
	int deleteUser(@Param("uid") Integer id);

}