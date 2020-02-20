package com.service;

import java.util.List;

import com.dao.UserDao;
import com.domain.User;
import com.utils.PageBean;

public class UserService {

	private UserDao userDao;
	
	public PageBean getUserPageBean(Integer currentPage) {
		Integer totalCount = userDao.findAllUserNum();
		PageBean userPageBean = new PageBean(currentPage, totalCount, 8);
		List<User> list = userDao.getUserPageBean();
		userPageBean.setList(list);
		return userPageBean;
	}
	
	public User findUserByUsernameReturnUser(User user) {
		return userDao.findUserByUsernameReturnUser(user);
	}
	
	public int checkUser(User user) {
		User temp = userDao.findUserByUsernameReturnUser(user);
		//用户名不存在
		if(temp == null) {
			return 1;
		}
		//判断密码是否相同
		if(temp.getPassword().equals(user.getPassword())) {
			if(temp.getState() == 1) {
				//登陆成功
				return 0;
			}else {
				//没有激活
				return 3;
			}
		}else {
			//密码错误
			return 2;
		}
	}
	
	public void activeUser(String userCode) {
		userDao.activeUser(userCode);
	}
	
	public void addUser(User user) {
		userDao.addUser(user);
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public boolean findUserByUsername(String username) {
		Long count = userDao.findUserByUsernameReturnNum(username);
		return count==0?true:false;
	}
	
}
