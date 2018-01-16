package com.bdqn.blog.controller;

import com.bdqn.blog.pojo.Blog;
import com.bdqn.blog.pojo.BlogGenre;
import com.bdqn.blog.server.BlogGenreServer;
import com.bdqn.blog.server.BlogService;
import com.bdqn.blog.utils.PageSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
    @Autowired
    private BlogService blogService;

    @Resource
    @Autowired
    private BlogGenreServer blogGenreServer;


    private PageSupport pageSupport=new PageSupport();
    //增加博客
    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    public String addBolg(@RequestParam Integer genreId,HttpServletRequest request,@RequestParam String title,@RequestParam String contentPath){
        HttpSession Session= request.getSession();
        Integer uid=(Integer) Session.getAttribute("uid");
                uid=3;
        if(title!=null&&uid!=null&&contentPath!=null&&genreId!=null){
           Blog blog=new Blog();
           blog.setTitle(title);
           blog.setContentPath(contentPath);
           blog.setCreateTime(new Date());
           blog.setUid(uid);
           blog.setGenreId(genreId);
           blog.setReadAmout(0);
           blogService.addBlog(blog);
           System.out.println("ggggg");
       }


          return  "redirect:selectUserBlog";
      }

    /**
     * 调到增加页面
     *
     * @return
     */
    @RequestMapping(value = "/addPage" ,method = RequestMethod.GET)
    public String addBlogPage(){

        return  "blog/blogBizAdd";
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
            Blog blog=blogService.selectByBid(id);
            if(blog!=null){
                blogService.removeBlog(id);
            }

            return "blogWelcome";
        }
        return null;
    }
    /**
     *  查询博客
     *
     *  传入  uid用户ID   ， like  title 标题   ，pageNo
     */
    public void selectBlog(Model Model , @RequestParam(value = "pageNo" ,required = false) Integer pageNo,
                             HttpServletRequest request,
                             @RequestParam(value = "title" ,required = false)    String title){
        List<BlogGenre> BlogGenres=blogGenreServer.getBlogGenreAll();
      HttpSession Session= request.getSession();
        Integer uid=(Integer) Session.getAttribute("uid");
        if(pageNo!=null){
            pageSupport.setCurrentPageNo(pageNo);
        }
        System.out.println("uid"+uid+",title"+title+"pageNo"+(pageSupport.getCurrentPageNo()-1)+"pageSize"+pageSupport.getPageSize());
        List<Blog> blogs= blogService.selectAllBlog(uid,title,pageSupport.getCurrentPageNo()-1,pageSupport.getPageSize());

        pageSupport.setTotalCount(blogService.totalCount(uid,title) );

        pageSupport.setTotalPageCountByRs();

        Model.addAttribute("pages",pageSupport);
        Model.addAttribute("blogs",blogs);
        Model.addAttribute("BlogGenres",BlogGenres);
        //return  "redirect:blog/page";
    }

    /**
     * 调用selectBlog实现的不同页面跳转
     * Model 传入值，判断值的不用   return页面
     * @return
     */
    @RequestMapping("/selectBlog")
    public String blog(Model Model , @RequestParam(value = "pageNo" ,required = false) Integer pageNo,
                       HttpServletRequest request,
                       @RequestParam(value = "title" ,required = false)    String title){
        selectBlog(Model,pageNo,request,title);
                return "redirect: blogIndex";
    }

    /**
     * 返回  blogBizList
     * @param Model
     * @param pageNo
     * @param request
     * @param title
     * @return
     */
    @RequestMapping("/selectUserBlog")
    public String selectUserBlog(Model Model , @RequestParam(value = "pageNo" ,required = false) Integer pageNo,
                       HttpServletRequest request,
                       @RequestParam(value = "title" ,required = false)    String title){
        selectBlog(Model,pageNo,request,title);
        return "blog/blogBizList";

    }





}
