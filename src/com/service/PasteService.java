package com.service;

import java.util.List;

import com.dao.AnswerDao;
import com.dao.PasteDao;
import com.dao.UserDao;
import com.domain.Answer;
import com.domain.Paste;
import com.domain.User;
import com.utils.PageBean;

public class PasteService {

	private UserDao userDao;
	private PasteDao pasteDao;
	private AnswerDao answerDao;
	
	public void solvePasteByIdAndAnswerid(String pasteid, String answerid) {
		//给回复的人加金币
		Paste paste = pasteDao.findPasteByIdReturnPaste(pasteid);
		//通过answerid查找userid
		Answer answer = answerDao.findAnswerById(answerid);
		//通过userid找user对象
		//获得answer下的user对象（持久化类型对象）
		//因为是持久化类型对象，即可直接修改属性，同步到数据库
		User user = answer.getUser();
		user.setCoin(user.getCoin() + paste.getOffer());
		//采纳回复
		pasteDao.solvePasteByIdAndAnswerid(pasteid, answerid);
	}
	
	public PageBean getAnsnumPageBean(Integer currentPage) {
		//获得所有的帖子数目
		Integer totalCount = pasteDao.findAllPasteNum();
		//创建PageBean
		PageBean ansnumPageBean = new PageBean(currentPage, totalCount, 8);
		//得到list
		List<Paste> list = pasteDao.getAnsnumPageList();
		//封装list
		ansnumPageBean.setList(list);
		
		return ansnumPageBean;
	}
	
	public PageBean getGlanceoverPageBean(Integer currentPage) {
		Integer totalCount = pasteDao.findAllPasteNum();
		PageBean glanceoverPageBean = new PageBean(currentPage, totalCount, 8);
		List<Paste> list = pasteDao.getGlanceoverPageList();
		
		glanceoverPageBean.setList(list);
		return glanceoverPageBean;
	}
	
	public PageBean getPastePageBean(Integer currentPage) {
		Integer totalCount = pasteDao.findAllPasteNum();
		PageBean pageBean = new PageBean(currentPage, totalCount, 3);
		List<Paste> list = pasteDao.getPastePageList(pageBean.getStart(),pageBean.getPageSize());
		pageBean.setList(list);
		return pageBean;
	}
	
	public void addPaste(Paste paste) {
		pasteDao.addPaste(paste);
	}
	
	public List<Paste> findAllPaste() {
		return pasteDao.findAllPaste();
	}
	
	public Paste findPasteByIdReturnPaste(String pasteid) {
		Paste paste = pasteDao.findPasteByIdReturnPaste(pasteid);
		paste.setGlanceover(paste.getGlanceover() + 1);
		return paste;
	}

	public void setPasteDao(PasteDao pasteDao) {
		this.pasteDao = pasteDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void setAnswerDao(AnswerDao answerDao) {
		this.answerDao = answerDao;
	}


	

	
}
