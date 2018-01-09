package com.bdqn.blog.server;

import com.bdqn.blog.pojo.Blog;

public interface BlogService{

	int addBlog(Blog blog);
	int modifyBlog(Blog blog);
	int removeBlog(Integer id);

}