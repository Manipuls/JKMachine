package com.demo.action.user;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.User;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.rightService;
import com.demo.backstage.service.impl.rightServiceImpl;

public class zTreeMenuAction extends BaseAction {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1778072097661213539L;
	private String resourceType;
	private JSONArray jsonObj;
	private rightService rightservice = new rightServiceImpl();
	
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		try{
			User user = (User)super.getSession().get("user");
			
			util u = new util();
			u.setInteger1(user.getId());
			u.setStr1(resourceType);
			String findZtreeMenu = rightservice.findZtreeMenu(u);
			jsonObj = JSONArray.fromObject(findZtreeMenu);
			//super.setJson("json");
			return "json";
		}catch(Exception e){
			System.out.println("获取菜单信息失败："+e.getMessage());
		}
		
		return "json";
	}

	public String getResourceType() {
		return resourceType;
	}

	public void setResourceType(String resourceType) {
		this.resourceType = resourceType;
	}

	public JSONArray getJsonObj() {
		return jsonObj;
	}

	public void setJsonObj(JSONArray jsonObj) {
		this.jsonObj = jsonObj;
	}


	
	
	

}
