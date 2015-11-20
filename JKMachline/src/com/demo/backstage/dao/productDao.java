package com.demo.backstage.dao;

import java.util.List;

import com.demo.backstage.doman.Product;

public interface productDao {
	
	/**
	 * @param product
	 * @return
	 */
	public Integer saveProduct(Product product);
	
	
	/**首页查询推荐产品
	 * @param product
	 * @return
	 */
	public List<Product> findPageType(Product product);
	
	
	/**
	 * 产品中心加载产品
	 * @return
	 */
	public List<Product> getProduct();

}
