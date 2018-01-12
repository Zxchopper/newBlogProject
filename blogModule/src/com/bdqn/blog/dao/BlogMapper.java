package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.Blog;
import com.bdqn.blog.pojo.BlogComment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogMapper{

	//增加博客
	int insertBlog(Blog blog);
	//修改博客
	int updateBlog(Blog blog);
	//删除博客
	int deleteBlog(@Param("bid") Integer id);
	//根据条件查询博客
	List<Blog> selectAllBlog(@Param("uid") int uid,@Param("title") String title,@Param("pageNo") int pageNo,@Param("pageSize")int pageSize);

	/**
	 * 通过Blog的bid查找所有在此博客下评论的评论集合
	 * @param bid
	 * @return
	 */
	List<BlogComment> getBlogCommentListByBlogId(@Param("bid") Integer bid,@Param("pageNo") int pageNo,@Param("pageSize")int pageSize);

}