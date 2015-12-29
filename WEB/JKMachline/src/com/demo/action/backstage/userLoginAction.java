package com.demo.action.backstage;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.User;
import com.demo.backstage.service.userService;
import com.demo.backstage.service.impl.userServiceImpl;

public class userLoginAction extends BaseAction {

	/**
	 * 变量的意义 <br>
	 */
	private static final long serialVersionUID = 9090134144731938962L;
	userService userservice = new userServiceImpl();
	
	
	//登陆时  登陆人的用户名密码
	public User user;
	
	
	@Override
	public String execute() throws Exception {
		//查询用户是否存在
		User u = userservice.getUser(user);
		
		System.out.println(u.getRole());
		
		if(u!=null){
			System.out.println("登录成功！");
			super.setParam("jsp", "后台管理主业", "view/backstage/menu.jsp");
		}
		return super.execute();
	}
	

	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	

}
