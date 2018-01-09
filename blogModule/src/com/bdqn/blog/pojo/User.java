package com.bdqn.blog.pojo;

import java.util.List;

/**
 * 用户表
 */
public class User {
	private Integer uid;//主键
	private String userName;//登录名
	private String userPassword;//登录密码
	private String nickName;//昵称
	private String name;//真实姓名
	private String sex;//性别
	private String email;//邮箱
	private String status;//状态
	private double money;//余额
	private Integer integral;//论坛积分
	private String describe;//个性签名
	private List<BlogComment> blogCommentList;//用户评论集合
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public Integer getIntegral() {
		return integral;
	}
	public void setIntegral(Integer integral) {
		this.integral = integral;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public List<BlogComment> getBlogCommentList() { return blogCommentList; }
	public void setBlogCommentList(List<BlogComment> blogCommentList) { this.blogCommentList = blogCommentList; }

}