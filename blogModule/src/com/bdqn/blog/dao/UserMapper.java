package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.BlogComment;
import com.bdqn.blog.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper{

	int insertUser(User user);
	int updateUser(User user);
	int deleteUser(@Param("uid") Integer id);
	List<BlogComment> getBlogCommentListByUserId(@Param("uid")Integer uid);
}