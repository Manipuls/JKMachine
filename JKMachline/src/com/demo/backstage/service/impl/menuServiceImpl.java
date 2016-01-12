package com.demo.backstage.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.demo.backstage.dao.menuDao;
import com.demo.backstage.doman.Menu;
import com.demo.backstage.doman.Product;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.menuService;
import com.demo.backstage.service.productService;
import com.demo.util.CreateSession;
import com.google.gson.Gson;

public class menuServiceImpl implements menuService {
	private menuDao menudao;
	public productService productservice = new productServiceImpl();
	
	@Override
	public String findAll() {
		// TODO Auto-generated method stub
		
		SqlSession session = new CreateSession().getSession();
		menudao = session.getMapper(menuDao.class);
		List<Menu> findAll = menudao.findAll();
		String json = "";
		//json += "[";
		json ="{\"total\":\"1\",\"rows\":[";
		boolean flag = false;
		if(findAll.size()>0){
			for (int i = 0; i < findAll.size(); i++) {
				/*if(flag)json+=",";
				flag = true;
				json+="{\"parentMenu\":\""+findAll.get(i).getName()+"\",\"childMenu\":["+(this.findByParentId(findAll.get(i).getId()))+"],\"paerntId\":\""+(findAll.get(i).getParentId()==null?"0":findAll.get(i).getParentId())+"\",\"url\":\""+findAll.get(i).getUrl()+"\"}";
			*/
				Menu menu = findAll.get(i);
				menu.setChildMenu(this.findListParentId(menu.getId())) ;
			}
			json+="]}";
			//json+="]";
		}
		System.out.println("qqq"+json);
		return json;
	}
	@Override
	public String findByParentId(Integer id) {
		SqlSession session = new CreateSession().getSession();
		menudao = session.getMapper(menuDao.class);
		List<Menu> findAll = menudao.findByParentId(id);
		String json = "";
		boolean flag = false;
		if(findAll.size()>0){
			for (int i = 0; i < findAll.size(); i++) {
				if(flag)json+=",";
				flag = true;
				//new Gson().toJso;
				json+="{\"menuName\":\""+findAll.get(i).getName()+"\",\"paerntId\":\""+(findAll.get(i).getParentId()==null?"0":findAll.get(i).getParentId())+"\",\"url\":\""+findAll.get(i).getUrl()+"\"}";
			}
			
		}
		return json;
	}
	@Override
	public List<Menu> findListParentId(Integer id) {
		SqlSession session = new CreateSession().getSession();
		menudao = session.getMapper(menuDao.class);
		List<Menu> findAll = menudao.findByParentId(id);
		session.close();
		return findAll;
	}
	@Override
	public String menuToJson() {
		SqlSession session = new CreateSession().getSession();
		menudao = session.getMapper(menuDao.class);
		List<Menu> findAll = menudao.findAll();
		String json = "";
		json ="{\"total\":\"1\",\"rows\":[";
		boolean flag = false;
		if(findAll.size()>0){
			for (int i = 0; i < findAll.size(); i++) {
				Menu menu = findAll.get(i);
				menu.setChildMenu(this.findListParentId(menu.getId())) ;
				menu.setParentId(0);
				if(flag)json+=",";
				flag = true;
				json += new Gson().toJson(menu);
			}
			json+="]}";
		}
		System.out.println(""+json);
		return json;
	}
	
	
	public List<Menu> onLoadIndex(){
		SqlSession session = new CreateSession().getSession();
		menudao = session.getMapper(menuDao.class);
		List<Menu> findAll = menudao.findAll();
		List<Menu> MenuList =new ArrayList<Menu>();
		for (Menu menu : findAll) {
			menu.setChildMenu(this.findListParentId(menu.getId()));
			MenuList.add(menu);
		}
		return MenuList;
	}
	@Override
	public String getProductCataLog() {
		util utils = new util();
		utils.setInteger1(1);
		List<Product> products = productservice.getProducts(utils);
		String json ="{\"total\":\"1\",\"rows\":[";
		boolean flag = false;
		for (Product p : products) {
			if(flag)json+=",";
			flag = true;
			json += new Gson().toJson(p);
		}
		json+="]}";
		System.out.println(json);
		return json;
	}

}
