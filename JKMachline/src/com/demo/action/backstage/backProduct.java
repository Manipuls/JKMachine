package com.demo.action.backstage;

import java.util.List;

import net.sf.json.JSONObject;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.Product;
import com.demo.backstage.service.productService;
import com.demo.backstage.service.impl.productServiceImpl;

public class backProduct extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3681581436540417646L;
	private productService  productservice = new productServiceImpl();
	public JSONObject jsonObj;
	public List<Product> product;
	public Product  pro ;
	public Integer id;

	/**
	 * @return
	 */
	public String getProductToJson(){
		
		String productToJson = productservice.getProductToJson();
		System.out.println(0);
		return "json";
		
	}

}
