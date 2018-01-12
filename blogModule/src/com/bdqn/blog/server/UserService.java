package com.bdqn.blog.server;

import com.bdqn.blog.pojo.User;

public interface UserService{

	int addUser(User user);
	int modifyUser(User user);
	int removeUser(Integer id);

}