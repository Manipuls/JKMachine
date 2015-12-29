package com.demo.backstage.doman;

import java.util.List;

/**
 * ClassName: Product 
 * @Description: TODO
 * @author  LIUFEI
 * @date  2015-11-20 下午12:46:55
 * 	
 */
public class Product {
	private Integer id;
	private String productName;
	private Integer parentId;
	private Integer productPageType;  
	private Integer isShow;
	private Integer isDelete;
	private String produntThumbnail;  //缩略图
	
	private List<Product> productChild;//子类
	
	private List<ProductInfo> productInfoList;//子类产品集合
	
	
	public List<Product> getProductChild() {
		return productChild;
	}
	public void setProductChild(List<Product> productChild) {
		this.productChild = productChild;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public Integer getProductPageType() {
		return productPageType;
	}
	public void setProductPageType(Integer productPageType) {
		this.productPageType = productPageType;
	}
	public Integer getIsShow() {
		return isShow;
	}
	public void setIsShow(Integer isShow) {
		this.isShow = isShow;
	}
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}
	public String getProduntThumbnail() {
		return produntThumbnail;
	}
	public void setProduntThumbnail(String produntThumbnail) {
		this.produntThumbnail = produntThumbnail;
	}
	public List<ProductInfo> getProductInfoList() {
		return productInfoList;
	}
	public void setProductInfoList(List<ProductInfo> productInfoList) {
		this.productInfoList = productInfoList;
	}
	

}
