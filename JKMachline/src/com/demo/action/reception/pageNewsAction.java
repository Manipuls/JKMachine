package com.demo.action.reception;

import java.text.SimpleDateFormat;
import java.util.Date;

import net.sf.json.JSONObject;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.News;
import com.demo.backstage.service.newsServices;
import com.demo.backstage.service.impl.newsServicesImpl;

public class pageNewsAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3092450396828432095L;
	
	
	public JSONObject jsonObj;
	
	public newsServices  newsservices = new newsServicesImpl();
	
	
	
	



	
	
	
	public JSONObject getJsonObj() {
		return jsonObj;
	}
	public void setJsonObj(JSONObject jsonObj) {
		this.jsonObj = jsonObj;
	}

}
