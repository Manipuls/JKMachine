package com.demo.action.reception;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.News;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.menuService;
import com.demo.backstage.service.newsServices;
import com.demo.backstage.service.impl.menuServiceImpl;
import com.demo.backstage.service.impl.newsServicesImpl;

public class newsAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7758147570182065259L;
	
	
	
	public JSONObject jsonObj;
	public Integer page;
	public String id;
	Logger log = Logger.getLogger(newsAction.class);
	
	public newsServices  newsservices = new newsServicesImpl();
	private menuService menuservice = new menuServiceImpl();
	
	/**
	 * 
	 * 获取news.jsp页面的新闻数据翻页
	 * @return
	 */
	public String onLoadNewsTitle(){
		log.info("===获取news.jsp页面的新闻数据翻页===START===");
		util utils = new util();
		
		System.out.println(page+"=====000000000000");
		
		
		Integer a = page; //当前页数
		Integer b = 4; //每页显示几条数据
		if(a==1){
			utils.setInteger1(0);
		}else{
			utils.setInteger1((a*b)-(b-1));
		}
		utils.setInteger2(b);
		//调用实现方法
		String pageForNews = newsservices.getPageForNews(utils);
		jsonObj = JSONObject.fromObject(pageForNews);
		
		log.info("===获取news.jsp页面的新闻数据翻页===返回数据："+jsonObj);
		log.info("===获取news.jsp页面的新闻数据翻页===END===");
		return "json";
	}
	
	/**
	 * 查看详细的新闻内容
	 * @return
	 */
	public String onLoadNewsContent(){
		log.info("===查看详细的新闻内容===START===");
		
		News news = new News();
		news.setId(Integer.parseInt(id));
		//调用实现方法
		String newsContent = newsservices.getNewsContent(news);
		jsonObj = JSONObject.fromObject(newsContent);
		log.info("===获取news.jsp页面的新闻数据翻页===返回数据："+jsonObj);
		log.info("===查看详细的新闻内容===END===");
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	
	
	
	

}
