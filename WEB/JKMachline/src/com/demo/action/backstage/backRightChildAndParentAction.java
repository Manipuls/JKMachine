package com.demo.action.backstage;

import org.apache.log4j.Logger;

import net.sf.json.JSONObject;

import com.demo.action.BaseAction;
import com.demo.backstage.service.rightService;
import com.demo.backstage.service.impl.rightServiceImpl;

public class backRightChildAndParentAction extends BaseAction {

	/**
	 * 变量的意义 <br>
	 */
	private static final long serialVersionUID = -7448249479536982933L;
	Logger log = Logger.getLogger(backRightChildAndParentAction.class);

	private rightService  rightservice = new rightServiceImpl();
	private rightServiceImpl  rightserviceompl = new rightServiceImpl();
	
	private JSONObject jsonObj;
	private Integer page;
	private Integer rows;
	private Integer id;
	
	
	/**
	 * 查询父类权限
	 * liufei 2016-1-18
	 * @return
	 */
	public String getParentRights(){
		String parentRightsToJson = rightserviceompl.getParentRightsToJson((page-1)*rows, rows);
		jsonObj = JSONObject.fromObject(parentRightsToJson);
		return "json";
	}
	public String getChildRights(){
		String childRightsToJson = rightserviceompl.getChildRightsToJson(id);
		jsonObj = JSONObject.fromObject(childRightsToJson);
		return "json";
	}

	
	
	
	public JSONObject getJsonObj() {
		return jsonObj;
	}
	public void setJsonObj(JSONObject jsonObj) {
		this.jsonObj = jsonObj;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	
	

}
