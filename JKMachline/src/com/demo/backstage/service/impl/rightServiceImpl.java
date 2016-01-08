package com.demo.backstage.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.demo.backstage.dao.rightDao;
import com.demo.backstage.doman.Right;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.rightService;
import com.demo.util.CreateSession;

public class rightServiceImpl implements rightService {
	
	private rightDao rightdao;

	/* (non-Javadoc) 查询菜单栏数据
	 * @see com.demo.backstage.service.rightService#findZtreeMenu(java.lang.Integer)
	 */
	@Override
	public String findZtreeMenu(util u) {
		// TODO Auto-generated method stub
		
		SqlSession session = new CreateSession().getSession();
		rightdao = session.getMapper(rightDao.class);
		List<Right> findZtreeMenu = rightdao.findZtreeMenu(u);
		String json = "";
		//json ="{\"total\":\"1\",\"rows\":[{\"num\":\"0\"}]}";
		//json ="{\"total\":\"1\",\"rows\":[";
		json = "[";
		boolean flag = false;
		if(findZtreeMenu.size()>0){
			for (int i = 0; i < findZtreeMenu.size(); i++) {
				if(flag)json+=",";
				flag = true;
				json+="{\"accessPath\":\""+((findZtreeMenu.get(i).getLocation())==null?"":findZtreeMenu.get(i).getLocation())+"\",\"checked\":\"fasle\",\"delFlag\":\"0\",\"parentID\":\""+(findZtreeMenu.get(i).getParentId()==null?"":findZtreeMenu.get(i).getParentId())+"\"," +
						" \"resourceCode\":\"0\",\"resourceDesc\":\"0\",\"resourceGrade\":\"3\",\"resourceID\":\""+findZtreeMenu.get(i).getId()+"\",\"resourceName\":\""+findZtreeMenu.get(i).getRightName()+"\",\"resourceOrder\":\"0\",\"resourceType\":\""+findZtreeMenu.get(i).getRightType()+"\"}";
			}
			json+="]";
			//json+="]}";
		}
		
		
		return json;
	}

	/* (non-Javadoc) 获取用户所有权限
	 * @see com.demo.backstage.service.rightService#findAllRights(java.lang.Integer)
	 */
	@Override
	public List<Right> findAllRights(Integer id) {
		SqlSession session = new CreateSession().getSession();
		rightdao = session.getMapper(rightDao.class);
		util u = new util();
		u.setInteger1(id);
		u.setInteger2(0);
		List<Right> findAllRights = rightdao.findAllRights(u);
		session.close();
		return findAllRights;
	}

	/**
	 * 
	 *
	 * @param id
	 * @param rightId
	 * @return
	 * @see com.demo.backstage.service.rightService#findAllRights(java.lang.Integer, java.lang.Integer)
	 */
	@Override
	public List<Right> findAllRights(Integer id, Integer rightId) {
		SqlSession session = new CreateSession().getSession();
		rightdao = session.getMapper(rightDao.class);
		util u = new util();
		u.setInteger1(id);
		u.setInteger3(rightId);
		List<Right> findAllRights = rightdao.findAllRights(u);
		session.close();
		return findAllRights;
	}

}
