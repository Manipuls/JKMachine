package com.demo.backstage.service;

import java.util.List;

import com.demo.backstage.doman.backEnums;
import com.demo.backstage.doman.backEnumsParent;
import com.demo.backstage.doman.util;

public interface backEnumsService {

	
	/**
	 * 查询所有枚举值  翻页显示
	 * liufei 2016-1-12
	 * @return
	 */
	public String findAllBackEnums(util utils);
	
	/**
	 * 查询具体枚举值
	 * liufei 2016-1-12
	 * @param queryId
	 * @return
	 */
	public List<backEnums> findBackEnumsByQueryId(String queryId);
	
	public String findBackEnumsByQueryIdToJson(String queryId);
	
	
	/**
	 * 新增枚举值类型
	 * @param enumsParent
	 * @return
	 */
	public String saveBackEnumsParent(backEnumsParent enumsParent);
	
	/**
	 * 新增枚举值
	 * @param enums
	 * @return
	 */
	public String saveBackEnums(backEnums enums);
	
	
	/**
	 * 修改枚举类型
	 * liufei 2016-1-14
	 * @param enumsParent
	 * @return
	 */
	public String updateBackEnumsParent(backEnumsParent enumsParent);
	/**
	 * 修改具体枚举值
	 * liufei 2016-1-14
	 * @param enums
	 * @return
	 */
	public String updateBackEnums(backEnums enums);
	
	
}
