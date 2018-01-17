package com.bdqn.blog.server.impl;

import com.bdqn.blog.dao.ReplyforumMapper;
import com.bdqn.blog.pojo.Replyforum;
import com.bdqn.blog.server.ReplyforumService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ReplyforumServiceImpl implements ReplyforumService{
    @Resource
    private ReplyforumMapper replyforumMapper;
    @Override
    public int insertReplyforum(Replyforum replyforum) {
        return replyforumMapper.insertReplyforum(replyforum);
    }

    @Override
    public int deleteReplyforum(Integer id) {
        return replyforumMapper.deleteReplyforum(id);
    }

    @Override
    public List<Replyforum> find(Integer id) {
        return replyforumMapper.find(id);
    }
}
