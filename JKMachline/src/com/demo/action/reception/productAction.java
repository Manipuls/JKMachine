package com.demo.action.reception;

import java.util.List;

import net.sf.json.JSONObject;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.Product;
import com.demo.backstage.service.productService;
import com.demo.backstage.service.impl.productServiceImpl;

public class productAction extends BaseAction {

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
	public String onLoadProductToJsp(){
		
		product = productservice.getProduct();
		
		super.getSession().put("product", product);
		super.setParam("jsp", "劲凯机电-产品中心", "view/reception/product.jsp");
		return "jsp";
		
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
		pro = productservice.getProductContent(id);
		super.setParam("jsp", "劲凯机电-产品详情", "view/reception/productContent.jsp");
		return "jsp";
		
	}

	
	public JSONObject getJsonObj() {
		return jsonObj;
	}
	public void setJsonObj(JSONObject jsonObj) {
		this.jsonObj = jsonObj;
	}
	public List<Product> getProduct() {
		return product;
	}
	public void setProduct(List<Product> product) {
		this.product = product;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Product getPro() {
		return pro;
	}
	public void setPro(Product pro) {
		this.pro = pro;
	}
	

}
