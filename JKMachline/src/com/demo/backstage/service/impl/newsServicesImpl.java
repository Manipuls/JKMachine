package com.demo.backstage.service.impl;

import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.demo.backstage.dao.newsDao;
import com.demo.backstage.doman.News;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.newsServices;
import com.demo.util.CreateSession;
import com.google.gson.Gson;

public class newsServicesImpl implements newsServices {
	
	
	private newsDao newsdao;
	
	Logger log = Logger.getLogger(newsServicesImpl.class);

	@Override
	public String pageFindNews(util news) {
		SqlSession session = new CreateSession().getSession();
		newsdao = session.getMapper(newsDao.class);
		//查询数据库
		List<News> pageFindNews = newsdao.pageFindNews(news);
		session.close();
		//数据组装
		
		String json ="{\"total\":\""+news.getInteger2()+"\",\"rows\":[";
		String jsn = "";
		boolean flag = false;
		SimpleDateFormat sdf   = new SimpleDateFormat("yyyy-MM-dd");
		if(pageFindNews.size()>0){
			for (int i = 0; i < pageFindNews.size(); i++) {
				if(flag)json+=",";
				flag = true;
				pageFindNews.get(i).setCreateStrTime(sdf.format(pageFindNews.get(i).getCreateTime()));
				pageFindNews.get(i).setCreateTime(null);
				json += new Gson().toJson(pageFindNews.get(i));
			}
			json+="]}";
			log.info(json);
		}
		return json;
	}

	@Override
	public String getPageForNews(util news) {
		SqlSession session = new CreateSession().getSession();
		newsdao = session.getMapper(newsDao.class);
		//调用实现方法
		List<News> pageForNews = newsdao.getPageForNews(news);
		session.close();
		log.info("======与数据库交互-查询数据条数："+pageForNews.size());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		String json ="{\"total\":\""+news.getInteger2()+"\",\"rows\":[";
		boolean flag = false;
		if(pageForNews.size()>0){
			for (int i = 0; i < pageForNews.size(); i++) {
				if(flag)json+=",";
				flag = true;
				News news2 = pageForNews.get(i);
				news2.setCreateStrTime(sdf.format(news2.getCreateTime()));
				news2.setCreateTime(null);
				json += new Gson().toJson(news2);
			}
		}
		json+="]}";
		return json;
	}

	@Override
	public String getNewsContent(News news) {
		SqlSession session = new CreateSession().getSession();
		newsdao = session.getMapper(newsDao.class);
		News newsById = newsdao.getNewsById(news.getId());
		session.close();
		log.info("===与数据库交互-查询对象是否为空："+newsById==null);
		String json ="{\"total\":\""+1+"\",\"rows\":[";
		if(newsById!=null){
			json += new Gson().toJson(newsById);
		}
		json +="]}";
		return json;
	}

	@Override
	public News getNewsContentToJsp(News news) {
		SqlSession session = new CreateSession().getSession();
		newsdao = session.getMapper(newsDao.class);
		News newsById = newsdao.getNewsById(news.getId());
		return newsById;
	}

	/**
	 *
	 * @param news
	 * @return
	 * @see com.demo.backstage.service.newsServices#getPageForNewsToJsp(com.demo.backstage.doman.util)
	 */
	@Override
	public List<News> getPageForNewsToJsp(util news) {
		SqlSession session = new CreateSession().getSession();
		newsdao = session.getMapper(newsDao.class);
		//调用实现方法
		List<News> pageForNews = newsdao.getPageForNews(news);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		for (News n : pageForNews) {
			n.setCreateStrTime(sdf.format(n.getCreateTime()));
			n.setNewContent(n.getNewContent().length()>180?n.getNewContent().substring(0, 180):n.getNewContent()+"...");
		}
		return pageForNews;
	}

	/**
	 *
	 * @return
	 * @see com.demo.backstage.service.newsServices#getCountNews()
	 */
	@Override
	public Integer getCountNews() {
		SqlSession session = new CreateSession().getSession();
		newsdao = session.getMapper(newsDao.class);
		//调用实现方法
		Integer newsNum = newsdao.getCountNews();
		return newsNum;
	}

}
