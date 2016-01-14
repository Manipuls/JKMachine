package com.demo.backstage.dao;

import java.util.List;

import com.demo.backstage.doman.backEnumsParent;
import com.demo.backstage.doman.util;

public interface backEnumsParentDao {
	
	/**
	 * 查询所有枚举值  翻页显示
	 * liufei 2016-1-12
	 * @return
	 */
	public List<backEnumsParent> findAllBackEnums(util utils);
	
	/**
	 * 
	 * 新增枚举值类型
	 * @param enumsParent
	 * @return
	 */
	public Integer saveBackEnumsParent(backEnumsParent enumsParent);
	
	/**
	 * 修改枚举类型
	 * liufei 2016-1-14
	 * @param enumsParent
	 * @return
	 */
	public Integer updateBackEnumsParent(backEnumsParent enumsParent);
}
