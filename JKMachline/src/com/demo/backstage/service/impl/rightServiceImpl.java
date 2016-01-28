package com.demo.backstage.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.demo.backstage.dao.rightDao;
import com.demo.backstage.doman.Right;
import com.demo.backstage.doman.backEnums;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.backEnumsService;
import com.demo.backstage.service.rightService;
import com.demo.util.CreateSession;
import com.demo.util.jdbcUtils;
import com.google.gson.Gson;

public class rightServiceImpl implements rightService {
	
	private rightDao rightdao;
	jdbcUtils jdbcutils = new jdbcUtils();
	backEnumsService backenumsservice = new backEnumsServiceImpl();
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
		//获取父类所有权限
		//List<Right> parentRights = rightdao.getParentRights();
		List<Right> parentRights = getParentRights(new util());
		
		for (int i = 0; i < parentRights.size(); i++) {
			parentRights.get(i).setText(parentRights.get(i).getRightName());
			//获取父类下的子类权限
			List<Right> childRights = rightdao.getChildRights(parentRights.get(i).getId());
			//获取用户权限
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
		List<Right> rights = new ArrayList<Right>();
		Right r = new Right();
		r.setId(9999999);
		r.setText("虚拟根节点");
		r.setChildren(parentRights);
		rights.add(r);
		
		
		String json ="[";
		boolean flag1 = false;
		for (Right right : rights) {
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
		log.info(" [ ==============START:开始保存修改的权限=================START========= ] ");
		log.info(" [ 开始删除角色id为:"+roleId+" 的所有权限 ] ");
		String delSql = "delete from backstage_role_rights where role_id="+roleId;
		jdbcutils.execute(delSql);
		log.info(" [ 删除角色id为:"+roleId+" 的所有权限成功!!!! ] ");
		log.info(" [ 开始保存角色权限，角色id为:"+roleId+" ] ");
		for (int i = 0; i<rights.size() ; i++) {
			log.info(" [ 开始保存第"+i+"权限，角色id为:"+roleId+",权限id:"+rights.get(i)+" ] ");
			String insertSql ="insert into backstage_role_rights(role_id,right_id) values("+roleId+","+rights.get(i)+")";
			jdbcutils.execute(insertSql);
			log.info(" [ 保存第"+i+"权限成功! ] ");
		}
		log.info(" [ ==============END:保存修改的权限结束=================END========= ] ");
		String json ="[{\"total\":\"1\",\"rows\":\"1\"}]";
		return json;
	}

	@Override
	public String getUserRights(Integer id) {
		return "";
	}

	/**
	 * 获取所有父类权限
	 * @return
	 * @see com.demo.backstage.service.rightService#getParentRights()
	 */
	@Override
	public List<Right> getParentRights(util utils) {
		List<Right> findAllRights = rightdao.getParentRights(utils);
		return findAllRights;
	}
	
	/**
	 * 
	 * 分页展示权限父类
	 * liufei 2016-1-18
	 * @param page
	 * @param rows
	 * @return
	 */
	public String getParentRightsToJson(Integer page,Integer rows){
		SqlSession session = new CreateSession().getSession();
		rightdao = session.getMapper(rightDao.class);
		log.info(" [ ==============START:开始查询权限=================START========= ] ");
		util utils = new util();
		log.info(" [ 拼装翻页参数,页码page:"+page+",行数rows:"+rows+" ] ");
		utils.setPage(page);
		utils.setRows(rows);
		List<Right> parentRights = this.getParentRights(utils);
		List<backEnums> useable = backenumsservice.findBackEnumsByQueryId("UseAble");
		log.info(" [ 执行查询方法,父类权限条数:"+parentRights.size()+" ] ");
		String json = "";
		if(parentRights.size()>0){
			json ="{\"total\":\""+this.getParentRights(new util()).size()+"\",\"rows\":[";
			Boolean flag = false;
			for (Right right : parentRights) {
				if(flag)json+=",";
				flag = true;
				for (backEnums backEnums : useable) {
					if(backEnums.getEkey().equals(right.getIsDelete()+"")){
						right.setIsDeleteStr(backEnums.getEvalue());
					}
				}
				json += new Gson().toJson(right);
			}
			json+="]}";
		}
		session.close();
		log.info(" [ ==============END:查询权限结束=================END========= ] ");
		return json;
	}
	
	
	public String getChildRightsToJson(Integer id){
		SqlSession session = new CreateSession().getSession();
		rightdao = session.getMapper(rightDao.class);
		log.info(" [ ==============START:开始查询子类权限=================START========= ] ");
		List<Right> childRights = rightdao.getChildRights(id);
		log.info(" [ 查询结束,条数:"+childRights.size()+" ] ");
		List<backEnums> righttype = backenumsservice.findBackEnumsByQueryId("RightType");
		List<backEnums> useable = backenumsservice.findBackEnumsByQueryId("UseAble");
		session.close();
		String json = "{\"total\":\""+childRights.size()+"\",\"rows\":[";
		Boolean flag = false;
		for (Right right : childRights) {
			if(flag)json+=",";
			flag = true;
			for (backEnums backEnums : righttype) {
				if(backEnums.getEkey().equals(right.getParentId()+"")){
					right.setParentIdStr(backEnums.getEvalue());
				}
			}
			for (backEnums backEnums : useable) {
				if(backEnums.getEkey().equals(right.getIsDelete()+"")){
					right.setIsDeleteStr(backEnums.getEvalue());
				}
			}
			json+= new Gson().toJson(right);
		}
		json+="]}";
		log.info(" [ ==============END:开始查询子类权限=================END========= ] ");
		return json;
	}
	
	
	
	public String updateRightInfo(Right right){
		log.info(" [ ==============START:开始修改权限信息=================START========= ] ");
		String sql = " update backstage_rights" +
				" set right_name='"+right.getRightName()+"' , " +
				" right_location='"+right.getLocation()+"' " +
				" where right_id= "+right.getId();
		log.info(" [ 执行sql:"+sql+" ] ");
		Integer execute = jdbcutils.execute(sql);
		log.info(" [ 执行sql:"+(execute==1?"成功":"失败")+" ] ");
		String json = "[{\"total\":\""+execute+"\",\"rows\":\""+execute+"\"}]";
		log.info(" [ json: "+json+" ] ");
		log.info(" [ ==============END:修改权限信息结束=================END========= ] ");
		return json;
	}

}
