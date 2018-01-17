package com.bdqn.blog.controller;

import com.bdqn.blog.pojo.BlogGenre;
import com.bdqn.blog.server.BlogGenreServer;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * 博客分类控制器
 * @author linbingyang
 */
@Controller
@RequestMapping("/genre")
public class BlogGenreController {
    @Resource
    private BlogGenreServer blogGenreServer;

    private Logger logger = Logger.getLogger(BlogGenreController.class);

    /**
     * 新增
     * @author linbingyang
     * @param blogGenre 分类对象
     * @return  结果
     */
    @RequestMapping("/insert")
    @ResponseBody
    public String insert(BlogGenre blogGenre){
        logger.info("===>"+blogGenre.getGenreName());
        int insert = blogGenreServer.insert(blogGenre);
        if (insert>0){
            return "true";
        }else{
            return "fail";
        }
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @RequestMapping("/del")
    @ResponseBody
    public String del(@RequestParam("id") Integer id){
        logger.info("===>"+id);
    /*    if(blogGenreServer.delete(id)){
            return "true";
        }else{
            return "fail";
        }
        */
        return blogGenreServer.delete(id)? "true" : "fail";
    }

    /**
     * 更新
     * @param blogGenre
     * @return
     */
    @RequestMapping("/update")
    @ResponseBody
    public String update(BlogGenre blogGenre){
        logger.info("===>"+blogGenre.getGenreName()+";====>"+blogGenre.getId());
        return blogGenreServer.updata(blogGenre)?"true":"fail";
    }
}
