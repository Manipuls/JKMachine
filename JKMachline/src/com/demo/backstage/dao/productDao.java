package com.demo.backstage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.demo.backstage.doman.Product;

public interface productDao {
	
	/**
	 * @param product
	 * @return
	 */
	@Select("")
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
	
	
	/**
	 * 获取子类产品
	 * @param @return   
	 * @return List<Product>  
	 * @throws
	 *
	 * @author LIUFEI
	 * @date 2015-11-28 下午8:34:34
	 */
	public List<Product> getProductChild(Integer id);

}
