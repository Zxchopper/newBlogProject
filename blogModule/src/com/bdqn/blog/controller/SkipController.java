package com.bdqn.blog.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *  页面跳转控制器
 *  @author linbingyang
 *  @version 1.0 2018-01-10
 */
@Controller
@RequestMapping(value = "/skip")
public class SkipController {
    /**
     * 跳转至博客页面
     * @return
     */
    @RequestMapping("/toblog")
    public String toBlog(){
        return "redirect:/blogIndex.jsp";
    }


    /**
     * 跳转至论坛页面
     * @return
     */
    @RequestMapping(value = "/tobbs",method = RequestMethod.GET)
    public String toBBs(){
        /*return "bbs/bbsMyList";*/
        return "redirect:/bbsIndex.jsp";
    }
}
