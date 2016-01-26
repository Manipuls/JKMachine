package com.demo.backstage.service.impl;

import com.demo.util.jdbcUtils;

public class uploadServicImpl {
	
	jdbcUtils jdbcutils = new jdbcUtils();
	
	public Boolean uploadProductInfo(Integer id ,String imgName){
		String sql = " update backstage_product_info set product_info_img = '"+imgName+"' where id= "+id;
		Integer execute = jdbcutils.execute(sql);
		if(execute>0){
			return true;
		}
		return false;
	}

}
