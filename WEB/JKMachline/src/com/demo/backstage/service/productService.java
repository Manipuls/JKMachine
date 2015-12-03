package com.demo.backstage.service;

import java.util.List;

import com.demo.backstage.doman.Product;


public interface productService {
	
	/**
	 * 产品中心加载产品
	 * @return
	 */
	public List<Product> getProduct();
	/**
	 *获取自类产品
	 * @param @return   
	 * @return List<Product>  
	 * @throws
	 *
	 * @author LIUFEI
	 * @date 2015-11-28 下午8:37:17
	 */
	public List<Product> getProductChild(Integer id);

}
