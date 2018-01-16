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
    public int insertForum(Forum forum) {
        return 0;
    }

    @Override
    public int updateForum(Forum forum) {
        return forumMapper.updateForum(forum);
    }

    @Override
    public int deleteForum(Integer fid) {
        return forumMapper.deleteForum(fid);
    }

    @Override
    public List<Forum> pageFind(Integer currentPageNo, Integer pageSize) {
        return forumMapper.pageFind(currentPageNo,pageSize);
    }

    @Override
    public int totalCount() {
        return forumMapper.totalCount();
    }

    @Override
    public Forum show(Integer uid) {
        return forumMapper.show(uid);

    }
}
