package com.demo.backstage.service.impl;

import java.text.DateFormat;
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
		//查询总条数
		List<backEnumsParent> backEnumsList = backenumsparentdao.findAllBackEnums(new util());
		List<backEnums> findBackEnumsByQueryId = this.findBackEnumsByQueryId("useAble");
		session.close();
		String json ="{\"total\":\""+backEnumsList.size()+"\",\"rows\":[";
		boolean flag = false;
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (backEnumsParent backEnumsParent : findAllBackEnums) {
			if(flag)json+=",";
			flag = true;
			backEnumsParent.setCreateTimeStr(sdf.format(backEnumsParent.getCreateTime()));
			backEnumsParent.setCreateTime(null);
			backEnumsParent.setUpdateTimeStr(sdf.format(backEnumsParent.getUpdateTime()));
			backEnumsParent.setUpdateTime(null);
			for (backEnums e : findBackEnumsByQueryId) {
				if(e.getEkey().equals(backEnumsParent.getIsDelete()+"")){
					backEnumsParent.setIsDeleteStr(e.getEvalue());
					backEnumsParent.setIsDelete(null);
				}
			}
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
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (backEnums backenums : findBackEnumsByQueryIdList) {
			if(flag)json+=",";
			flag = true;
			backenums.setCreateTimeStr(sdf.format(backenums.getCreateTime()));
			backenums.setUpdateTimeStr(sdf.format(backenums.getUpdateTime()));
			backenums.setCreateTime(null);
			backenums.setUpdateTime(null);
			json += new Gson().toJson(backenums);
		}
		json+="]}";
		return json;
	}
	/**
	 * 新增枚举类型
	 * @param enumsParent
	 * @return
	 * @see com.demo.backstage.service.backEnumsService#saveBackEnumsParent(com.demo.backstage.doman.backEnumsParent)
	 */
	@Override
	public String saveBackEnumsParent(backEnumsParent enumsParent) {
		log.info(" [ ========START:开始新增枚举值 参数backEnumsParent对象："+enumsParent+"===========START========= ] ");
		SqlSession session = new CreateSession().getSession();
		backenumsparentdao = session.getMapper(backEnumsParentDao.class);
		Integer saveBackEnumsParent = 0;
		try{
			saveBackEnumsParent = backenumsparentdao.saveBackEnumsParent(enumsParent);
		}catch(Exception e){
			log.info(" [ ============错误信息："+e.getMessage()+"========= ] ");
			saveBackEnumsParent = 0;
		}
		session.close();
		log.info(" [ ========END:新增枚举类型结果："+(saveBackEnumsParent==1?"成功":"失败")+"!===========END========= ] ");
		String json ="{\"total\":\""+saveBackEnumsParent+"\",\"rows\":\""+saveBackEnumsParent+"\"}";
		return json;
	}
	/**
	 * 新增枚举值
	 * @param enums
	 * @return
	 * @see com.demo.backstage.service.backEnumsService#saveBackEnums(com.demo.backstage.doman.backEnums)
	 */
	@Override
	public String saveBackEnums(backEnums enums) {
		log.info(" [ ========START:开始新增枚举值 参数backEnums对象："+enums+"===========START========= ] ");
		SqlSession session = new CreateSession().getSession();
		backenumsdao = session.getMapper(backEnumsDao.class);
		Integer saveBackEnums = 0;
		try{
			saveBackEnums = backenumsdao.saveBackEnums(enums);
		}catch(Exception e){
			log.error(" [ ============错误信息："+e.getMessage()+"========= ] ");
			saveBackEnums = 0;
		}
		session.close();
		log.info(" [ ========END:新增枚举值结果："+(saveBackEnums==1?"成功":"失败")+"!===========END========= ] ");
		String json ="{\"total\":\""+saveBackEnums+"\",\"rows\":\""+saveBackEnums+"\"}";
		return json;
	}
	/**
	 * 修改枚举类型
	 * @param enumsParent
	 * @return
	 * @see com.demo.backstage.service.backEnumsService#updateBackEnumsParent(com.demo.backstage.doman.backEnumsParent)
	 */
	@Override
	public String updateBackEnumsParent(backEnumsParent enumsParent) {
		log.info(" [ ========START:开始修改枚举值 参数backEnumsParent对象："+enumsParent+"===========START========= ] ");
		SqlSession session = new CreateSession().getSession();
		backenumsparentdao = session.getMapper(backEnumsParentDao.class);
		Integer updateBackEnumsParent = 0;
		try{
			updateBackEnumsParent = backenumsparentdao.updateBackEnumsParent(enumsParent);
		}catch(Exception e){
			log.info(" [ 错误信息："+e.getMessage()+" ] ");
			updateBackEnumsParent = 0;
		}
		session.close();
		log.info(" [ ========END:修改枚举类型结果："+(updateBackEnumsParent==1?"成功":"失败")+"!===========END========= ] ");
		String json ="{\"total\":\""+updateBackEnumsParent+"\",\"rows\":\""+updateBackEnumsParent+"\"}";
		return json;
	}
	@Override
	public String updateBackEnums(backEnums enums) {
		log.info(" [ ========START:开始修改枚举值 参数backEnums对象："+enums+"===========START========= ] ");
		SqlSession session = new CreateSession().getSession();
		backenumsdao = session.getMapper(backEnumsDao.class);
		Integer updateBackEnums = 0;
		try{
			updateBackEnums = backenumsdao.updateBackEnums(enums);
		}catch(Exception e){
			log.error(" [ 错误信息："+e.getMessage()+" ] ");
			updateBackEnums = 0;
		}
		session.close();
		log.info(" [ ========END:修改枚举值结果："+(updateBackEnums==1?"成功":"失败")+"!===========END========= ] ");
		String json ="{\"total\":\""+updateBackEnums+"\",\"rows\":\""+updateBackEnums+"\"}";
		return json;
	}

}
