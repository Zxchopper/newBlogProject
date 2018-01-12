package com.bdqn.blog.pojo;

import java.util.Date;

public class Replyforum {
    private Integer id;
    private Integer fid;
    private Integer uid;
    private Date createTime;
    private Integer getIntegral;
    private Integer floor;
    private String content;
    private User user;

    public void setUser(User user) {
        this.user = user;
    }

    public User getUser() {

        return user;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public void setGetIntegral(Integer getIntegral) {
        this.getIntegral = getIntegral;
    }

    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getId() {
        return id;
    }

    public Integer getFid() {
        return fid;
    }

    public Integer getUid() {
        return uid;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public Integer getGetIntegral() {
        return getIntegral;
    }

    public Integer getFloor() {
        return floor;
    }

    public String getContent() {
        return content;
    }
}
