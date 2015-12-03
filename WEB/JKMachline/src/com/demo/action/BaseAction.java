package com.demo.action;

import java.io.File;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport  {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4077448301614139958L;

		//返回类型
		private String resultType;
		
		//页面标题
		private String title;
		
		//跳转的具体页面
		private String result;
		
		//相对路径
		private String cssPath;
		
		public String getCssPath() {
			return cssPath;
		}
		public void setCssPath(String cssPath) {
			this.cssPath = cssPath;
		}

		public Map<String, Object> session =  ActionContext.getContext().getSession();
		
		
		

		/**
		 * @param resultType  返回类型
		 * @param title       页面标题
		 * @param result      具体页面
		 */
		public void setParam( String resultType , String title, String result){
			this.resultType = resultType;
			this.title = title;
			this.result = result;
		}
		
		public void setJson(String resultType){
			this.resultType = resultType;
		}
		public Map<String, Object> getSession() {
			return session;
		}
		public void setSession(Map<String, Object> session) {
			this.session = session;
		}
		public void cssPath(){
			File f = new File("style");
			String path = f.getAbsolutePath();
			System.out.println(path+"----------------------------------");
			
		}
		
		
		
		
		
		@Override
		public String execute() throws Exception {
			
			return resultType;
		}
		
		
		public String getResultType() {
			return resultType;
		}

		public void setResultType(String resultType) {
			this.resultType = resultType;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}


		public String getResult() {
			return result;
		}

		public void setResult(String result) {
			this.result = result;
		}
		
		
}
