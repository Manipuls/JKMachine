package com.demo.backstage.service.impl;

import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.demo.backstage.dao.backEnumsDao;
import com.demo.backstage.dao.backEnumsParentDao;
import com.demo.backstage.doman.backEnums;
import com.demo.backstage.doman.backEnumsParent;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.backEnumsService;
import com.demo.util.CreateSession;
import com.google.gson.Gson;

public class backEnumsServiceImpl implements backEnumsService {

	
	private backEnumsDao backenumsdao;
	private backEnumsParentDao backenumsparentdao;
	Logger log = Logger.getLogger(backEnumsServiceImpl.class);
	/**
	 * 查询枚举值parent
	 * @param utils
	 * @return
	 * @see com.demo.backstage.service.backEnumsService#findAllBackEnums(com.demo.backstage.doman.util)
	 */
	@Override
	public String findAllBackEnums(util utils) {
		log.info(" [ ========START:开始查询枚举值parents===========START========= ] ");
		SqlSession session = new CreateSession().getSession();
		backenumsparentdao = session.getMapper(backEnumsParentDao.class);
		List<backEnumsParent> findAllBackEnums = backenumsparentdao.findAllBackEnums(utils);
		List<backEnumsParent> backEnumsList = backenumsparentdao.findAllBackEnums(new util());
		session.close();
		String json ="{\"total\":\""+backEnumsList.size()+"\",\"rows\":[";
		boolean flag = false;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for (backEnumsParent backEnumsParent : findAllBackEnums) {
			if(flag)json+=",";
			flag = true;
			backEnumsParent.setCreateTimeStr(sdf.format(backEnumsParent.getCreateTime()));
			backEnumsParent.setCreateTime(null);
			backEnumsParent.setUpdateTimeStr(sdf.format(backEnumsParent.getUpdateTime()));
			backEnumsParent.setUpdateTime(null);
			json += new Gson().toJson(backEnumsParent);
		}
		json+="]}";
		log.info(" [ ========END:查询结束枚举值parents=== size:"+backEnumsList.size()+"========END========= ] ");
		return json;
	}
	/**
	 * 
	 *	查询枚举值集合
	 * @param queryId
	 * @return
	 * @see com.demo.backstage.service.backEnumsService#findBackEnumsByQueryIdList(java.lang.String)
	 */
	@Override
	public List<backEnums> findBackEnumsByQueryId(String queryId) {
		log.info(" [ ========START:开始查询枚举值 参数queryId："+queryId+"===========START========= ] ");
		SqlSession session = new CreateSession().getSession();
		backenumsdao = session.getMapper(backEnumsDao.class);
		List<backEnums> findBackEnumsByQueryId = backenumsdao.findBackEnumsByQueryId(queryId);
		session.close();
		log.info(" [ ========END:查询枚举值结束 size："+findBackEnumsByQueryId.size()+"===========END========= ] ");
		return findBackEnumsByQueryId;
	}
	/**
	 * 将枚举集合转换成json
	 * @param queryId
	 * @return
	 * @see com.demo.backstage.service.backEnumsService#findBackEnumsByQueryId(java.lang.String)
	 */
	@Override
	public String findBackEnumsByQueryIdToJson(String queryId) {
		List<backEnums> findBackEnumsByQueryIdList = this.findBackEnumsByQueryId(queryId);
		String json ="{\"total\":\""+findBackEnumsByQueryIdList.size()+"\",\"rows\":[";
		boolean flag = false;
		for (backEnums backenums : findBackEnumsByQueryIdList) {
			if(flag)json+=",";
			flag = true;
			json += new Gson().toJson(backenums);
		}
		json+="]}";
		return json;
	}

}
