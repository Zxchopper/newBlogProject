package com.bdqn.blog.controller;


import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
        /*return  "bbs/bbsBizAdd";*/
       /* return  "bbs/bbsPartList";*/
      /* return  "bbs/bbsView";*/
      /*return  "blog/blogCategoryList";*/
      /*return  "blog/blogBizList";*/
       /* return  "blog/blogBizAdd";*/
        return  "blog/blogBizCategoryList";
        /*return  "blog/blogText";*/
        /*return "redirect:/bbsIndex.jsp";*/
    }

    @RequestMapping(value = "/test")
    @ResponseBody
    public Object forAjax(@RequestParam(value = "newCategory",required = false) String newCategory){
        System.out.println("====>come in");
        System.out.println(newCategory);
        return "true";
    }
}
