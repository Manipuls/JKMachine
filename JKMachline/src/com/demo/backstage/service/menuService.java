package com.demo.backstage.service;

import java.util.List;

import com.demo.backstage.doman.Menu;


public interface menuService {
	
	public String findAll();
	
	public String findByParentId(Integer id);
	
	public List<Menu> findListParentId(Integer id);
	
	public String menuToJson();
	
	public List<Menu> onLoadIndex();

}
