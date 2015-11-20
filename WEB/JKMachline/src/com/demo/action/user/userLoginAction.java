package com.demo.action.user;

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
	 * 
	 */
	private static final long serialVersionUID = 8158073996331539890L;
	private String retuenMsg;
	private User user;
	private userService userservice = new userServiceImpl();
	private roleService roleservice = new roleServiceImpl();
	private rightService rightservice = new rightServiceImpl();
	
	@Override
	public String execute() throws Exception {
		try{
			User u= userservice.getUser(user);
			
			Role r = u.getRole();
			System.out.println(r);
			
			if(u!=null){
				Role role = roleservice.findAllRole(u.getId());
				List<Right> findAllRights = rightservice.findAllRights(u.getId());
				if(role!=null && findAllRights.size()>0){
					u.setRole(role);
					u.setRights(findAllRights);
					super.getSession().put("user", u);
					super.setParam("jsp", "后台主页", "view/backstage/index.jsp");
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
		return super.execute();
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
