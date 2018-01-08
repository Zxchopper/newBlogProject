package com.bdqn.blog.entity;

import java.io.Serializable;

/**
 *Created by IntelliJ IDEA.
 User: fujiawei
 Date: 2018/1/6
 Time: 16:24

 */
public class User implements Serializable{
    private int id;
    private  String name;
    private  String pwd;


    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPwd() {
        return pwd;
    }
    public  User(){


    }
}
