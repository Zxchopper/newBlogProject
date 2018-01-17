package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.BlogGenre;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface BlogGenreMapper {
    //获取博客所有分类
    List<BlogGenre> getBlogGenreAll();
    //添加分类
    int insert(BlogGenre blogGenre);
    //删除
    int delete(@Param("id") Integer id);
    //修改
    int update(BlogGenre blogGenre);


}
