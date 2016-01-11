package com.demo.backstage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.demo.backstage.doman.Product;
import com.demo.backstage.doman.util;

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
	 * @param Integer1  1:parentId is null , 2 parentId is not null
	 * @return
	 */
	public List<Product> getProduct(util utils);
	
	
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
	
	/**
	 * 获取产品具体信息
	 * liufei 2015-12-9
	 * @param id
	 * @return
	 */
	public Product getProductContent(Integer id);
	
/*	----------------------------------------------BACK-------------------------------------------------------
*/	
	
	/**
	 * 产品中心加载产品  Integer1  1:parentId is null , 2 parentId is not null
	 * @return
	 */
	public List<Product> getProductToPage(util utils);
	/**
	 * 获取所有子类产品信息 list
	 * liufei 2016-1-9
	 * @return
	 */
	public List<Product> getProductChildList(util utils);
	
	

}
