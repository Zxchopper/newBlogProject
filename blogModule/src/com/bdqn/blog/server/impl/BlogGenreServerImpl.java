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

    /**
     * 新增
     * @param blogGenre
     * @return
     */
    @Override
    public int insert(BlogGenre blogGenre) {
        return BlogGenreMapper.insert(blogGenre);
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @Override
    public boolean delete(Integer id) {
        boolean flag = false;
        if(BlogGenreMapper.delete(id)>0){
            flag = true;
        }
        return flag;
    }

    /**
     * 更新
     * @param blogGenre
     * @return
     */
    @Override
    public boolean updata(BlogGenre blogGenre) {
        boolean flag = false;
        if(BlogGenreMapper.update(blogGenre)>0){
            flag = true;
        }
        return flag;
    }
}
