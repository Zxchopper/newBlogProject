package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.BlogComment;
import com.bdqn.blog.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper{
	User getLoginUser(@Param("name") String name, @Param("pwd") String pwd);
	int insertUser(User user);
	int updateUser(User user);
	int deleteUser(@Param("uid") Integer id);

	/**
	 * 通过用户id查询该用户的所有评论
	 * @param uid
	 * @return
	 */
	List<BlogComment> getBlogCommentListByUserId(@Param("uid")Integer uid,@Param("pageNo") int pageNo,@Param("pageSize")int pageSize);
}