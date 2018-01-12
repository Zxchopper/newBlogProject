package com.bdqn.blog.server.impl;

import com.bdqn.blog.dao.BlogCommentMapper;
import com.bdqn.blog.pojo.BlogComment;
import com.bdqn.blog.server.BlogcommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class BlogcommentServiceImpl implements BlogcommentService{

    @Resource
    private BlogCommentMapper blogCommentMapper;
    @Override
    public int addBlogcomment(BlogComment blogcomment) {
        return blogCommentMapper.insertBlogcomment(blogcomment);
    }

    @Override
    public int modifyBlogcomment(BlogComment blogcomment) {
        return blogCommentMapper.updateBlogcomment(blogcomment);
    }

    @Override
    public int removeBlogcomment(Integer id) {
        return blogCommentMapper.deleteBlogcomment(id);
    }
}
