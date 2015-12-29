package com.demo.action.reception;

import java.util.Date;
import java.util.List;

import net.sf.json.JSONObject;

import com.demo.action.BaseAction;
import com.demo.backstage.doman.Menu;
import com.demo.backstage.doman.Product;
import com.demo.backstage.doman.util;
import com.demo.backstage.service.menuService;
import com.demo.backstage.service.newsServices;
import com.demo.backstage.service.productService;
import com.demo.backstage.service.impl.menuServiceImpl;
import com.demo.backstage.service.impl.newsServicesImpl;
import com.demo.backstage.service.impl.productServiceImpl;

public class indexAction extends BaseAction {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2121596771872897557L;
	
	public JSONObject jsonObj;
	
	public newsServices  newsservices = new newsServicesImpl();
	private menuService menuservice = new menuServiceImpl();
	
	public List<Menu> onLoadIndex;

	
	
	
	public String onLoadIndex(){
		onLoadIndex = menuservice.onLoadIndex();
		
		super.setParam("jsp", "重庆劲凯机电设备有限公司", "view/reception/index.jsp");
		return "jsp";
	}
	/**查询首页菜单数据
	 * @return
	 */
	public String onLoadMenu(){
		//调用实现方法
		String findAll = menuservice.menuToJson();
		jsonObj = JSONObject.fromObject(findAll);
		System.out.println(jsonObj);
		return "json";
	}
	
	/**首页加载新闻资讯最新动态
	 * @return
	 */
	public String onLoadNews(){
		util utils = new util();
		//当前时间最近的数据
		utils.setDate1(new Date());
		//去最近的4条数据
		utils.setInteger1(0);
		utils.setInteger2(4);
		//新闻类型
		utils.setStr1("0");
		
		//调用实现方法
		String json = newsservices.pageFindNews(utils);
		jsonObj = JSONObject.fromObject(json);
		return "json";
	}
	
	
	/**首页加载新闻资讯
	 * @return
	 */
	public String onLoadNewsInfos(){
		util utils = new util();
		//当前时间最近的数据
		utils.setDate1(new Date());
		//去最近的4条数据
		utils.setInteger1(0);
		utils.setInteger2(8);
		//新闻类型
		utils.setStr1("2");
		
		//调用实现方法
		String json = newsservices.pageFindNews(utils);
		jsonObj = JSONObject.fromObject(json);
		return "json";
	}
	
	/**首页加载产品设计
	 * @return
	 */
	public String onLoadDesign(){
		
		return "json";
	}
	
	/**首页加产品列表
	 * @return
	 */
	public String onLoadProductCataLogs(){
		String productCataLog = menuservice.getProductCataLog();
		jsonObj = JSONObject.fromObject(productCataLog);
		return "json";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
