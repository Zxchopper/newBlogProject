package com.bdqn.blog.pojo;

import java.util.Date;

public class Download {

	private Integer did;
	private Date createTime;
	private String title;
	private String describle;
	private String downloadPath;
	private Integer downloadAmout;
	private Double price;
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
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
	public String getDescrible() {
		return describle;
	}
	public void setDescrible(String describle) {
		this.describle = describle;
	}
	public String getDownloadPath() {
		return downloadPath;
	}
	public void setDownloadPath(String downloadPath) {
		this.downloadPath = downloadPath;
	}
	public Integer getDownloadAmout() {
		return downloadAmout;
	}
	public void setDownloadAmout(Integer downloadAmout) {
		this.downloadAmout = downloadAmout;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}

	
}