package com.bdqn.blog.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 博客评论
 */
public class BlogComment implements Serializable {

    private int id;//主键
    private Date createTime;//评论时间
    private String content;//评论内容
    private int floor;//评论楼层

    public int getId() { return id; }
    public Date getCreateTime() { return createTime; }
    public String getContent() { return content; }
    public int getFloor() { return floor; }
    public void setId(int id) { this.id = id; }
    public void setCreateTime(Date createTime) { this.createTime = createTime; }
    public void setContent(String content) { this.content = content; }
    public void setFloor(int floor) { this.floor = floor; }

}
