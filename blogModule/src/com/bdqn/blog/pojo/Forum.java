package com.bdqn.blog.pojo;

import java.util.Date;

public class Forum {

	private Integer fid;
	private Date createTime;
	private String content;
	private Integer readAmout;
	private Integer rewardIntegral;
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getReadAmout() {
		return readAmout;
	}
	public void setReadAmout(Integer readAmout) {
		this.readAmout = readAmout;
	}
	public Integer getRewardIntegral() {
		return rewardIntegral;
	}
	public void setRewardIntegral(Integer rewardIntegral) {
		this.rewardIntegral = rewardIntegral;
	}
	
	

}