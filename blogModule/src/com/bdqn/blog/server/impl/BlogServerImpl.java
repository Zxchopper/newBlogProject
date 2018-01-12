package com.bdqn.blog.server.impl;

import com.bdqn.blog.dao.BlogMapper;
import com.bdqn.blog.pojo.Blog;
import com.bdqn.blog.pojo.BlogComment;
import com.bdqn.blog.server.BlogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
 *Created by IntelliJ IDEA.
 User: caiwenfeng
 Date: 2018/1/7

 */

@Service
public class BlogServerImpl implements BlogService {

    @Resource
    private BlogMapper blogMapper;

    //增加博客
    @Override
    public int addBlog(Blog blog) {
        return blogMapper.insertBlog(blog);
    }
    //修改博客
    @Override
    public int modifyBlog(Blog blog) {
        return blogMapper.updateBlog(blog);
    }
    //删除博客
    @Override
    public int removeBlog(Integer id) {
        return blogMapper.deleteBlog(id);
    }
    //根据条件查询博客   其中包括用户的id，title     return    查询后的分页
    @Override
    public List<Blog> selectAllBlog(int uid, String title, int pageNo, int pageSize) {
        return blogMapper.selectAllBlog(uid,title,pageNo,pageSize);
    }

    /**
     * 根据博客的id获得博客下面的所有评论 查询后的分页
     * @param bid
     * @param pageNo
     * @param pageSize
     * @return
     */
    @Override
    public List<BlogComment> selectAllBlogcomment(int bid, int pageNo, int pageSize) {
        return blogMapper.getBlogCommentListByBlogId(bid,pageNo,pageSize);
    }
}
