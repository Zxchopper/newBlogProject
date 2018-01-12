package com.bdqn.blog.server.impl;

import com.bdqn.blog.dao.ForumgenreMapper;
import com.bdqn.blog.pojo.Forumgenre;
import com.bdqn.blog.server.ForumgenreService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ForumgenreServiceImpl implements ForumgenreService {
    @Resource
    private ForumgenreMapper forumgenreMapper;

    @Override
    public List<Forumgenre> find() {
        return forumgenreMapper.find();
    }
}
