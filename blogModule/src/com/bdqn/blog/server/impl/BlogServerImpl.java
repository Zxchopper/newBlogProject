package com.bdqn.blog.server.impl;

import com.alibaba.fastjson.JSON;
import com.bdqn.blog.dao.BlogMapper;
import com.bdqn.blog.dao.cache.RedisCache;
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
    @Resource
    private RedisCache cache;

    //增加博客
    @Override
    public int addBlog(Blog blog) {
        cache.hset(blog,blog.getBid());
        return blogMapper.insertBlog(blog);
    }
    //修改博客
    @Override
    public int modifyBlog(Blog blog) {
        cache.hset(blog,blog.getBid());
        return blogMapper.updateBlog(blog);
    }
    //删除博客
    @Override
    public int removeBlog(Integer id) {
        cache.hdel("Blog",id+"");
        return blogMapper.deleteBlog(id);
    }
    //根据条件查询博客   其中包括用户的id，title     return    查询后的分页
    @Override
    public List<Blog> selectAllBlog(Integer uid, String title, int pageNo, int pageSize) {
        List<Blog> blogs = blogMapper.selectAllBlog(uid, title, pageNo, pageSize);
        return blogs;
    }
    /**
     * 根据博客的id获得博客下面的所有评论 查询后的分页
     * @param bid
     * @param pageNo
     * @param pageSize
     * @return
     */
    @Override
    public List<BlogComment> selectAllBlogcomment(Integer bid, int pageNo, int pageSize) {

        return blogMapper.getBlogCommentListByBlogId(bid,pageNo,pageSize);
    }

    @Override
    public int totalCount(Integer uid, String title) {

        return blogMapper.totalCount( uid,  title);
    }
    //
    @Override
    public Blog selectByBid(Integer bid) {
        Blog blog=null;
        String blog2 = null;
        try {
            blog2 = cache.hget("Blog", bid);
            blog=JSON.parseObject(blog2,Blog.class);
        } catch (Exception e) {
            if(blog2==null){
                Blog blog1 = blogMapper.selectByBid(bid);
                cache.hset(blog1,bid);
            }
        }
        return blog;
    }
}