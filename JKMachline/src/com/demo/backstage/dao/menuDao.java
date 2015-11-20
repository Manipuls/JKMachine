package com.demo.backstage.dao;

import java.util.List;

import com.demo.backstage.doman.Menu;

public interface menuDao {
	
	/**  前台页面查询 导航栏菜单
	 * @return
	 */
	public List<Menu> findAll();
	
	
	/**根据parentid  查询上级菜单
	 * @return
	 */
	public List<Menu> findByParentId(Integer id);

}
