package com.bdqn.blog.server;

import com.bdqn.blog.pojo.BlogGenre;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

public interface BlogGenreServer {

    List<BlogGenre> getBlogGenreAll();
    //新增
    int insert(BlogGenre blogGenre);
    //删除
    public boolean delete(Integer id);
    //更新
    public boolean updata(BlogGenre blogGenre);
}
