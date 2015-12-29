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
	
	
	
	/**
	 * 
	 * <p>
	 * 方法的主要说明，以。或.结束
	 * <p>
	 * <p>
	 * 描述方法完成什么样的功能,方法的目标,用该方法的原因
	 * <p>
	 * liufei 2015-12-9
	 * 
	 * @param Id
	 * @return
	 */
	 
	public Product getProductContent(Integer Id);
	
	/**
	 * 获取产品分类
	 * liufei 2015-12-26
	 * 
	 * @return
	 */
	public List<Product> getProducts();

}
