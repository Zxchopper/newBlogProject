package com.bdqn.blog.pojo;

import java.util.Date;

/**
 * 博客
 */
public class Blog {

	private Integer bid;//主键
	private Date createTime;//创建时间
	private String title;//主题
	private String contentPath;//内容文本路径
	private Integer readAmout;//访问数量
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