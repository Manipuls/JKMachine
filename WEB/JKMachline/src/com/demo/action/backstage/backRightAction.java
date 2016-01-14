package com.demo.action.backstage;

import net.sf.json.JSONArray;

import org.apache.log4j.Logger;

import com.demo.action.BaseAction;
import com.demo.backstage.service.rightService;
import com.demo.backstage.service.impl.rightServiceImpl;

public class backRightAction extends BaseAction {

	/**
	 * 变量的意义 <br>
	 */
	private static final long serialVersionUID = 1914775578623349116L;
	Logger log = Logger.getLogger(backRightAction.class);
	
	public JSONArray jsonObj;
	private Integer id;
	
	private rightService  rightservice = new rightServiceImpl();
	public String getAllRights(){
		String rights = rightservice.getRights(id);
		jsonObj = JSONArray.fromObject(rights);
		log.info(" [ =====访问方法：getAllRights结束，jsonObj："+jsonObj+"====== ] ");
		return "json";
	}
	
	
	
	
	
	public JSONArray getJsonObj() {
		return jsonObj;
	}
	public void setJsonObj(JSONArray jsonObj) {
		this.jsonObj = jsonObj;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	
	
}
