package com.demo.backstage.service;

import java.util.List;

import com.demo.backstage.doman.News;
import com.demo.backstage.doman.util;

public interface newsServices {
	
	/**前台页面查询最新新闻动态
	 * @return
	 */
	public String pageFindNews(util news);
	
	
	/**<!--获取news.jsp页面的新闻数据翻页   -->
	 * @param news
	 * @return
	 */
	public String getPageForNews(util news);
	public List<News> getPageForNewsToJsp(util news);
	
	/**
	 * 查询新闻信息表--查看新闻详细内容
	 * @param news
	 * @return
	 */
	public String getNewsContent(News news);
	public News getNewsContentToJsp(News news);
	
	/**
	 * 获取多少条
	 * @return Integer  
	 * @throws
	 *
	 * @author LIUFEI
	 * @date 2015-11-21 下午3:29:58
	 */
	public Integer getCountNews();
	
	
	
	//---------------------------------------------------------------------------------------------------//
	
	
	public String getBackNewsForList(util utils);
	
	
	
}
