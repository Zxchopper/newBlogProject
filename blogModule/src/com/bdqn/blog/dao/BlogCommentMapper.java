package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.BlogComment;
import org.apache.ibatis.annotations.Param;

/**
 * 评论接口
 */
public interface BlogCommentMapper {
    int insertBlogcomment(BlogComment blogComment);
    int updateBlogcomment(BlogComment blogComment);
    int deleteBlogcomment(@Param("id") Integer id);

}
