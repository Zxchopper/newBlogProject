package com.bdqn.blog.server;

import com.bdqn.blog.pojo.Forum;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ForumService{

	//添加
	int insertForum(Forum forum);
	//修改
	int updateForum(Forum forum);
	//删除
	int deleteForum(Integer fid);
	//分页
	List<Forum> pageFind(Integer currentPageNo,Integer pageSize);
	//显示论坛内容
	Forum show(Integer uid);
	//总条数
	int totalCount();
}