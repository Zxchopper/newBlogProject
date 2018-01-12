package com.bdqn.blog.server.impl;

import com.bdqn.blog.dao.BlogGenreMapper;
import com.bdqn.blog.pojo.BlogGenre;
import com.bdqn.blog.server.BlogGenreServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BlogGenreServerImpl implements BlogGenreServer {
    @Autowired
    private BlogGenreMapper BlogGenreMapper;

    //获取博客所有分类
    @Override
    public List<BlogGenre> getBlogGenreAll() {
        return BlogGenreMapper.getBlogGenreAll();
    }
}
