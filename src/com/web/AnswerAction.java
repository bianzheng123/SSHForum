package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.domain.Answer;
import com.domain.Paste;
import com.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.AnswerService;
import com.service.PasteService;

public class AnswerAction extends ActionSupport implements ModelDriven<Answer>{
	
	public Answer answer = new Answer();
	private String pasteid;
	private AnswerService answerService;
	private PasteService pasteService;
	private String answerid;
	
	
	//删除Answer
	public String deleteAnswer() throws Exception {
		Paste paste = pasteService.findPasteByIdReturnPaste(pasteid);
		answerService.deleteAnswerById(answerid,paste);
		return "toDetail";
	}
	
	//添加Answer
	public String addAnswer() throws Exception {
		User user = (User)ActionContext.getContext().getSession().get("user");
		if(user == null) {
			ActionContext.getContext().put("error", "未登录不能回复");
			return "error";
		}
//		//回复时间
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String anstime = format.format(date);
		answer.setAnstime(anstime);
//		//同意数
		answer.setAgree(0);
//		//是否解决
		answer.setSolve(0);
		answer.setUser(user);
		Paste paste = pasteService.findPasteByIdReturnPaste(pasteid);
		answer.setPaste(paste);
		
		answerService.addAnswer(answer,paste);
		return "toDetail";
	}

	public void setAnswerService(AnswerService answerService) {
		this.answerService = answerService;
	}

	@Override
	public Answer getModel() {
		// TODO Auto-generated method stub
		return answer;
	}

	public String getPasteid() {
		return pasteid;
	}

	public void setPasteid(String pasteid) {
		this.pasteid = pasteid;
	}

	public void setPasteService(PasteService pasteService) {
		this.pasteService = pasteService;
	}

	public String getAnswerid() {
		return answerid;
	}

	public void setAnswerid(String answerid) {
		this.answerid = answerid;
	}

	
	
}
