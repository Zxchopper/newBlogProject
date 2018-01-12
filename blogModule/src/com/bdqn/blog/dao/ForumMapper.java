package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.Forum;
import org.apache.ibatis.annotations.Param;

public interface ForumMapper{

	int insertForum(Forum forum);
	int updateForum(Forum forum);
	int deleteForum(@Param("fid") Integer id);

}