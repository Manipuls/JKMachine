package com.demo.action.backstage;

import java.util.List;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.Right;
import com.demo.backstage.doman.Role;
import com.demo.backstage.doman.User;
import com.demo.backstage.service.rightService;
import com.demo.backstage.service.roleService;
import com.demo.backstage.service.userService;
import com.demo.backstage.service.impl.rightServiceImpl;
import com.demo.backstage.service.impl.roleServiceImpl;
import com.demo.backstage.service.impl.userServiceImpl;

public class userLoginAction extends BaseAction {

	/**
	 * 变量的意义 <br>
	 */
	private static final long serialVersionUID = 9090134144731938962L;
	
	
	//登陆时  登陆人的用户名密码
	public User user;
	private String retuenMsg;
	private userService userservice = new userServiceImpl();
	private roleService roleservice = new roleServiceImpl();
	private rightService rightservice = new rightServiceImpl();
	
	@Override
	public String execute() throws Exception {
		//查询用户是否存在
		try{
			User u= userservice.getUser(user);
			if(u!=null){
				Role r = u.getRole();
				Role role = roleservice.findAllRole(u.getId());
				List<Right> findAllRights = rightservice.findAllRights(u.getId());
				u.setRights(findAllRights);
				for (int i = 0; i < u.getRights().size(); i++) {
					List<Right> chRights = rightservice.findAllRights(u.getId(),findAllRights.get(i).getId());
					u.getRights().get(i).setChRights(chRights);
				}
				if(role!=null && findAllRights.size()>0){
					u.setRole(role);
					super.getSession().put("user", u);
					super.setParam("jsp", "后台主页", "view/backstage/menu.jsp");
				}
			}else{
				retuenMsg = "帐号或密码错误！";
				super.setParam("login", "后台登录", "view/backstage/login.jsp");
			}
		}catch(Exception e){
			retuenMsg = "帐号或密码错误！";
			super.setParam("login", "后台登录", "view/backstage/login.jsp");
			System.out.println(e.getMessage());
		}
		return "jsp";
	}
	

	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getRetuenMsg() {
		return retuenMsg;
	}
	public void setRetuenMsg(String retuenMsg) {
		this.retuenMsg = retuenMsg;
	}
	
	

}
