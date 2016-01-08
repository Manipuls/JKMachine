package com.demo.backstage.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.demo.backstage.dao.userDao;
import com.demo.backstage.doman.User;
import com.demo.backstage.service.userService;
import com.demo.util.CreateSession;

public class userServiceImpl implements userService {
	private userDao userdao;
	Logger log = Logger.getLogger(userServiceImpl.class);
	@Override
	public User getUser(User u) {
		SqlSession session = new CreateSession().getSession();
		userdao = session.getMapper(userDao.class);
		User user = null;
		try {
			user = userdao.getUser(u);
		} catch (Exception e) {
			log.info("登录失败！用户名或密码错误。  错误信息："+e.getMessage());
		}
		session.close();
		return user;
	}

	@Override
	public int saveUser(User u) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String queryAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
