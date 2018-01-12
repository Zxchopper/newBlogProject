package com.bdqn.blog.server.impl;

import com.bdqn.blog.dao.ForumMapper;
import com.bdqn.blog.pojo.Forum;
import com.bdqn.blog.server.ForumService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ForumServiceImpl implements ForumService{
    @Resource
    private ForumMapper forumMapper;
    @Override
    public int addForum(Forum forum) {
        return forumMapper.insertForum(forum);
    }

    @Override
    public int modifyForum(Forum forum) {
        return forumMapper.updateForum(forum);
    }

    @Override
    public int removeForum(Integer id) {
        return forumMapper.deleteForum(id);
    }

    @Override
    public List<Forum> pageFind(Integer pageNo, Integer pageSize) {
        return forumMapper.pageFind(pageNo, pageSize);
    }

    @Override
    public Forum show(Integer id){return forumMapper.show(id); }
}
