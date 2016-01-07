package com.demo.action.reception;

import java.util.List;

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
	public News newsEntity;
	public Integer newsNum;//新闻资讯一共数据
	//页面显示新闻信息的条数
	public Integer showPageNums;
	
	public List<News> newsList;
	
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
	/**
	 *  访问Action To Jsp  news翻页数据
	 * @Description: TODO
	 * @param @return   
	 * @return String  
	 * @throws
	 *
	 * @author LIUFEI
	 * @date 2015-11-21 下午1:00:03
	 */
	public String onLoadNewsTitleToJsp(){
		log.info("===获取news.jsp页面的新闻数据翻页===START===");
		util utils = new util();
		//设置显示页数
		if(page ==null){
			page = 1; //当前页数
		}
		//每页显示几条数据
		if(showPageNums==null){
			showPageNums = 5;
		}
		if(page==1 ){
			utils.setInteger1(0);
		}else{
			utils.setInteger1((page*showPageNums)-(showPageNums-1));
		}
		utils.setInteger2(showPageNums);
		//调用实现方法
		newsList = newsservices.getPageForNewsToJsp(utils);
		log.info("===查看详细的新闻内容===END===");
		super.setParam("jsp", "劲凯机电-新闻资讯", "view/reception/news.jsp");
		return "jsp";
		
	}
	public String onLoadNewsContentToJsp(){
		log.info("===查看详细的新闻内容===START===");
		News news = new News();
		news.setId(Integer.parseInt(id));
		//调用实现方法
	    newsEntity = newsservices.getNewsContentToJsp(news);
		log.info("===获取news.jsp页面的新闻数据翻页===返回数据："+jsonObj);
		log.info("===查看详细的新闻内容===END===");
		super.setParam("jsp", "劲凯机电-新闻资讯详情", "view/reception/newsContent.jsp");
		return "jsp";
		
	}
	
	
	public String getCountNews(){
		newsNum = newsservices.getCountNews();
		String json ="{\"total\":\""+1+"\",\"rows\":\""+newsNum+"\"}";
		jsonObj = JSONObject.fromObject(json);
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

	public News getNewsEntity() {
		return newsEntity;
	}

	public void setNewsEntity(News newsEntity) {
		this.newsEntity = newsEntity;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public Integer getNewsNum() {
		return newsNum;
	}

	public void setNewsNum(Integer newsNum) {
		this.newsNum = newsNum;
	}

	public Integer getShowPageNums() {
		return showPageNums;
	}

	public void setShowPageNums(Integer showPageNums) {
		this.showPageNums = showPageNums;
	}
	
	
	
	
	
	

}
