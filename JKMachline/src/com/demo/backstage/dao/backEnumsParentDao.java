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
}
