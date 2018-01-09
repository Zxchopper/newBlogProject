package com.bdqn.blog.pojo;

import java.util.Date;


public class Blog {

	private Integer bid;
	private Date createTime;
	private String title;
	private String contentPath;
	private Integer readAmout;
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContentPath() {
		return contentPath;
	}
	public void setContentPath(String contentPath) {
		this.contentPath = contentPath;
	}
	public Integer getReadAmout() {
		return readAmout;
	}
	public void setReadAmout(Integer readAmout) {
		this.readAmout = readAmout;
	}

	
}