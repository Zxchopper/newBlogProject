package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.BlogGenre;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface BlogGenreMapper {
    //获取博客所有分类
    List<BlogGenre> getBlogGenreAll();

    int insert(BlogGenre blogGenre);

}
