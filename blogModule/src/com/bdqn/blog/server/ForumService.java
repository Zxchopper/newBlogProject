package com.bdqn.blog.server;

import com.bdqn.blog.pojo.Forum;

public interface ForumService{

	int addForum(Forum forum);
	int modifyForum(Forum forum);
	int removeForum(Integer id);

}