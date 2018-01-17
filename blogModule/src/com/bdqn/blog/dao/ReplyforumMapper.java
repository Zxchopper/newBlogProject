package com.bdqn.blog.dao;


import com.bdqn.blog.pojo.Replyforum;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReplyforumMapper {
    //添加
    int insertReplyforum(Replyforum replyforum);
    //删除
    int deleteReplyforum(@Param("id") Integer id);
    //查询所有回复
    List<Replyforum> find(@Param("id") Integer id);
}