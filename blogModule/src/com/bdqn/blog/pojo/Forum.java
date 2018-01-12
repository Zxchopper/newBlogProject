package com.bdqn.blog.pojo;

import java.util.Date;

public class Forum {

	private Integer id;
	private Integer uid;
	private Integer fid;
	private Date createTime;
	private String content;
	private Integer readAmout;
	private Integer rewardIntegral;
	private User user;
	private Forumgenre forumgenre;

	public void setForumgenre(Forumgenre forumgenre) {
		this.forumgenre = forumgenre;
	}

	public Forumgenre getForumgenre() {

		return forumgenre;
	}

	public void setUser(User user) {this.user = user;}
	public User getUser(){return user;	}
	public Integer getId() {return id;	}
	public void setId(Integer id) {this.id = id;}
	public Integer getUid() {return uid;}
	public void setUid(Integer uid) {this.uid = uid;}
	public Integer getFid(){return fid;}
	public void setFid(Integer fid){this.fid = fid;}
	public Date getCreateTime(){return createTime;}
	public void setCreateTime(Date createTime){this.createTime = createTime;}
	public String getContent(){return content;}
	public void setContent(String content){this.content = content;}
	public Integer getReadAmout(){return readAmout;}
	public void setReadAmout(Integer readAmout){this.readAmout = readAmout;}
	public Integer getRewardIntegral(){	return rewardIntegral;}
	public void setRewardIntegral(Integer rewardIntegral){this.rewardIntegral = rewardIntegral;}
	
	

}