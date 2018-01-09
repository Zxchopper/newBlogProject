package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.Blog;
import org.apache.ibatis.annotations.Param;

public interface BlogMapper{

	int insertBlog(Blog blog);
	int updateBlog(Blog blog);
	int deleteBlog(@Param("bid") Integer id);

}