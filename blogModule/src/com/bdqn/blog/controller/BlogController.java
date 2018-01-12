package com.bdqn.blog.controller;

import com.bdqn.blog.pojo.Blog;
import com.bdqn.blog.pojo.BlogGenre;
import com.bdqn.blog.server.BlogGenreServer;
import com.bdqn.blog.server.BlogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;


/**
 *Created by IntelliJ IDEA.
 User: caiwenfeng
 Date: 2018/1/7

 */
@Controller
@RequestMapping(value="/blog")
public class BlogController {

    @Resource
    private BlogService blogService;
    @Resource
    private BlogGenreServer BlogGenreServer;
    //增加博客
    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    public String addBolg(@RequestParam String title,@RequestParam String contentPath){
        System.out.println(1111112);
        Blog blog=new Blog();
        blog.setTitle(title);
        blog.setContentPath(contentPath);
      if(blog !=null){
          blog.setBid(1011);
          blog.setReadAmout(66);
          blog.setCreateTime(new Date());
          blogService.addBlog(blog);
          System.out.println(blog.getBid()+"GGGGG");
          return  "blogWelcome";
      }


        return null;
    }
    //修改博客
    @RequestMapping("/modifyBlog")
    public  String modifyBlog(@RequestParam(value = "blog" ,required = false)Blog blog){
        if(blog !=null){
            blogService.modifyBlog(blog);
            return "blogWelcome";
        }
        return null;
    }

    //删除博客
    @RequestMapping("/removeBlog")
    public  String removeBlog(Integer id){
        if(id !=null){
            blogService.removeBlog(id);
            return "blogWelcome";
        }
        return null;
    }
    //查询博客
    @RequestMapping("/selectBlog")
    public String selectBlog(Model Model , @RequestParam(value = "pageNo" ,required = false) int pageNo,
                             @RequestParam(value = "uid" ,required = false)   int uid,
                             @RequestParam(value = "title" ,required = false)    String title){
        List<BlogGenre> BlogGenres=BlogGenreServer.getBlogGenreAll();
        List<Blog> blogs= blogService.selectAllBlog(uid,title,pageNo,3);
        Model.addAttribute("blogs",blogs);
        Model.addAttribute("BlogGenres",BlogGenres);
        return  "blogWelcome";
    }




}
