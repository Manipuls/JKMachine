package com.demo.backstage.dao;

import java.util.List;

import com.demo.backstage.doman.backEnums;

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

}
