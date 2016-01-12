package com.demo.action.backstage;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.backEnumsService;
import com.demo.backstage.service.impl.backEnumsServiceImpl;

public class backEnumsAction extends BaseAction {
	private static final long serialVersionUID = 3681581436540417646L;
	Logger log = Logger.getLogger(backEnumsAction.class);
	public JSONObject jsonObj;
	private Integer page;
	private Integer rows;
	private String queryId;
	
	private backEnumsService backenumsservice = new backEnumsServiceImpl();
	/**
	 * 查询枚举值parents
	 * liufei 2016-1-12
	 * @return
	 */
	public String getBackEnmusParentForList(){
		util utils = new util();
		utils.setPage((page-1)*rows);
		utils.setRows(rows);
		log.info(" [ =====方法：getBackEnmusParentForList，传入参数：page:"+utils.getPage()+",rows:"+utils.getRows()+"============ ] ");
		String findAllBackEnums = backenumsservice.findAllBackEnums(utils);
		jsonObj = JSONObject.fromObject(findAllBackEnums);
		log.info(" [ =====访问方法：getBackEnmusParentForList结束，jsonObj："+jsonObj+"====== ] ");
		return "json";
	}
	
	public String getBackEnmusByQueryId(){
		log.info(" [ =====方法：getBackEnmusByQueryId，传入参数：queryId:"+queryId+"============ ] ");
		String findAllBackEnums = backenumsservice.findBackEnumsByQueryIdToJson(queryId);
		jsonObj = JSONObject.fromObject(findAllBackEnums);
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
	public String getQueryId() {
		return queryId;
	}
	public void setQueryId(String queryId) {
		this.queryId = queryId;
	}
	

}
