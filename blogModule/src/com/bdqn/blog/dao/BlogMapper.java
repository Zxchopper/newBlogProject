package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.Blog;
import com.bdqn.blog.pojo.BlogComment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogMapper{

	int insertBlog(Blog blog);
	int updateBlog(Blog blog);
	int deleteBlog(@Param("bid") Integer id);

	/**
	 * 通过Blog的bid查找所有在此博客下评论的评论集合
	 * @param bid
	 * @return
	 */
	List<BlogComment> getBlogCommentListByBlogId(@Param("bid") Integer bid);

}