package com.demo.action.backstage;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.demo.action.BaseAction;
import com.demo.backstage.service.roleService;
import com.demo.backstage.service.impl.roleServiceImpl;

public class backRoleAction extends BaseAction {

	/**
	 * 变量的意义 <br>
	 */
	private static final long serialVersionUID = 6429752441321386479L;
	Logger log = Logger.getLogger(backRightAction.class);
	
	public JSONObject jsonObj;
	
	
	private roleService roleservice = new roleServiceImpl();
	
	public String getAllRoles(){
		String allRoles = roleservice.getAllRoles();
		jsonObj = JSONObject.fromObject(allRoles);
		System.out.println(jsonObj);
		return "json";
	}
	
	
	
	
	
	
	
	

	public JSONObject getJsonObj() {
		return jsonObj;
	}

	public void setJsonObj(JSONObject jsonObj) {
		this.jsonObj = jsonObj;
	}
}
