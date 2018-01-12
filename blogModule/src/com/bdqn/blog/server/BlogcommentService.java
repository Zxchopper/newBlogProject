package com.bdqn.blog.server;


import com.bdqn.blog.pojo.BlogComment;

public interface BlogcommentService {

    //增加博客评论
    public int addBlogcomment(BlogComment blogcomment);
    //修改博客评论
    public int modifyBlogcomment(BlogComment blogcomment);
    //删除博客评论
    public int removeBlogcomment(Integer id);
}
