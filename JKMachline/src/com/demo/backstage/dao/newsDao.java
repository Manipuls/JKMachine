package com.demo.backstage.dao;

import java.util.List;

import com.demo.backstage.doman.News;
import com.demo.backstage.doman.util;

public interface newsDao {
	
	/**  添加新闻资讯
	 * @param news
	 * @return
	 */
	public Integer saveNews(News news);
	
	
	
	/**前台页面查询最新新闻动态
	 * @return
	 */
	public List<News> pageFindNews(util news);
	
	
	/**查询所有新闻动态
	 * @return
	 */
	public List<News> backstageFindNews();
	
	
	/**  修改新闻资讯
	 * @param id
	 * @return
	 */
	public Integer updateNewsById(Integer id);
	
	
	
	/**
	 * 
	 * news.jsp 获取所有翻页数据
	 * @return
	 */
	public List<News> getPageForNews(util news);
	
	
	/**查看新闻详细内容
	 * @param id
	 * @return
	 */
	public News getNewsById(Integer id);
	
	
	/**
	 * 获取一共有多少条数据
	 * @return Integer  
	 * @throws
	 *
	 * @author LIUFEI
	 * @date 2015-11-21 下午3:27:11
	 */
	public Integer getCountNews();
	

}
