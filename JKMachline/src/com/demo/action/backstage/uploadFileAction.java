package com.demo.action.backstage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.demo.action.BaseAction;
import com.demo.backstage.service.impl.uploadServicImpl;

public class uploadFileAction extends BaseAction {

	/**
	 * 变量的意义 <br>
	 */
	private static final long serialVersionUID = 1997283225834920426L;
	

		private File file;  //注意file名与表单name对应
	    private String fileFileName;  //file+FileName为固定写法,否则取不到
	    private String fileContentType;  //file+ContentType为固定写法
	    private String name;
		public JSONObject jsonObj;
		
		public String uploadFile() {
			String[] str = { ".jpg", ".jpeg", ".bmp", ".gif" ,".png" };
			String json = "";
			//限定文件大小是4MB
			if(file==null || file.length()>4194304 ){
				json ="{\"total\":\"-1\",\"rows\":\"-1\"}";
				//jsonObj = JSONObject.fromObject(json);
				return ERROR;
			}
			for (String s : str) {
				if (fileFileName.endsWith(s)) {
					String realPath = ServletActionContext.getServletContext().getRealPath("/view/reception/upload/images");//实际路径
					FileOutputStream fos;
					FileInputStream fis;
					try {
						fos = new FileOutputStream(realPath + "\\" + name);
						fis = new FileInputStream(file);
						byte[] buffer = new byte[1024];  
						int len = 0;  
						try {  
							while((len = fis.read(buffer)) > 0){  
								fos.write(buffer, 0, len);  
							}  
							String id = name.substring(0, name.indexOf("."));
							
							Boolean uploadProductInfo = new uploadServicImpl().uploadProductInfo(Integer.parseInt(id), name);
							json ="{\"total\":\"1\",\"rows\":\"1\"}";
						} catch (IOException e) {  
							e.printStackTrace();  
							json ="{\"total\":\"-1\",\"rows\":\"-1\"}";
						} finally{
							fis.close();
							fos.close();
						}
						break;
					} catch (Exception e1) {
						e1.printStackTrace();
						return ERROR;
					}  
				}
			}
			jsonObj = JSONObject.fromObject(json);
			return SUCCESS;
	}
	public JSONObject getJsonObj() {
		return jsonObj;
	}
	public void setJsonObj(JSONObject jsonObj) {
		this.jsonObj = jsonObj;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
