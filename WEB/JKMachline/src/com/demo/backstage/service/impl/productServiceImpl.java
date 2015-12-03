package com.demo.backstage.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.demo.backstage.dao.productDao;
import com.demo.backstage.doman.Product;
import com.demo.backstage.service.productService;
import com.demo.util.CreateSession;

public class productServiceImpl implements productService {
	
	private productDao  productdao;
	Logger log = Logger.getLogger(productServiceImpl.class);
	@Override
	public List<Product> getProduct() {
		List<Product> product = new ArrayList<Product>();
		
		SqlSession session = new CreateSession().getSession();
		productdao = session.getMapper(productDao.class);
		List<Product> productPri = productdao.getProduct();
		
		for (Product p : productPri) {
			p.setProductChild(this.getProductChild(p.getId()));
			product.add(p);
		}
		session.close();
		return product;
	}
	@Override
	public List<Product> getProductChild(Integer id) {
		return productdao.getProductChild(id);
	}

}
