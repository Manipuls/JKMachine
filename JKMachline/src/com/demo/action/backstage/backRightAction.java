package com.demo.action.backstage;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import org.apache.log4j.Logger;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.Right;
import com.demo.backstage.service.rightService;
import com.demo.backstage.service.impl.rightServiceImpl;
import com.demo.util.utilMethod;

public class backRightAction extends BaseAction {

	/**
	 * 变量的意义 <br>
	 */
	private static final long serialVersionUID = 1914775578623349116L;
	Logger log = Logger.getLogger(backRightAction.class);
	utilMethod utilmedthod = new utilMethod();
	
	private String rightid;
	public JSONArray jsonObj;
	private String rights;
	private Integer id;
	private Integer page;
	private Integer rows;
	private Right right;
	
	private rightService  rightservice = new rightServiceImpl();
	private rightServiceImpl  rightserviceimpl = new rightServiceImpl();
	/**
	 * 
	 * 获取菜单导航tree
	 * liufei 2016-1-15
	 * @return
	 */
	public String getUserRights(){
		
		
		return "";
	}
	/**
	 * 
	 * 展示权限树
	 * liufei 2016-1-15
	 * @return
	 */
	public String getAllRights(){
		String rights = rightservice.getRights(id);
		jsonObj = JSONArray.fromObject(rights);
		log.info(" [ =====访问方法：getAllRights结束，jsonObj："+jsonObj+"====== ] ");
		return "json";
	}
	
	
	/**
	 * 保存修改的权限
	 * liufei 2016-1-15
	 * @return
	 */
	public String saveRights(){
		List<Integer> rights = new ArrayList<Integer>();
		String[] split = rightid.split(",");
		for (String string : split) {
			rights.add(Integer.valueOf(string));
		}
		String saveRights = rightservice.saveRights(id,rights);
		jsonObj = JSONArray.fromObject(saveRights);
		return "json";
		
	}
	
	
	public String updateRightInfo(){
		String updateRightInfo = rightserviceimpl.updateRightInfo(right);
		jsonObj = JSONArray.fromObject(updateRightInfo);
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
	public String getRights() {
		return rights;
	}
	public void setRights(String rights) {
		this.rights = rights;
	}
	public String getRightid() {
		return rightid;
	}
	public void setRightid(String rightid) {
		this.rightid = rightid;
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
	public Right getRight() {
		return right;
	}
	public void setRight(Right right) {
		this.right = right;
	}

}
