package com.bdqn.blog.pojo;

import java.util.Date;

public class Forum {
	private Integer fid;
	private Integer uid;
	private Integer genreId;
	private Date createTime;
	private String title;
	private String content;
	private Integer readAmout;
	private Integer rewardIntegral;
	private User user;
	private Forumgenre forumgenre;

	public Integer getFid() {
		return fid;
	}

	public Integer getUid() {
		return uid;
	}

	public Integer getGenreId() {
		return genreId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public Integer getReadAmout() {
		return readAmout;
	}

	public Integer getRewardIntegral() {
		return rewardIntegral;
	}

	public User getUser() {
		return user;
	}

	public Forumgenre getForumgenre() {
		return forumgenre;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public void setGenreId(Integer genreId) {
		this.genreId = genreId;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setReadAmout(Integer readAmout) {
		this.readAmout = readAmout;
	}

	public void setRewardIntegral(Integer rewardIntegral) {
		this.rewardIntegral = rewardIntegral;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setForumgenre(Forumgenre forumgenre) {
		this.forumgenre = forumgenre;
	}


}