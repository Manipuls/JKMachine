package com.demo.backstage.dao;

import java.util.List;

import com.demo.backstage.doman.backEnums;
import com.demo.backstage.doman.backEnumsParent;

public interface backEnumsDao {
	
	/**
	 * 查询具体枚举值
	 * liufei 2016-1-12
	 * @param queryId
	 * @return
	 */
	public List<backEnums> findBackEnumsByQueryId(String queryId);
	
	/**
	 * 查询所有枚举值
	 * liufei 2016-1-12
	 * @return
	 */
	public List<backEnums> findAllBackEnums();
	
	/**
	 * 新增枚举值
	 * @param backenums
	 * @return
	 */
	public Integer saveBackEnums(backEnums backenums);
	
	/**
	 * 修改枚举值
	 * liufei 2016-1-14
	 * @param enums
	 * @return
	 */
	public Integer updateBackEnums(backEnums enums);

}
