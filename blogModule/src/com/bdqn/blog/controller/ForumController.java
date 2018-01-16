package com.bdqn.blog.controller;

import com.bdqn.blog.pojo.Forum;
import com.bdqn.blog.pojo.Forumgenre;
import com.bdqn.blog.server.ForumService;
import com.bdqn.blog.server.ForumgenreService;
import com.bdqn.blog.utils.PageSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/fo")
public class ForumController {
    @Resource
    private ForumService forumService;
    @Resource
    private ForumgenreService forumgenreService;

    //论坛初始化显示
    @RequestMapping(value = "/bbs" ,method = RequestMethod.GET)
    public String bbsIndex(Model model){
        List<Forum> forumList=forumService.pageFind(0,10);
        List<Forumgenre> forumgenreList=find();
        model.addAttribute("forumList",forumList);
        model.addAttribute("forumgenreList",forumgenreList);
        return "bbsIndex";
    }
    //论坛分页显示

    @RequestMapping(value = "/pageFind")
    public String pageFind(@RequestParam Integer currentPageNo, @RequestParam Integer pageSize, Model model){
        PageSupport pageSupport=new PageSupport();
        if(currentPageNo !=null&& currentPageNo>=0){
            pageSupport.setCurrentPageNo(currentPageNo);
            pageSupport.setPageSize(pageSize);
            pageSupport.setTotalCount(forumService.totalCount());
            pageSupport.setTotalPageCountByRs();
            List<Forum> forumList=forumService.pageFind(pageSupport.getCurrentPageNo(),pageSupport.getPageSize());
            model.addAttribute("forumList",forumList);
            model.addAttribute("pageSupport",pageSupport);
            return "";
        }

        return null;
    }
    //添加新论坛

    @RequestMapping(value = "/addForum")
    public String addForum(@RequestParam(value = "uid") Integer uid,
                           @RequestParam(value = "fid") Integer fid,
                           @RequestParam(value = "content") String content,
                           @RequestParam(value="title") String title){
        Forum forum=new Forum();
        forum.setUid(uid);
        forum.setFid(fid);
        forum.setCreateTime(new Date());
        forum.setTitle(title);
        forum.setContent(content);
        forum.setReadAmout(0);
        forum.setRewardIntegral(0);
        int count=forumService.insertForum(forum);
        if (count>0){
            return "";
        }
        return null;
    }

    //修改论坛
    @RequestMapping(value = "forumgenreList")
    public String modifyForum(Forum forum){
        int count=forumService.updateForum(forum);
        if (count>0){
            return "";
        }
        return null;
    }

    //删除论坛
    @RequestMapping(value = "removeForum")
    public String removeForum(@RequestParam(value = "fid") Integer fid){
        int count=forumService.deleteForum(fid);
        if (count>0){
            return "";
        }
        return null;
 }

    //显示论坛
    @RequestMapping(value = "show")
    public String show(@RequestParam(value = "fid") Integer fid){
        Forum forum=null;
        forum=forumService.show(fid);
        if (forum!=null){
            return "";
        }
        return null;
    }

    //显示所有分类
    public List<Forumgenre> find(){
        return forumgenreService.find();
    }

}
