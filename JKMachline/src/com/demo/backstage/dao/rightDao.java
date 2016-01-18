package com.demo.backstage.dao;

import java.util.List;

import com.demo.backstage.doman.Right;
import com.demo.backstage.doman.util;

public interface rightDao {
	
	/**获取菜单列表
	 * @return
	 */
	public List<Right> findZtreeMenu(util u);
	
	/**获取用户当前权限
	 * @param Integer1 userid   Integer2 rightId  Integer3 parentId
	 * 
	 * @return
	 */
	public List<Right> findAllRights(util u);
	
	
	
	
	/*************************************backstage*************************************/
	
	
	
	/**
	 * 查询所有权限
	 * liufei 2016-1-14
	 * @return
	 */
	public  List<Right>  getAllRights();
	/**
	 * 查询所有父级权限
	 * liufei 2016-1-14
	 * @return
	 */
	public List<Right> getParentRights(util utils);
	
	
	/**
	 * 查询父级权限下的子权限
	 * liufei 2016-1-14
	 * @return
	 */
	public List<Right> getChildRights(Integer id);
	
	
	public List<Right> getRightByRoleId(Integer id);
	

}
