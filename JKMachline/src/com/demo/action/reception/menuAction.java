package com.demo.action.reception;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.demo.action.BaseAction;
import com.demo.backstage.service.menuService;
import com.demo.backstage.service.impl.menuServiceImpl;

public class menuAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4126011714259151796L;
	
	//public JSONObject jsonObj;
	public JSONObject jsonObj;
	private menuService menuservice = new menuServiceImpl();
	
	
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//查询菜单栏数据
		String findAll = menuservice.menuToJson();
		jsonObj = JSONObject.fromObject(findAll);
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
