package com.domain;

import java.util.HashSet;
import java.util.Set;

public class Paste {
	private String id;
	private String title;
	private String content;
	private Integer offer;
	private Integer ansnum;
	private String createtime;
	private Integer glanceover;
	//是否完结帖子
	private Integer solve;
	private Integer isdelete;
	
	//最佳帖子
	private String answerid;
	
	private User user;
	//用户和帖子的回复关系是多对多的关系，设置set时就是一步到位
	private Set<User> userAnswerSet = new HashSet<User>();
	
	
	public Set<User> getUserAnswerSet() {
		return userAnswerSet;
	}
	public void setUserAnswerSet(Set<User> userAnswerSet) {
		this.userAnswerSet = userAnswerSet;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content.replaceAll("<br />", ".");
	}
	public Integer getOffer() {
		return offer;
	}
	public void setOffer(Integer offer) {
		this.offer = offer;
	}
	public Integer getAnsnum() {
		return ansnum;
	}
	public void setAnsnum(Integer ansnum) {
		this.ansnum = ansnum;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public Integer getGlanceover() {
		return glanceover;
	}
	public void setGlanceover(Integer glanceover) {
		this.glanceover = glanceover;
	}
	public Integer getSolve() {
		return solve;
	}
	public void setSolve(Integer solve) {
		this.solve = solve;
	}
	public Integer getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}
	public String getAnswerid() {
		return answerid;
	}
	public void setAnswerid(String answerid) {
		this.answerid = answerid;
	}
	

}
