package com.demo.backstage.doman;

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
	

}
