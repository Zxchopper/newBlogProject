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
	List<Blog> selectAllBlog(@Param("uid") Integer uid,@Param("title") String title,@Param("pageNo") int pageNo,@Param("pageSize")int pageSize);

	/**
	 * 总页数

	 */
	int totalCount(@Param("uid") Integer uid,@Param("title") String title);
	/**
	 * 通过Blog的bid查找所有在此博客下评论的评论集合
	 * @param bid
	 * @return
	 */
	List<BlogComment> getBlogCommentListByBlogId(@Param("bid") Integer bid,@Param("pageNo") int pageNo,@Param("pageSize")int pageSize);

	/**
	 * 通过ad查找blog是否存在
	 * @param  bid
	 * @return Blog
	 */
	Blog selectByBid(@Param("bid") int Bid);

}