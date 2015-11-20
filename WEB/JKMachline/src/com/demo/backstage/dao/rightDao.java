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
	 * @param id
	 * @return
	 */
	public List<Right> findAllRights(Integer id);

}
