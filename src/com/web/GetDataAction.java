package com.web;

import java.util.List;

import com.domain.Paste;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.PasteService;
import com.service.UserService;
import com.utils.PageBean;

public class GetDataAction extends ActionSupport{

	private PasteService pasteService;
	private UserService userService;
	//根据页面获得当前页这个信息
	private Integer currentPage;
	
	public String getData() throws Exception {
		//得到帖子
		PageBean pastePageBean = pasteService.getPastePageBean(currentPage);
		ActionContext.getContext().put("pastePageBean", pastePageBean);
		//得到最近热帖
		PageBean glanceoverPageBean = pasteService.getGlanceoverPageBean(currentPage);
		ActionContext.getContext().put("glanceoverPageBean", glanceoverPageBean);
		//得到最近热议
		PageBean ansnumPageBean = pasteService.getAnsnumPageBean(currentPage);
		ActionContext.getContext().put("ansnumPageBean", ansnumPageBean);
		//得到专家排行榜
		PageBean userPageBean = userService.getUserPageBean(currentPage);
		ActionContext.getContext().put("userPageBean", userPageBean);
		
		return "index";
	}

	public void setPasteService(PasteService pasteService) {
		this.pasteService = pasteService;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
}
