package com.demo.backstage.service;

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
	
	/**
	 * 查询新闻信息表--查看新闻详细内容
	 * @param news
	 * @return
	 */
	public String getNewsContent(News news);
}
