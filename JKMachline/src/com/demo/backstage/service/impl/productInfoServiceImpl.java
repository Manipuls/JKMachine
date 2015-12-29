package com.demo.backstage.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.demo.backstage.dao.productInfoDao;
import com.demo.backstage.doman.ProductInfo;
import com.demo.backstage.service.productInfoService;
import com.demo.util.CreateSession;

public class productInfoServiceImpl implements productInfoService {
	private productInfoDao productInfodao;

	@Override
	public List<ProductInfo> getProductInfo(Integer productId) {
		SqlSession session = new CreateSession().getSession();
		productInfodao = session.getMapper(productInfoDao.class);
		List<ProductInfo> productInfo = productInfodao.getProductInfo(productId);
		session.close();
		return productInfo;
	}

}
