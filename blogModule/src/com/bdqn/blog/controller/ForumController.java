package com.bdqn.blog.controller;

import com.bdqn.blog.pojo.Forum;
import com.bdqn.blog.pojo.Forumgenre;
import com.bdqn.blog.server.ForumService;
import com.bdqn.blog.server.ForumgenreService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/forum")
public class ForumController {
    @Resource
    private ForumService forumService;
    @Resource
    private ForumgenreService forumgenreService;

    //论坛分页显示
    public String pageFind(@RequestParam Integer pageNo, @RequestParam Integer pageSize, Model model){
        if(pageNo !=null&& pageNo>=0){
            List<Forum> forumList=forumService.pageFind(pageNo,pageSize);
            model.addAttribute("forumList",forumList);
            return "";
        }

        return null;
    }

    //添加新论坛
    public String addForum(@RequestParam(value = "uid") Integer uid,@RequestParam(value = "fid") Integer fid,@RequestParam(value = "content") String content){
        Forum forum=new Forum();
        forum.setUid(uid);
        forum.setFid(fid);
        forum.setCreateTime(new Date());
        forum.setContent(content);
        forum.setReadAmout(0);
        forum.setRewardIntegral(0);
        int count=forumService.addForum(forum);
        if (count>0){
            return "";
        }
        return null;
    }

    //修改论坛
    public String modifyForum(Forum forum){
        int count=forumService.modifyForum(forum);
        if (count>0){
            return "";
        }
        return null;
    }

    //删除论坛
    public String removeForum(@RequestParam(value = "id") Integer id){
        int count=forumService.removeForum(id);
        if (count>0){
            return "";
        }
        return null;
 }

    //显示论坛
    public String show(@RequestParam(value = "id") Integer id){
        Forum forum=null;
        forum=forumService.show(id);
        if (forum!=null){
            return "";
        }
        return null;
    }

    //显示所有分类
    public String find(Model model){
        List<Forumgenre> forumgenreList =forumgenreService.find();
        model.addAttribute("forumgenreList",forumgenreList);
        return "";
    }

}
