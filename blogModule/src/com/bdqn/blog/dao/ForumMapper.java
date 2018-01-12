package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.Forum;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * lisheng
 * 论坛
 * 2018-1-9
 * 1.0
 */
@Repository
public interface ForumMapper{

	//添加
	int insertForum(Forum forum);
	//修改
	int updateForum(Forum forum);
	//删除
	int deleteForum(@Param("id") Integer id);
	//分页
	List<Forum> pageFind(@Param("pageNo") Integer pageNo, @Param("pageSize") Integer pageSize);
	//显示论坛内容
	Forum show(@Param("id") Integer id);

}