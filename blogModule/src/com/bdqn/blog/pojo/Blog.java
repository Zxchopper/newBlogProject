package com.bdqn.blog.pojo;

import java.util.Date;
import java.util.List;

/**
 * 博客
 */
public class Blog {

	private Integer bid;//主键
	private Date createTime;//创建时间
	private String title;//主题
	private Integer uid;//用户id
	private String contentPath;//内容文本路径
	private Integer readAmout;//访问数量
	private Integer genreId;//分类id
    private List<BlogComment> blogCommentList;//博客评论集合
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
	public List<BlogComment> getBlogCommentList() { return blogCommentList; }
	public void setBlogCommentList(List<BlogComment> blogCommentList) { this.blogCommentList = blogCommentList; }

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getGenreId() {
		return genreId;
	}

	public void setGenreId(Integer genreId) {
		this.genreId = genreId;
	}

	@Override
	public String toString() {
		return "Blog{" +
				"bid=" + bid +
				", createTime=" + createTime +
				", title='" + title + '\'' +
				", uid=" + uid +
				", contentPath='" + contentPath + '\'' +
				", readAmout=" + readAmout +
				", genreId=" + genreId +
				", blogCommentList=" + blogCommentList +
				'}';
	}
}