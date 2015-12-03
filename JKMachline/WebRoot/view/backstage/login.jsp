<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--------  EasyUI     ------->
	<link rel="stylesheet" type="text/css" href="<%=path %>/view/backstage/Easyui/themes/default/easyui.css">   
	<link rel="stylesheet" type="text/css" href="<%=path %>/view/backstage/Easyui/themes/icon.css">   
	<script type="text/javascript" src="<%=path %>/view/backstage/Easyui/jquery-1.8.3.min.js"></script>   
	<script type="text/javascript" src="<%=path %>/view/backstage/Easyui/jquery.easyui.min.js"></script> 
  	<!--------  EasyUI     ------->
  </head>
  
  <body>
  <h1><%=path%></h1>
   	<div id="p" class="easyui-panel" title="My Panel"     
	        style="width:500px;height:150px;padding:10px;background:#fafafa;"   
	        data-options="iconCls:'icon-save',closable:true,    
	                collapsible:true,minimizable:true,maximizable:true">   
	    <p>panel content.</p>   
	    <p>panel content.</p>   
	</div>  
	
	<div id="tt" class="easyui-tabs" style="width:500px;height:250px;">   
    <div title="Tab1" style="padding:20px;display:none;">   
        tab1    11111111111111111111111111111111
    </div>   
    <div title="Tab2" data-options="closable:true" style="overflow:auto;padding:20px;display:none;">   
        tab2    111111111111111111
    </div>   
    <div title="Tab3" data-options="iconCls:'icon-reload',closable:true" style="padding:20px;display:none;">   
        tab3    1111111111111111111111111111111111111111111111111111
    </div>   
</div>  
	
  </body>
</html>
