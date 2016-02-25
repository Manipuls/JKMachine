package com.demo.backstage.service.impl;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.demo.backstage.dao.newsDao;
import com.demo.backstage.doman.News;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.newsServices;
import com.demo.util.CreateSession;
import com.demo.util.jdbcUtils;
import com.google.gson.Gson;
import com.mysql.jdbc.StringUtils;

public class newsServicesImpl implements newsServices {
	
	
	private newsDao newsdao;
	
	private jdbcUtils jdbcutils = new jdbcUtils();
	
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
	
	
	
	
	public String getNewsAll(){
		log.info(" [ ========START:开始新闻资讯列表 ===========START========= ] ");
		String sql = " select * from backstage_news order by create_time desc ";
		log.info(" [ 查询sql: "+sql+" ] ");
		List<Map<String, String>> executeQuery = jdbcutils.executeQuery(sql);
		News news = new News();
		String json = "";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < executeQuery.size(); i++) {
			news.setId(Integer.parseInt(executeQuery.get(i).get("id")));
			news.setNewType(executeQuery.get(i).get("new_type"));
			news.setNewTitle(executeQuery.get(i).get("new_type"));
			news.setCreateStrTime(sdf.format(executeQuery.get(i).get("create_time")));
		}
		
		return "";
	}

	@Override
	public String getBackNewsForList(util utils) {
		log.info(" [ ========START:开始查询新闻资讯列表 ===========START========= ] ");
		SqlSession session = new CreateSession().getSession();
		newsdao = session.getMapper(newsDao.class);
		//调用实现方法
		List<News> pageForNews = newsdao.getPageForNews(utils);
		log.info(" [ 查询结果size："+pageForNews.size()+" ] ");
		String json = "";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if(pageForNews.size()>0){
			json +="{\"total\":\""+newsdao.getCountNews()+"\",\"rows\":[";
			boolean flag = false;
			for (News news : pageForNews) {
				if(flag)json+=",";
				flag = true;
				news.setCreateStrTime(sdf.format(news.getCreateTime()));
				news.setCreateTime(null);
				json += new Gson().toJson(news);
			}
			json +="]}";
		}
		log.info(" [ json:"+json+" ] ");
		log.info(" [ ========END:查询新闻资讯列表结束 ===========END========= ] ");
		return json;
	}
	
	public String saveBackNewsInfo(News news){
		log.info(" [ ========START:新增新闻资讯 ===========START========= ] ");
		String sql = " insert into backstage_news(new_type,new_title,new_content,crete_time) ";
		sql +=" values('"+news.getNewType()+"','"+news.getNewTitle()+"','"+news.getNewContent()+"',"+news.getCreateTime()+") ";
		log.info(" [ 执行sql:"+sql+" ] ");
		Integer execute = jdbcutils.execute(sql);
		log.info(" [ 执行sql结果:"+(execute==1?"成功":"失败")+"! ] ");
		log.info(" [ ========END:新增新闻资讯结束 ===========END========= ] ");
		String json ="{\"total\":\""+execute+"\",\"rows\":\""+execute+"\"}";
		return json;
	}
	
	
	public String updateBackNewsInfo(News news){
		log.info(" [ ========START:修改新闻资讯 ===========START========= ] ");
		String sql = " update backstage_news set new_type='"+news.getNewType()+"' ";
		
		if(!StringUtils.isNullOrEmpty(news.getNewTitle())){
			sql +=" , new_title='"+news.getNewTitle()+"'";
		}
		if(!StringUtils.isNullOrEmpty(news.getNewContent())){
			sql +=" , new_content='"+news.getNewContent()+"' ";
		}
		sql +=" where id="+news.getId();
		
		//Integer execute = jdbcutils.execute(sql);
		
		String t = "update backstage_news set new_type=? , new_title=? , new_content=? where id="+news.getId();
		Object[] ss = new String[]{news.getNewType(),news.getNewTitle(),news.getNewContent()};
		Integer execute = jdbcutils.saveOrUpdateData(t, ss);
		
		
		
		log.info(" [ 执行sql结果:"+(execute==1?"成功":"失败")+"! ] ");
		log.info(" [ ========END:修改新闻资讯结束 ===========END========= ] ");
		String json ="{\"total\":\""+execute+"\",\"rows\":\""+execute+"\"}";
		return json;
	}
	
	
	

}
