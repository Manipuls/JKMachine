package com.demo.action.backstage;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.News;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.newsServices;
import com.demo.backstage.service.impl.newsServicesImpl;

public class backNewsAction extends BaseAction {

	/**
	 * 变量的意义 <br>
	 */
	private static final long serialVersionUID = -8930904907115674728L;
	private newsServices newsservices = new newsServicesImpl();
	private newsServicesImpl newsservicesimpl = new newsServicesImpl();
	
	Logger log = Logger.getLogger(backNewsAction.class);
	public JSONObject jsonObj;
	private Integer page;
	private Integer rows;
	private News news;
	
	
	/**
	 * 后台查询新闻资讯列表
	 * liufei 2016-1-28
	 * @return
	 */
	public String getBackNewsForList(){
		util utils = new util();
		utils.setInteger1((page-1)*rows);
		utils.setInteger2(rows);
		String backNewsForList = newsservices.getBackNewsForList(utils);
		jsonObj = JSONObject.fromObject(backNewsForList);
		return "json";
	}
	
	
	public String updateBackNewsInfo(){
		news.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		String replaceAll = news.getNewContent().replaceAll("<KG>", "&nbsp;");
		news.setNewContent(replaceAll);
		System.out.println(news.getNewContent());
		String updateBackNewsInfo = newsservicesimpl.updateBackNewsInfo(news);
		jsonObj = JSONObject.fromObject(updateBackNewsInfo);
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
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
}
