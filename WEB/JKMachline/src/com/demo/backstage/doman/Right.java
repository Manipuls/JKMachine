package com.demo.backstage.doman;

import java.util.List;

public class Right {
	
	private Integer id;
	private String rightName;
	private Integer parentId;
	private Integer isShow;
	private String rightType;  //1系统设置 0业务模块
	private String location;
	private Integer isDelete;
	private List<Right> chRights;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRightName() {
		return rightName;
	}
	public void setRightName(String rightName) {
		this.rightName = rightName;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public Integer getIsShow() {
		return isShow;
	}
	public void setIsShow(Integer isShow) {
		this.isShow = isShow;
	}
	public String getRightType() {
		return rightType;
	}
	public void setRightType(String rightType) {
		this.rightType = rightType;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}
	public List<Right> getChRights() {
		return chRights;
	}
	public void setChRights(List<Right> chRights) {
		this.chRights = chRights;
	}
	
	
	
	

}