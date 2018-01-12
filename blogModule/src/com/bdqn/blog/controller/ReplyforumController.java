package com.bdqn.blog.controller;

import com.bdqn.blog.pojo.Replyforum;
import com.bdqn.blog.server.ReplyforumService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/replyforum")
public class ReplyforumController {
    @Resource
    private ReplyforumService replyforumService;

    //添加
    public String insertReplyforum(@RequestParam("fid") Integer fid,@RequestParam("uid") Integer uid,@RequestParam("content") String content){
        Replyforum replyforum = new Replyforum();
        replyforum.setFid(fid);
        replyforum.setUid(uid);
        replyforum.setContent(content);
        replyforum.setCreateTime(new Date());
        int count=replyforumService.insertReplyforum(replyforum);
        if (count>0){
            return "";
        }
        return null;
    };
    //删除
    public String deleteReplyforum(@RequestParam("id") Integer id){
        int count=replyforumService.deleteReplyforum(id);
        if(count>0){
            return "";
        }
        return null;
    };
    //查询所有回复
    public String find(Model model,@RequestParam("id") Integer id){

        return null;
    };



}
