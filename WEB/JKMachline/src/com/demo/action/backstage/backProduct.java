package com.demo.action.backstage;

import java.util.List;

import org.apache.log4j.Logger;

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
	Logger log = Logger.getLogger(productServiceImpl.class);
	private productService  productservice = new productServiceImpl();
	public JSONObject jsonObj;
	public List<Product> product;
	
	private Integer page;
	private Integer rows;

	/**
	 * @return
	 */
	public String getProductToJson(){
		/*if(page==1){
			page = 0;
			rows = 5;
		}*/
		log.info("[==========传入参数page："+page+",rows:"+rows+"=========查询产品类型开始==============]");
		String productToJson = productservice.getProductToJson(page-1,rows);
		jsonObj = JSONObject.fromObject(productToJson);
		log.info("[=====================查询产品类型结束======================]");
		return "json";
		
	}
	
	/**
	 * 获取所有子类产品信息
	 * liufei 2016-1-9
	 * @return
	 */
	public String getProductChildList(){
		String productToJson = productservice.getProductChildList();
		jsonObj = JSONObject.fromObject(productToJson);
		System.out.println(jsonObj);
		log.info("=====================查询产品类型结束======================");
		return "json";
		
	}

	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	
}
