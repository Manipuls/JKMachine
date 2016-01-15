package com.demo.backstage.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.demo.backstage.dao.rightDao;
import com.demo.backstage.doman.Right;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.rightService;
import com.demo.util.CreateSession;
import com.demo.util.jdbcUtils;
import com.google.gson.Gson;

public class rightServiceImpl implements rightService {
	
	private rightDao rightdao;
	jdbcUtils jdbcutils = new jdbcUtils();
	
	Logger log = Logger.getLogger(rightServiceImpl.class);
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

	/**
	 * 查询所有权限
	 * @return
	 * @see com.demo.backstage.service.rightService#getRights()
	 */
	@Override
	public String getRights(Integer id) {
		SqlSession session = new CreateSession().getSession();
		rightdao = session.getMapper(rightDao.class);
		List<Right> parentRights = rightdao.getParentRights();
		
		for (int i = 0; i < parentRights.size(); i++) {
			parentRights.get(i).setText(parentRights.get(i).getRightName());
			List<Right> childRights = rightdao.getChildRights(parentRights.get(i).getId());
			
			List<Right> rightByRoleId = rightdao.getRightByRoleId(id);
			for (int j = 0; j < childRights.size(); j++) {
				childRights.get(j).setText(childRights.get(j).getRightName());
				for (Right right : rightByRoleId) {
					if(right.getId()==childRights.get(j).getId()){
						childRights.get(j).setChecked(true);
					}
				}
			}
			parentRights.get(i).setChildren(childRights);
			
		}
		String json ="[";
		boolean flag1 = false;
		for (Right right : parentRights) {
			if(flag1)json+=",";
			flag1 = true;
			json += new Gson().toJson(right);
		}
		json += "]";
		return json;
	}

	/**
	 * 保存修改权限
	 * @param roleId
	 * @param rights
	 * @return
	 * @see com.demo.backstage.service.rightService#saveRights(java.lang.Integer, java.util.List)
	 */
	@Override
	public String saveRights(Integer roleId ,List<Integer>  rights) {
		String delSql = "delete from backstage_role_rights where role_id="+roleId;
		jdbcutils.execute(delSql);
		for (int i = 0; i<rights.size() ; i++) {
			String insertSql ="insert into backstage_role_rights(role_id,right_id) values("+roleId+","+rights.get(i)+")";
			jdbcutils.execute(insertSql);
		}
		String json ="[{\"total\":\"1\",\"rows\":\"1\"}]";
		return json;
	}

}
