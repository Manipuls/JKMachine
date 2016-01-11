package com.demo.backstage.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.demo.backstage.dao.productDao;
import com.demo.backstage.doman.Product;
import com.demo.backstage.doman.ProductInfo;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.productInfoService;
import com.demo.backstage.service.productService;
import com.demo.util.CreateSession;
import com.google.gson.Gson;

public class productServiceImpl implements productService {
	
	private productDao  productdao;

	productInfoService proInfo = new productInfoServiceImpl();
	Logger log = Logger.getLogger(productServiceImpl.class);
	/**
	 * <p>
	 * 方法的主要说明，以。或.结束
	 * <p>
	 * <p>
	 * 描述方法完成什么样的功能,方法的目标,用该方法的原因
	 * <p>
	 *
	 * @return
	 * @see com.demo.backstage.service.productService#getProduct()
	 */
	@Override
	public List<Product> getProduct() {
		List<Product> product = new ArrayList<Product>();
		
		SqlSession session = new CreateSession().getSession();
		productdao = session.getMapper(productDao.class);
		List<Product> productPri = productdao.getProduct();
		
		for (Product p : productPri) {
			p.setProductChild(this.getProductChild(p.getId()));
			product.add(p);
		}
		session.close();
		return product;
	}
	@Override
	public List<Product> getProductChild(Integer id) {
		return productdao.getProductChild(id);
	}
	@Override
	public Product getProductContent(Integer id) {
		SqlSession session = new CreateSession().getSession();
		productdao = session.getMapper(productDao.class);
		
		Product productContent = productdao.getProductContent(id);
		//查询一类产品集合
		List<ProductInfo> productInfo = proInfo.getProductInfo(id);
		productContent.setProductInfoList(productInfo);
		session.close();
		return productContent;
	}
	@Override
	public List<Product> getProducts() {
		SqlSession session = new CreateSession().getSession();
		productdao = session.getMapper(productDao.class);
		List<Product> productPri = productdao.getProduct();
		session.close();
		return productPri;
	}
	/**
	 * 后台查询产品类别
	 * @return
	 * @see com.demo.backstage.service.productService#getProductToJson()
	 */
	@Override
	public String getProductToJson(Integer page,Integer rows) {
		util utils = new util();
		log.info("[====设置页码："+page+"====================================================]");
		utils.setPage(page);  //设置页码
		log.info("[====设置页码："+rows+"====================================================]");
		utils.setRows(rows);      //页面大小  显示内容条数
		SqlSession session = new CreateSession().getSession();
		productdao = session.getMapper(productDao.class);
		List<Product> products = productdao.getProductToPage(utils);
		session.close();
		String json ="{\"total\":\""+this.getProducts().size()+"\",\"rows\":[";
		boolean flag = false;
		for (Product p : products) {
			if(flag)json+=",";
			flag = true;
			json += new Gson().toJson(p);
		}
		json+="]}";
		return json;
	}
	/**
	 * 获取所有子类产品信息
	 * @return
	 * @see com.demo.backstage.service.productService#getProductChildList()
	 */
	@Override
	public String getProductChildList() {
		SqlSession session = new CreateSession().getSession();
		productdao = session.getMapper(productDao.class);
		List<Product> products = productdao.getProductChildList();
		session.close();
		String json ="{\"total\":\""+products.size()+"\",\"rows\":[";
		boolean flag = false;
		for (Product p : products) {
			if(flag)json+=",";
			flag = true;
			json += new Gson().toJson(p);
		}
		json+="]}";
		return json;
	}

}
