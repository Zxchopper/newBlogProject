package com.bdqn.blog.server;

import com.bdqn.blog.pojo.Forum;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ForumService{

	//添加
	int addForum(Forum forum);
	//修改
	int modifyForum(Forum forum);
	//删除
	int removeForum(Integer id);
	//分页
	List<Forum> pageFind(@Param("pageNo") Integer pageNo, @Param("pageSize") Integer pageSize);
	//显示论坛内容
	Forum show(Integer id);
}