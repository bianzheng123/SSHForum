package com.vo;

import java.io.Serializable;

import com.domain.Answer;
import com.domain.User;

public class PrimaryKey implements Serializable{
	private User user;
	private Answer answer;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Answer getAnswer() {
		return answer;
	}
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
	
}
