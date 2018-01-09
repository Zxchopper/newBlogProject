package com.bdqn.blog.pojo;

import java.util.Date;

/**
 * 下载
 */
public class Download {

	private Integer did;//主键
	private Date createTime;//创建时间
	private String title;//主题
	private String describle;//描述
	private String downloadPath;//文件下载路径
	private Integer downloadAmout;//下载次数
	private Double price;//下载金额
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