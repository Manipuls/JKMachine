package com.demo.action.reception;

import net.sf.json.JSONObject;

import com.demo.action.BaseAction;
import com.demo.backstage.service.productService;
import com.demo.backstage.service.impl.productServiceImpl;

public class productAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3681581436540417646L;
	private productService  productservice = new productServiceImpl();
	public JSONObject jsonObj;
	
	
	
	/**
	 *加载产品列表
	 * @Description: TODO
	 * @param @return   
	 * @return String  
	 * @throws
	 *
	 * @author LIUFEI
	 * @date 2015-11-20 下午12:48:49
	 */
	public String onLoadProduct(){
		String product = productservice.getProduct();
		jsonObj = JSONObject.fromObject(product);
		return "json";
		
	}
	
	/**
	 * 
	 * 加载产品具体信息
	 * @Description: TODO
	 * @param @return   
	 * @return String  
	 * @throws
	 *
	 * @author LIUFEI
	 * @date 2015-11-20 下午12:49:35
	 */
	public String onLoadProductContent(){
		return "json";
		
	}

	
	
	
	
	
	
	
	
	
	
	public JSONObject getJsonObj() {
		return jsonObj;
	}

	public void setJsonObj(JSONObject jsonObj) {
		this.jsonObj = jsonObj;
	}
	
	
	
	
	

}
