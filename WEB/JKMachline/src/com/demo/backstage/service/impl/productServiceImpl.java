package com.demo.backstage.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.demo.backstage.dao.newsDao;
import com.demo.backstage.dao.productDao;
import com.demo.backstage.doman.Product;
import com.demo.backstage.service.productService;
import com.demo.util.CreateSession;

public class productServiceImpl implements productService {
	
	private productDao  productdao;
	Logger log = Logger.getLogger(productServiceImpl.class);

	@Override
	public String getProduct() {
		SqlSession session = new CreateSession().getSession();
		productdao = session.getMapper(productDao.class);
		List<Product> product = productdao.getProduct();
		session.close();
		String json ="";
		if(product.size()>0){
			
		}
		
		return json;
	}

}
