package com.demo.backstage.service;

import java.util.List;

import com.demo.backstage.doman.Right;
import com.demo.backstage.doman.util;

public interface rightService {
		
	/**获取菜单列表
	 * @return
	 */
	public String findZtreeMenu(util u);
	
	/**获取用户当前权限
	 * @param id
	 * @return
	 */
	public List<Right> findAllRights(Integer id);
	
	public List<Right> findAllRights(Integer id , Integer rightId);
	
	/***************************************backstage***************************************/
	
	/**
	 * 获取所有父类权限
	 * liufei 2016-1-18
	 * @return
	 */
	public List<Right> getParentRights(util utils);
	/**
	 * 获取用户所有权限
	 * liufei 2016-1-14
	 * @return
	 */
	public String getUserRights(Integer id);
	
	/**
	 * 获取所有权限
	 * liufei 2016-1-14
	 * @return
	 */
	public String getRights(Integer id);
	
	
	/**
	 * 保存修改的权限
	 * liufei 2016-1-15
	 * @return
	 */
	public String saveRights(Integer roleId ,List<Integer> rights);
	
	
	
	

}
