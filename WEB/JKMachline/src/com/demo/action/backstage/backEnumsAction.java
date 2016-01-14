package com.demo.action.backstage;


import java.util.Date;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.User;
import com.demo.backstage.doman.backEnums;
import com.demo.backstage.doman.backEnumsParent;
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
	private backEnumsParent enumsParent;
	private backEnums backenums;
	
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
	
	/**
	 * 查询具体枚举值List
	 * liufei 2016-1-14
	 * @return
	 */
	public String getBackEnmusByQueryId(){
		log.info(" [ =====方法：getBackEnmusByQueryId，传入参数：queryId:"+queryId+"============ ] ");
		String findAllBackEnums = backenumsservice.findBackEnumsByQueryIdToJson(queryId);
		jsonObj = JSONObject.fromObject(findAllBackEnums);
		return "json";
	}
	
	
	/**
	 * 新增枚举类型
	 * liufei 2016-1-12
	 * @return
	 */
	public String saveEnumsParent(){
		//获取当前登陆人
		User user = (User)super.getSession().get("user");
		Date date = new Date();
		//拼装保存对象
		enumsParent.setCreateUser(user.getName());
		enumsParent.setUpdateUser(user.getName());
		enumsParent.setIsDelete(1);
		enumsParent.setEdesc("无");
		enumsParent.setCreateTime(new java.sql.Timestamp(date.getTime()));
		enumsParent.setUpdateTime(new java.sql.Timestamp(date.getTime()));
		//调用保存对象的方法
		String saveBackEnumsParent = backenumsservice.saveBackEnumsParent(enumsParent);
		jsonObj = JSONObject.fromObject(saveBackEnumsParent);
		return "json";
	}
	
	/**
	 * 给枚举类型新增枚举值
	 * liufei 2016-1-12
	 * @return
	 */
	public String saveBackEnums(){
		//获取当前登陆人
		User user = (User)super.getSession().get("user");
		Date date = new Date();
		//拼装保存对象
		backenums.setCreateUser(user.getName());
		backenums.setUpdateUser(user.getName());
		backenums.setCreateTime(new java.sql.Timestamp(date.getTime()));
		backenums.setUpdateTime(new java.sql.Timestamp(date.getTime()));
		//调用保存对象的方法
		String saveBackEnumsParent = backenumsservice.saveBackEnums(backenums);
		jsonObj = JSONObject.fromObject(saveBackEnumsParent);
		return "json";
	}
	
	
	/**
	 * 修改枚举类型
	 * liufei 2016-1-14
	 * @return
	 */
	public String updateEnumsParent(){
		//获取当前登陆人
		User user = (User)super.getSession().get("user");
		Date date = new Date();
		//拼装保存对象
		enumsParent.setUpdateUser(user.getName());
		enumsParent.setUpdateTime(new java.sql.Timestamp(date.getTime()));
		//调用保存对象的方法
		String updateBackEnumsParent = backenumsservice.updateBackEnumsParent(enumsParent);
		jsonObj = JSONObject.fromObject(updateBackEnumsParent);
		return "json";
	}
	/**
	 * 修改枚举值
	 * liufei 2016-1-14
	 * @return
	 */
	public String updateEnums(){
		//获取当前登陆人
		User user = (User)super.getSession().get("user");
		Date date = new Date();
		//拼装保存对象
		backenums.setUpdateUser(user.getName());
		backenums.setUpdateTime(new java.sql.Timestamp(date.getTime()));
		//调用保存对象的方法
		String updateBackEnums = backenumsservice.updateBackEnums(backenums);
		jsonObj = JSONObject.fromObject(updateBackEnums);
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
	public backEnumsParent getEnumsParent() {
		return enumsParent;
	}
	public void setEnumsParent(backEnumsParent enumsParent) {
		this.enumsParent = enumsParent;
	}
	public backEnums getBackenums() {
		return backenums;
	}
	public void setBackenums(backEnums backenums) {
		this.backenums = backenums;
	}
	

}
