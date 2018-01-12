package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.Forumgenre;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ForumgenreMapper {
    //查询所有类型
    List<Forumgenre> find();
}
