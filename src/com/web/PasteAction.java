package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.domain.Answer;
import com.domain.Paste;
import com.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.AnswerService;
import com.service.PasteService;
import com.service.PraiseService;
import com.utils.PageBean;

public class PasteAction extends ActionSupport implements ModelDriven<Paste> {

	public Paste paste = new Paste();

	private String pasteid;
	private PasteService pasteService;
	private AnswerService answerService;
	private PraiseService praiseService;

	//解决帖子
	public String solvePaste() throws Exception {
		pasteService.solvePasteByIdAndAnswerid(pasteid,paste.getAnswerid());
		ActionContext.getContext().put("pasteid", pasteid);
		
		return "toDetail";
	}
	
	// 查看帖子详细信息
	public String getDetail() throws Exception {
		
		User user = (User)ActionContext.getContext().getSession().get("user");
		
		// 得到最近热帖
		PageBean glanceoverPageBean = pasteService.getGlanceoverPageBean(null);
		ActionContext.getContext().put("glanceoverPageBean", glanceoverPageBean);
		// 得到最近热议
		PageBean ansnumPageBean = pasteService.getAnsnumPageBean(null);
		ActionContext.getContext().put("ansnumPageBean", ansnumPageBean);
		//获得帖子
		Paste paste = pasteService.findPasteByIdReturnPaste(pasteid);
		ActionContext.getContext().put("paste", paste);
		//获得该帖子的所有回复
		List<Answer> answerList = answerService.findAllAnswerByPasteid(pasteid);
		for (Answer answer : answerList) {
			if(user != null) {
				//判断用户是否点赞了该回复
				boolean success = praiseService.findPraiseByIdReturnPraise(user.getId(),answer.getId());
				if(success) {
					//如果查询到用户点赞了该回复，将loginUserIsAgree设置为1
					answer.setLoginUserIsAgree(1);
				}else {
					//如果没有查询到用户点赞了该回复，将loginUserIsAgree设置为0
					answer.setLoginUserIsAgree(0);
				}
			}else {
				//如果没登录，将loginUserIsAgree设置为0
				answer.setLoginUserIsAgree(0);
			}
		}
		ActionContext.getContext().put("answerList", answerList);
		
		return "detail";
	}

	public String addPaste() throws Exception {
		User user = (User) ActionContext.getContext().getSession().get("user");
		if (user == null) {
			ActionContext.getContext().put("error", "只有登录之后才可以发帖子");
			return "error";
		}

		paste.setAnsnum(0);
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String createtime = format.format(date);
		paste.setCreatetime(createtime);
		paste.setGlanceover(0);
		// 0代表未结帖，1-结束
		paste.setSolve(0);
		paste.setIsdelete(0);

		paste.setUser(user);

		pasteService.addPaste(paste);
		return "toIndex";
	}

	@Override
	public Paste getModel() {
		// TODO Auto-generated method stub
		return paste;
	}

	public void setPasteService(PasteService pasteService) {
		this.pasteService = pasteService;
	}

	public void setPasteid(String pasteid) {
		this.pasteid = pasteid;
	}

	public String getPasteid() {
		return pasteid;
	}

	public void setAnswerService(AnswerService answerService) {
		this.answerService = answerService;
	}

	public void setPraiseService(PraiseService praiseService) {
		this.praiseService = praiseService;
	}

}
