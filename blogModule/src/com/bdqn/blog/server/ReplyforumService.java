package com.bdqn.blog.server;

import com.bdqn.blog.pojo.Replyforum;
import java.util.List;

public interface ReplyforumService {
    //添加
    int insertReplyforum(Replyforum replyforum);
    //删除
    int deleteReplyforum(Integer id);
    //查询所有回复
    List<Replyforum> find(Integer id);
}
